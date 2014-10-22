
#ifndef STAT_SLICE_SET
#define STAT_SLICE_SET

#include <vector>
#include <list>
#include <string>
#include <functional>

#include "mem/allocator.hpp"
#include "stat/slice.hpp"
#include "vm/defs.hpp"
#include "vm/all.hpp"

namespace statistics
{
   
class slice_set
{
private:
   
   size_t num_slices;
   
   typedef std::list<slice> list_slices;
   typedef list_slices::const_iterator iter;
   
   typedef std::vector<list_slices> vector_slices;
   
   vector_slices slices;
   
   void beat_thread(const vm::process_id, slice&, vm::all *);
   
   void write_state(const std::string&, vm::all *) const;
   void write_derived_facts(const std::string&, vm::all *) const;
   void write_consumed_facts(const std::string&, vm::all *) const;
   void write_rules_run(const std::string&, vm::all *) const;
   void write_stolen_nodes(const std::string&, vm::all *) const;
   void write_sent_facts_same_thread(const std::string&, vm::all *) const;
   void write_sent_facts_other_thread(const std::string&, vm::all *) const;
   void write_sent_facts_other_thread_now(const std::string&, vm::all *) const;
   void write_priority_nodes_thread(const std::string&, vm::all *) const;
   void write_priority_nodes_others(const std::string&, vm::all *) const;
   void write_bytes_used(const std::string&, vm::all *) const;
   void write_node_lock_ok(const std::string&, vm::all *) const;
   void write_node_lock_fail(const std::string&, vm::all *) const;
   
   typedef  void (slice::*print_fn)(utils::csv_line&) const;
   
   void write_general(const std::string&, const std::string&, print_fn, vm::all *) const;
   
public:
   
   void write(const std::string&, vm::all *) const;
   
   void beat(vm::all *);
   
   explicit slice_set(const size_t);
   
   virtual ~slice_set(void) {}
};

}

#endif
