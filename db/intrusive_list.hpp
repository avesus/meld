
#ifndef DB_INTRUSIVE_LIST_HPP
#define DB_INTRUSIVE_LIST_HPP

#include <iostream>

namespace db
{

#define DECLARE_LIST_INTRUSIVE(TYPE)      \
   TYPE *__intrusive_next;                \
   TYPE *__intrusive_prev

template <class T>
class intrusive_list
{
   private:

      T *head;
      T *tail;
      size_t size;

   public:

      class iterator
      {
         public:
            T *current;

         public:

            inline T* operator*(void) const
            {
               return current;
            }

            inline bool operator==(const iterator& it) const
            {
               return current == it.current;
            }
            inline bool operator!=(const iterator& it) const { return !operator==(it); }

            inline iterator& operator++(void)
            {
               current = current->__intrusive_next;
               return *this;
            }

            inline iterator operator++(int)
            {
               current = current->__intrusive_next;
               return *this;
            }

            explicit iterator(T* cur): current(cur) {}

            // end iterator
            explicit iterator(void): current(NULL) {}
      };

      typedef iterator const_iterator;

      inline bool empty(void) const { return head == NULL; }

      void assertl(void)
      {
         if(head == NULL) {
            assert(size == 0);
            assert(tail == NULL);
         } else {
            assert(size > 0);
            T* p(head);
            T* prev(NULL);
            assert(tail);
            while(p) {
               assert(p->__intrusive_prev == prev);
               prev = p;
               p = p->__intrusive_next;
               if(p == NULL) {
                  assert(prev == tail);
               }
               assert(p != prev);
               assert(prev->__intrusive_next == p);
            }
         }
      }

      inline iterator erase(iterator& it)
      {
         T* obj(*it);
         //std::cout << "erase " << this << " " << *obj << std::endl;
         iterator it2(it.current->__intrusive_next);
         assert(size > 0);
         if(obj == head) {
            head = head->__intrusive_next;
            assert(obj->__intrusive_prev == NULL);
            if(obj == tail) {
               tail = NULL;
               assert(size == 1);
               assert(head == NULL);
               assert(obj->__intrusive_next == NULL);
            } else {
               head->__intrusive_prev = NULL;
               assert(tail->__intrusive_next == NULL);
               assert(head->__intrusive_prev == NULL);
            }
         } else {
            assert(size > 1);
            T* prev(obj->__intrusive_prev);
            T* next(obj->__intrusive_next);

            assert(prev);
            prev->__intrusive_next = next;
            if(next)
               next->__intrusive_prev = prev;
            else {
               tail = prev;
               assert(next == NULL);
            }
            assert(tail->__intrusive_next == NULL);
            assert(head->__intrusive_prev == NULL);
         }
         size--;
         //assertl();
         return it2;
      }

      inline iterator begin(void) { return iterator(head); }
      inline iterator end(void) { return iterator(); }
      inline const iterator begin(void) const { return iterator(head); }
      inline const iterator end(void) const { return iterator(); }

      inline void push_back(T *n)
      {
         //std::cout << "push_back " << this << " " << *n << std::endl;
         if(head == NULL) {
            assert(size == 0);
            assert(tail == NULL);
            head = tail = n;
            n->__intrusive_prev = NULL;
         } else {
            assert(tail);
            assert(size > 0);
            tail->__intrusive_next = n;
            n->__intrusive_prev = tail;
            tail = n;
            assert(tail != head);
         }
         tail->__intrusive_next = NULL;
         size++;
         assert(n == tail);
         assert(tail->__intrusive_next == NULL);
         assert(head->__intrusive_prev == NULL);
         //assertl();
      }

      inline void splice(intrusive_list& ls)
      {
         //std::cout << "splice " << this << " " << &ls << std::endl;
         //ls.assertl();
         if(head == NULL) {
            assert(tail == NULL);
            head = ls.head;
            tail = ls.tail;
            assert(!tail || tail->__intrusive_next == NULL);
            assert(!head || head->__intrusive_prev == NULL);
         } else {
            assert(tail);
            tail->__intrusive_next = ls.head;
            if(ls.head) {
               ls.head->__intrusive_prev = tail;
               assert(ls.tail);
               tail = ls.tail;
            } else {
               assert(ls.tail == NULL);
               assert(tail->__intrusive_next == NULL);
            }
            assert(tail->__intrusive_next == NULL);
            assert(head->__intrusive_prev == NULL);
         }
         size += ls.size;
         ls.size = 0;
         ls.head = NULL;
         ls.tail = NULL;
         //assertl();
      }

      explicit intrusive_list(void):
         head(NULL), tail(NULL), size(0)
      {
         //assertl();
      }
};

}

#endif