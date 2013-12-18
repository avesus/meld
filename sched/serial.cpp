
#include "sched/serial.hpp"
#include "process/remote.hpp"
#include "sched/common.hpp"

using namespace db;
using namespace vm;
using namespace process;
using namespace std;

namespace sched
{

void
serial_local::new_agg(work& w)
{
   new_work(w.get_node(), w);
}

void
serial_local::new_work(const node *, work& new_work)
{
   serial_node *to(dynamic_cast<serial_node*>(new_work.get_node()));
   
   to->add_work(new_work.get_tuple());
   
   if(!to->in_queue()) {
      to->set_in_queue(true);
      queue_nodes.push(to);
   }
}
   
void
serial_local::assert_end(void) const
{
   assert(!has_work());
   assert_static_nodes_end(id, state.all);
}

void
serial_local::assert_end_iteration(void) const
{
   assert(!has_work());
   assert_static_nodes_end_iteration(id, state.all);
}

node*
serial_local::get_work(void)
{
   if(current_node != NULL) {
      if(!current_node->has_work()) {
         current_node->set_in_queue(false);
         current_node = NULL;
         if(!has_work())
            return NULL;
			if(!queue_nodes.pop(current_node))
				return NULL;
      }
   } else {
      if(!has_work())
         return NULL;
		if(!queue_nodes.pop(current_node))
			return NULL;
      assert(current_node->has_work());
   }
   
   assert(current_node != NULL);
   assert(current_node->has_work());
   assert(current_node->in_queue());
   
   return current_node;
}

bool
serial_local::terminate_iteration(void)
{
   generate_aggs();

   return has_work();
}

void
serial_local::generate_aggs(void)
{
   iterate_static_nodes(id);
}

void
serial_local::init(const size_t)
{
   database::map_nodes::iterator it(state.all->DATABASE->get_node_iterator(remote::self->find_first_node(id)));
   database::map_nodes::iterator end(state.all->DATABASE->get_node_iterator(remote::self->find_last_node(id)));
   
   for(; it != end; ++it)
   {
      serial_node *cur_node(dynamic_cast<serial_node*>(it->second));
      
      init_node(cur_node);
      
      assert(cur_node->in_queue());
      assert(cur_node->has_work());
   }
}

void
serial_local::gather_next_tuples(db::node *node, simple_tuple_list& ls)
{
   (void)node;
   (void)ls;
}

void
serial_local::fill_temporary_store(db::node *node, temporary_store& ts)
{
   serial_node *no((serial_node*)node);

   swap(ts.lists, no->store.lists);
   swap(ts.size, no->store.size);
   swap(ts.persistent_tuples, no->store.persistent_tuples);
   swap(ts.action_tuples, no->store.action_tuples);
   assert(no->store.size == 0);
}

}
