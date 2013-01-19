
#ifndef UI_CLIENT_HPP
#define UI_CLIENT_HPP

#include "conf.hpp"

#ifdef USE_UI
#include <websocketpp/websocketpp.hpp>
#endif

namespace ui
{

#ifdef USE_UI

class client
{
   public: /// XXX should be a friend of manager

      typedef websocketpp::server::connection_ptr connection_ptr;

      connection_ptr conn;

      vm::all *all;
	
		bool is_alive(void) const;

      explicit client(connection_ptr);
};

#endif

}

#endif
