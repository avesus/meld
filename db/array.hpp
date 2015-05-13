
#ifndef DB_ARRAY_HPP
#define DB_ARRAY_HPP

#include <vector>
#include <string>

#include "vm/predicate.hpp"
#include "vm/tuple.hpp"
#include "vm/defs.hpp"
#include "mem/node.hpp"

namespace db
{

struct array {
   vm::tuple_field *data{nullptr};
   size_t num_tuples{0};

   struct iterator {
      vm::tuple_field *ptr{nullptr};
      size_t step{0};

      inline vm::tuple *operator*() {
         assert(ptr);
         vm::tuple *tpl((vm::tuple*)(((utils::byte*)ptr)-sizeof(vm::tuple)));
         assert(tpl->getfp() == ptr);
         return tpl;
      }

      inline bool operator==(const iterator& other) const
      {
         return ptr == other.ptr;
      }

      inline bool operator!=(const iterator& other) const
      {
         return !operator==(other);
      }

      inline iterator& operator++()
      {
         assert(ptr);
         ptr += step;
         return *this;
      }

      inline iterator operator++(int)
      {
         assert(ptr);
         ptr += step;
         return *this;
      }

      explicit inline iterator(const size_t start, const size_t num_args, vm::tuple_field *data):
         ptr(data ? (data + num_args * start) : nullptr),
         step(num_args)
      {
      }
   };

   inline iterator begin(const vm::predicate *pred) { return iterator(0, pred->num_fields(), data); }
   inline iterator end(const vm::predicate *pred) { return iterator(num_tuples, pred->num_fields(), data); }
   inline iterator begin(const vm::predicate *pred) const { return iterator(0, pred->num_fields(), data); }
   inline iterator end(const vm::predicate *pred) const { return iterator(num_tuples, pred->num_fields(), data); }

   inline void init(const size_t _size, const vm::predicate *pred, mem::node_allocator *alloc) {
      const size_t total(pred->num_fields() * _size);
      assert(num_tuples == 0);
      assert(_size == 1);
      num_tuples = _size;
      if(num_tuples < 16)
         data = (vm::tuple_field*)alloc->allocate_obj(total * sizeof(vm::tuple_field));
      else
         data = mem::allocator<vm::tuple_field>().allocate(total);
   }

   inline vm::tuple *add_next(const vm::predicate *pred, const size_t i)
   {
      vm::tuple *tpl((vm::tuple*)(((utils::byte*)(data + i * pred->num_fields())) - sizeof(vm::tuple)));
      assert(tpl->getfp() == data + i * pred->num_fields());
      return tpl;
   }

   inline size_t size() const { return num_tuples; }

   std::vector<std::string> get_print_strings(const vm::predicate *pred) const
   {
      std::vector<std::string> vec;
      for(auto it(begin(pred)), e(end(pred)); it != e; ++it) {
         vec.push_back((*it)->to_str(pred));
      }
      return vec;
   }

   explicit array() {
      assert(num_tuples == 0);
   }

   inline void wipeout(const vm::predicate *pred, mem::node_allocator *alloc, vm::candidate_gc_nodes& gc_nodes) {
      if(!data)
         return;

      for(auto it(begin(pred)), e(end(pred)); it != e; ++it) {
         vm::tuple *tpl(*it);
         tpl->destructor(pred, gc_nodes);
      }
      if(num_tuples < 16)
         alloc->deallocate_obj((utils::byte*)data, num_tuples * pred->num_fields() * sizeof(vm::tuple_field));
      else
         mem::allocator<vm::tuple_field>().deallocate(data, num_tuples * pred->num_fields());
   }
};

}

#endif
