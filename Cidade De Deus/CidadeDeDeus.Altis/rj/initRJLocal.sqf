#include "..\script_macros.hpp" 
/*

    Author: RobérioJR Asfarc [ASF]

*/

private "_radiorj";

   /* DEFINIÇÕES */
  _radiorj = LIFE_SETTINGS(getNumber,"rj_ativar_radiorj");
	
	
 /* Cinto De Segurança EH */
  [] execVM "rj\CintoDeSeguranca\EventHandlerCinto.sqf";
 
 /* Menu De Admin By:RJ */
  [] execVM "rj\MenuAdminRJ\loop.sqf";
  
 /* Radio RJ */
  [] execVM "rj\RadioRJ\init.sqf";