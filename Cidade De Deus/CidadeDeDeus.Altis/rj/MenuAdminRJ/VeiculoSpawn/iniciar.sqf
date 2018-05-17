/*

    Author: RobérioJR

*/

_veiculospawn = [] spawn compile PreprocessFileLineNumbers "rj\MenuAdminRJ\VeiculoSpawn\TUT_fnc_veh.sqf";
waitUntil {scriptDone _veiculospawn};


//act1 = player addAction ["<t color=""#ff3300"">" + ("Menu De Veiculos") + "</t>",'[] call TUT_fnc_OpenVehUI',"",0.03,false,false];
act1 = player addaction [("<t color=""#9400D3"">" + ("Menu De Veiculos!") +"</t>"),"[] call TUT_fnc_OpenVehUI","",0.03,false,false,"",""];