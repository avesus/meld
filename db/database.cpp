
#include "vm/defs.hpp"
#include "db/database.hpp"
#include "process/router.hpp"

using namespace db;
using namespace std;
using namespace vm;
using namespace process;

namespace db
{
   
size_t database::nodes_total = 0;

database::database(const string& filename, create_node_fn create_fn)
{
   assert(state::ROUTER != NULL);
   
   int_val num_nodes;
   node::node_id fake_id;
   node::node_id real_id;
   
   ifstream fp(filename.c_str(), ios::in | ios::binary);
   
   fp.seekg(sizeof(char) * 1, ios_base::cur);
   
   fp.read((char*)&num_nodes, sizeof(int_val));
   
   nodes_total = num_nodes;
   
   state::ROUTER->set_nodes_total(nodes_total); // can throw database_error
   
   const size_t nodes_to_skip(remote::self->get_nodes_base());
   
   if(nodes_to_skip > 0)
      fp.seekg(node_size * nodes_to_skip, ios_base::cur);
   
   size_t nodes_to_read = remote::self->get_total_nodes();
      
   for(size_t i(0); i < nodes_to_read; ++i) {
      fp.read((char*)&fake_id, sizeof(node::node_id));
      fp.read((char*)&real_id, sizeof(node::node_id));
      
      node *node(create_fn(fake_id, real_id));
      
      translation[fake_id] = real_id;
      nodes[fake_id] = node;
   }
   
   if(!remote::i_am_last_one()) {
      const size_t nodes_left(nodes_total - (nodes_to_skip + nodes_to_read));
      
      if(nodes_left > 0)
         fp.seekg(node_size * nodes_left, ios_base::cur);
      //remote::rout(cout) << "skip last " << nodes_left << " nodes" << endl;
   }
}

database::~database(void)
{
   for(map_nodes::iterator it(nodes.begin()); it != nodes.end(); ++it)
      delete it->second;
   nodes_total = 0;
}

node*
database::find_node(const node::node_id id) const
{
   map_nodes::const_iterator it(nodes.find(id));
   
   assert(it != nodes.end());
   
   return it->second;
}

void
database::print_db(ostream& cout) const
{
   for(map_nodes::const_iterator it(nodes.begin());
      it != nodes.end();
      ++it)
   {
      cout << *(it->second) << endl;
   }
}

void
database::dump_db(ostream& cout) const
{
   for(map_nodes::const_iterator it(nodes.begin());
      it != nodes.end();
      ++it)
   {
      it->second->dump(cout);
   }
}

void
database::print(ostream& cout) const
{
   cout << "{";
   for(map_nodes::const_iterator it(nodes.begin());
      it != nodes.end();
      ++it)
   {
      if(it != nodes.begin())
         cout << ", ";
      cout << it->first;
   }
   cout << "}";
}

ostream& operator<<(ostream& cout, const database& db)
{
   db.print(cout);
   return cout;
}

}
