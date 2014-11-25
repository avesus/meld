
#ifndef VM_RULE_HPP
#define VM_RULE_HPP

#include <string>
#include <vector>
#include <ostream>

#include "vm/defs.hpp"
#include "vm/predicate.hpp"
#include "vm/bitmap.hpp"

namespace vm
{

class rule
{
   private:

      rule_id id;
      const std::string str;
      byte_code code;
		code_size_t code_size;
      using predicate_vector =
		   std::vector<predicate*, mem::allocator<predicate*>>;
      predicate_vector predicates;
      bool is_persistent;
      bitmap predicate_map;

   public:
	
		void print(std::ostream&, const vm::program * const) const;
		
      inline rule_id get_id(void) const { return id; }
		inline const std::string get_string(void) const { return str; }

      inline void add_predicate(predicate *p) {
         predicates.push_back(p);
         predicate_map.set_bit(p->get_id());
      }

      inline void set_bytecode(code_size_t _size, byte_code _code) {
			code_size = _size;
			code = _code;
		}
		
      inline code_size_t get_codesize(void) const { return code_size; }
		inline byte_code get_bytecode(void) const { return code; }
		inline size_t num_predicates(void) const { return predicates.size(); }

      inline void set_as_persistent(void) { is_persistent = true; }
      inline bool as_persistent(void) const { return is_persistent; }

      using predicate_iterator = predicate_vector::const_iterator;
		inline predicate_iterator begin_predicates(void) const
      { return predicates.begin(); }
		inline predicate_iterator end_predicates(void) const
      { return predicates.end(); }

      explicit rule(const rule_id _id, const std::string& _str,
            const size_t predicates_next_uint):
         id(_id), str(_str), is_persistent(false)
      {
         bitmap::create(predicate_map, predicates_next_uint);
         predicate_map.clear(predicates_next_uint);
      }

      inline void destroy(const size_t predicates_next_uint)
      {
         delete []code;
         bitmap::destroy(predicate_map, predicates_next_uint);
      }
};

}

#endif
