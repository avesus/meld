
#include <iostream>

#include "utils/mutex.hpp"

#ifdef LOCK_STATISTICS
namespace utils {

__thread lock_stat *_stat;
std::vector<lock_stat*> all_stats;
}
#endif

using std::cerr;
using std::endl;

#ifdef LOCK_STATISTICS
   utils::lock_stat *
utils::mutex::merge_stats(void)
{
   lock_stat *ret(new lock_stat());
   uint64_t *x((uint64_t*)ret);

   for(size_t i(0); i < all_stats.size(); ++i) {
      lock_stat *o(all_stats[i]);
      uint64_t *y((uint64_t*)o);

      for(size_t j(0); j < sizeof(lock_stat)/sizeof(uint64_t); ++j) {
         *(x +j) = *(x + j) + *(y + j);
      }
   }
   return ret;
}

void
utils::mutex::print_statistics(lock_stat* _stat)
{
#define SHOW(NAME) cerr << #NAME ": " << _stat->NAME ## _fail << "\t/\t" << (_stat->NAME ## _ok + _stat->NAME ## _fail) << endl
   SHOW(main_db_lock);
   SHOW(node_lock);
   SHOW(database_lock);
   SHOW(normal_lock);
   SHOW(coord_normal_lock);
   SHOW(priority_lock);
   SHOW(coord_priority_lock);
   SHOW(schedule_next_lock);
   SHOW(add_priority_lock);
   SHOW(set_priority_lock);
   SHOW(set_moving_lock);
   SHOW(set_static_lock);
   SHOW(set_affinity_lock);
   SHOW(allocator_lock);
   cerr << "heap_operations: " << _stat->heap_operations << endl;
   cerr << "normal_operations: " << _stat->normal_operations << endl;
   cerr << "facts_derived: " << _stat->facts_derived << endl;
}
#endif
