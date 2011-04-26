
#ifndef MEM_ALLOCATOR_HPP
#define MEM_ALLOCATOR_HPP

#include <limits>

#include "conf.hpp"
#include "mem/thread.hpp"

namespace mem
{

template <class T>
class allocator
{
public:
   
   typedef T value_type;
   typedef value_type* pointer;
   typedef const value_type* const_pointer;
   typedef value_type& reference;
   typedef const value_type& const_reference;
   typedef std::size_t size_type;
   typedef std::ptrdiff_t difference_type;
   
public:
   
   template <typename U>
   struct rebind {
      typedef allocator<U> other;
   };
   
public:
   
   inline explicit allocator(void) {}
   inline ~allocator(void) {}

	inline allocator(allocator const&) {}
   
   template <typename U>
   inline allocator(allocator<U> const&) {}
   
   inline pointer address(reference r) { return &r; }
   inline const_pointer address(const_reference r) { return &r; }
   
   inline pointer allocate(size_type cnt,
      typename std::allocator<void>::const_pointer = 0)
   {
      if(USE_ALLOCATOR)
         return reinterpret_cast<pointer>(get_pool()->allocate(cnt * sizeof(T)));
      else
         return reinterpret_cast<pointer>(::operator new(cnt * sizeof(T)));
   }
   
   inline void deallocate(pointer p, size_type cnt)
   {
      if(USE_ALLOCATOR)
         get_pool()->deallocate(p, cnt * sizeof(T));
      else
         ::operator delete(p);
   }
   
   inline size_type max_size() const {
      return std::numeric_limits<size_type>::max() / sizeof(T);
   }
   
   inline void construct(pointer p, const T& t) { new (p) T(t); }
   inline void destroy(pointer p) { p->~T(); }
   
   inline bool operator==(allocator const&) { return true; }
   inline bool operator!=(allocator const& a) { return !operator==(a); }
};

}

#endif