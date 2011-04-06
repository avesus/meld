
#ifndef DB_TUPLE_HPP
#define DB_TUPLE_HPP

#include <vector>
#include <ostream>
#include <list>

#include "vm/defs.hpp"
#include "vm/predicate.hpp"
#include "vm/tuple.hpp"

namespace db
{

class stuple
{
protected:
   vm::tuple *data;

public:
   
   inline vm::tuple* get_tuple(void) const { return data; }
   
   virtual void print(std::ostream&) const = 0;
   
   explicit stuple(vm::tuple *_tuple):
      data(_tuple)
   {}
};

class aggregate_tuple: public stuple
{
private:
   std::list<vm::tuple*> values;
   
public:
   
   void print(std::ostream&) const;
   
   explicit aggregate_tuple(vm::tuple *tuple): stuple(tuple) {}
};

class simple_tuple: public stuple
{
private:
   
   vm::ref_count count;
   
public:
   
   void print(std::ostream&) const;
   
   inline vm::ref_count get_count(void) const { return count; }
   
   inline void inc_count(const vm::ref_count& inc) { count += inc; }
   
   inline void dec_count(const vm::ref_count& inc) { count -= inc; }
   
   static simple_tuple* create_new(vm::tuple *tuple) { return new simple_tuple(tuple, 1); }
   
   static simple_tuple* remove_new(vm::tuple *tuple) { return new simple_tuple(tuple, -1); }
   
   explicit simple_tuple(vm::tuple *tuple, const vm::ref_count _count):
      stuple(tuple), count(_count)
   {}
};

std::ostream& operator<<(std::ostream&, const stuple&);

}

#endif