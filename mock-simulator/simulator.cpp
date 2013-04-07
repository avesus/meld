
#include <cstdlib>
#include <vector>
#include <iostream>

#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#define CREATE_N_NODES 1
#define RUN_NODE 2
#define NODE_RUN 3
#define STOP 4
#define ADD_NEIGHBOR 5
#define REMOVE_NEIGHBOR 6
#define TAP 7
#define SET_COLOR 8
#define USE_THREADS 9
#define SEND_MESSAGE 12
#define RECEIVE_MESSAGE 13
#define ACCEL 14
#define SHAKE 15

// comment this for threaded mode
//#define DETERMINISTIC

typedef uint64_t message_type;
const int max_length = 512 / sizeof(message_type);
static struct sockaddr_in servaddr, cliaddr;
static socklen_t clilen;

using namespace std;

// bitmask for activated nodes
static vector<bool> active_nodes; // bitmap for active nodes
static vector<int> pqueue; // nodes scheduled for computation
static vector<int> timestamps; // timestamp of each node
static vector<int> nexttimestamps; // what the next timestamp should be
static int total_nodes(0);

static int
get_next_node(void)
{
   int best(0);
   int bestnode(0);
   vector<int>::iterator bestpos;
   bool has_best(false);

   // picks the node with the lowest timestamp
   // this is very naive

   for(vector<int>::iterator it(pqueue.begin()); it != pqueue.end(); ++it) {
      int node(*it);
      if(!has_best) {
         best = timestamps[node];
         bestpos = it;
         bestnode = node;
         has_best = true;
      } else {
         if(timestamps[node] < best) {
            best = timestamps[node];
            bestpos = it;
            bestnode = node;
         }
      }
   }

   if(has_best) {
      pqueue.erase(bestpos);
   }

   return bestnode;
}

static void
write_to_socket(int sock, message_type *data)
{
   data[0] *= sizeof(message_type);
   sendto(sock, data, data[0] + sizeof(message_type), 0, (struct sockaddr *)&cliaddr, sizeof(cliaddr));
}

static inline void
write_create_n_nodes(int sock, const int n)
{
   message_type data[6];
   int timestamp = 0;
   data[0] = 5;
   data[1] = CREATE_N_NODES;
   data[2] = (message_type)timestamp; // timestamp
   data[3] = (message_type)-1;
   data[4] = (message_type)n;
   data[5] = 0;

   cout << "Create " << n << " nodes" << endl;
   write_to_socket(sock, data);

   assert(active_nodes.size() == (size_t)total_nodes);
   // update current node information
   total_nodes += n;
   active_nodes.resize(total_nodes);
   timestamps.resize(total_nodes);
   nexttimestamps.resize(total_nodes);
   for(size_t i((size_t)total_nodes-n); i < (size_t)total_nodes; ++i) {
      active_nodes[i] = true;
      pqueue.push_back(i);
      timestamps[i] = timestamp;
      nexttimestamps[i] = timestamp + 1;
   }
   assert(active_nodes.size() == (size_t)total_nodes);
}

static void
write_run_node(int sock, int node)
{
   active_nodes[node] = false;
   int until = nexttimestamps[node];
   timestamps[node] = until;
   message_type data[4];

   data[0] = 3;
   data[1] = RUN_NODE;
   data[2] = (message_type)until;
   data[3] = (message_type)node;

   cout << "Run node " << node << " until " << until << endl;
   write_to_socket(sock, data);
}

#ifndef DETERMINISTIC
static void
write_use_threads(int sock)
{
   message_type data[4];

   data[0] = 3;
   data[1] = USE_THREADS;
   data[2] = 0;
   data[3] = -1;

   write_to_socket(sock, data);
}
#endif

static message_type
handle_data(message_type *data, int sock)
{
   switch(data[1]) {
      case NODE_RUN: {
                        message_type ts(data[2]);
                        message_type node(data[3]);
                        message_type numnodes(data[4]);
                        cout << "Node " << node << " ts " << ts << " numnodes " << numnodes << endl;
                        timestamps[node] = ts;
                        nexttimestamps[node] = ts;
                        // go through all the nodes that have tuples and activate them
                        for(message_type i(0); i < numnodes; ++i) {
                           message_type target(data[5+i]);

                           if(!active_nodes[target]) {
                              active_nodes[target] = true;
                              // select the next best timestamp
                              pqueue.push_back(target);
                           }
                           // update the next timestamp to be the maximum timestamp
                           nexttimestamps[target] = max(timestamps[target] + 1, max(nexttimestamps[target], (int)ts));
                           assert(nexttimestamps[target] >= timestamps[target]);
                        }

                     }
                     break;
      case SET_COLOR: {
                         message_type ts(data[2]); // ignore
                         message_type node(data[3]);
                         message_type r(data[4]);
                         message_type g(data[5]);
                         message_type b(data[6]);
                         message_type intensity(data[7]);

                         (void)ts;

                         cout << "Set color " << node << " " << r << " " << g << " " << b << " " << intensity << endl;
                      }
                      break;
      case SEND_MESSAGE: {
                            message_type ts(data[2]);
                            message_type node(data[3]);
                            message_type face(data[4]);

                            cout << ts << " Send message from " << node;
                            
                            if(face != (message_type)-1) {
                               cout << " to face " << face;
                            }
                            cout << endl;

                            data[1] = RECEIVE_MESSAGE;
                            sendto(sock, data, data[0] + sizeof(message_type), 0, (struct sockaddr *)&cliaddr, sizeof(cliaddr));
                         }
                         break;
      default:
                         cout << "Wrong message " << data[1] << endl;
         assert(false);
   }

   return data[1];
}

// reads from socket until something is available
static bool
force_read(int sock)
{
   message_type data[max_length];
   size_t length;

   length = recvfrom(sock, data, sizeof(message_type), 0, (struct sockaddr *)&cliaddr, &clilen);

   assert(length == sizeof(message_type));

   length = recvfrom(sock, data + 1, data[0], 0, (struct sockaddr *)&cliaddr, &clilen);

   cout << "Read one message length=" << length << " data[0]=" << data[0] << endl;
   assert(length == (size_t)data[0]);

   message_type ret = handle_data(data, sock);
   return ret == NODE_RUN;
}

static void
write_stop(int sock)
{
   message_type data[4];
   data[0] = 3;
   data[1] = STOP;
   data[2] = 0;
   data[3] = -1;

   write_to_socket(sock, data);
}

static void
activate_node(int no)
{
   if(!active_nodes[no]) {
      active_nodes[no] = true;
      pqueue.push_back(no);
   }
   nexttimestamps[no] = max(nexttimestamps[no], timestamps[no] + 1);
}

static void
write_add_neighbor(int sock, int in, int out, int side)
{
   activate_node(in);

   message_type data[6];
   data[0] = 5;
   data[1] = ADD_NEIGHBOR;
   data[2] = (message_type)timestamps[in]; // timestamp
   data[3] = (message_type)in;
   data[4] = (message_type)out;
   data[5] = (message_type)side; // neighbor type

   write_to_socket(sock, data);
}

static void
write_remove_neighbor(int sock, int in, int side)
{
   activate_node(in);

   message_type data[5];
   data[0] = 4;
   data[1] = REMOVE_NEIGHBOR;
   data[2] = (message_type)timestamps[in]; // timestamp
   data[3] = (message_type)in;
   data[4] = (message_type)side; // neighbor type

   write_to_socket(sock, data);
}

static void
write_tap(int sock, int node)
{
   activate_node(node);

   message_type data[4];
   data[0] = 3;
   data[1] = TAP;
   data[2] = (message_type)timestamps[node]; // timestamp
   data[3] = (message_type)node;

   write_to_socket(sock, data);
}

static void
write_accel(int sock, int node, int f)
{
   activate_node(node);

   message_type data[5];
   data[0] = 4;
   data[1] = ACCEL;
   data[2] = (message_type)timestamps[node];
   data[3] = (message_type)node;
   data[4] = (message_type)f;

   write_to_socket(sock, data);
}

static void
write_shake(int sock, int node, int x, int y, int z)
{
   activate_node(node);

   message_type data[7];
   data[0] = 6;
   data[1] = SHAKE;
   data[2] = (message_type)timestamps[node];
   data[3] = (message_type)node;
   data[4] = (message_type)x;
   data[5] = (message_type)y;
   data[6] = (message_type)z;

   write_to_socket(sock, data);
}

static bool
is_data_available(int sock)
{
   fd_set sready;
   struct timeval nowait;

   FD_ZERO(&sready);
   FD_SET((unsigned int)sock,&sready);
   memset((char *)&nowait,0,sizeof(nowait));

   select(1,&sready,NULL,NULL,&nowait);

   return FD_ISSET(sock, &sready);
}

int
main(int argc, char **argv)
{
   if(argc != 2) {
      printf("Usage: ./simulator <port>\n");
      exit(EXIT_FAILURE);
   }

   int listenfd, connfd;

   listenfd = socket(AF_INET, SOCK_STREAM, 0);

   bzero(&servaddr, sizeof(servaddr));
   servaddr.sin_family = AF_INET;
   servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
   servaddr.sin_port = htons(atoi(argv[1]));
   
   bind(listenfd, (struct sockaddr *)&servaddr, sizeof(servaddr));

   listen(listenfd, 1024);

   clilen = sizeof(cliaddr);
   connfd = accept(listenfd, (struct sockaddr *)&cliaddr, &clilen);

   int x = 0;
#ifdef DETERMINISTIC
    write_create_n_nodes(connfd, 6);

    // this loops adds and removes a neighbor fact and then adds a tap
    while (true)
    {
       while(is_data_available(connfd)) {
          force_read(connfd);
       }
       if(!pqueue.empty()) {
          int node(get_next_node());
          write_run_node(connfd, node);
          while (!force_read(connfd))
          {
             // read data until we get a NODE_RUN
          }
       } else {
          if(x == 0) {
             x = 1;
             write_add_neighbor(connfd, 0, 1, 5);
          } else if(x == 1) {
             x = 2;
             write_remove_neighbor(connfd, 0, 5);
             write_add_neighbor(connfd, 0, 1, 2);
             write_add_neighbor(connfd, 1, 0, 3);
             write_add_neighbor(connfd, 1, 2, 0);
             write_add_neighbor(connfd, 2, 1, 5);
             write_add_neighbor(connfd, 1, 4, 2);
             write_add_neighbor(connfd, 4, 1, 3);
             write_add_neighbor(connfd, 1, 3, 5);
             write_add_neighbor(connfd, 3, 1, 0);
             write_add_neighbor(connfd, 3, 5, 5);
             write_add_neighbor(connfd, 5, 3, 0);
          } else if(x == 5) {
             write_tap(connfd, 1);
             x++;
         } else if(x>1 && x < 10) {
            ++x;
             } else if(x == 10) {
               write_stop(connfd);
               exit(EXIT_SUCCESS);
             }
       }
    }
#else
    write_use_threads(connfd);
    write_create_n_nodes(connfd, 6);
    // this loops adds and removes a neighbor fact and then adds a tap
    while(true) {
       sleep(1);
       if(is_data_available(connfd)) {
         force_read(connfd);
       }
       x++;
       if(x == 1) {
          write_accel(connfd, 0, 2);
          write_shake(connfd, 0, 1, 2, 3);
          write_add_neighbor(connfd, 0, 1, 5);
       }
       if(x == 2) {
          // remove previous neighbor
          write_remove_neighbor(connfd, 0, 5);

          write_add_neighbor(connfd, 0, 1, 2);
          write_add_neighbor(connfd, 1, 0, 3);
          write_add_neighbor(connfd, 1, 2, 0);
          write_add_neighbor(connfd, 2, 1, 5);
          write_add_neighbor(connfd, 1, 4, 2);
          write_add_neighbor(connfd, 4, 1, 3);
          write_add_neighbor(connfd, 1, 3, 5);
          write_add_neighbor(connfd, 3, 1, 0);
          write_add_neighbor(connfd, 3, 5, 5);
          write_add_neighbor(connfd, 5, 3, 0);
       }
       if(x == 3) {
          write_tap(connfd, 1);
       }
       if(x == 5) {
          write_stop(connfd);
          cout << "Wrote stop" << endl;
          sleep(1);
          while(is_data_available(connfd))
             force_read(connfd);
          close(connfd);
          close(listenfd);
          exit(EXIT_SUCCESS);
       }
    }
#endif

   exit(EXIT_SUCCESS);
}
