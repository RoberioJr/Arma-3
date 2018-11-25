#include "..\..\RDR_Macros.hpp"
/*

    Author: RobérioJR

*/

private["_display", "_list"];

disableSerialization;

CreateDialog "MenuAnims";

waitUntil {!isNull(findDisplay 2900)};

_display = findDisplay 2900;
_list = _display displayCtrl 2902;

_AnimsArray = RDRCFG(getArray,"RDR_MenuAnims");

lbClear _list; 
{
  _list lbAdd format["%1", _x select 0];
  _list lbSetdata[(lbSize _list) - 1, str(_x select 1)];
} foreach _AnimsArray;