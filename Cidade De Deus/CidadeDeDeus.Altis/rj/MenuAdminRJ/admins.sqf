/*
/         Edit:RoberioJr
/         Description: Menu De Admin
*/

#include "..\CFGs.sqf"

waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in _Administradores) then {
    act = player addaction [("<t color=""#9400D3"">" + ("AdminRJ!") +"</t>"),"rj\MenuAdminRJ\tools.sqf","",5,false,true,"",""];
    [] execVM "rj\MenuAdminRJ\VeiculoSpawn\iniciar.sqf";
}; 
 