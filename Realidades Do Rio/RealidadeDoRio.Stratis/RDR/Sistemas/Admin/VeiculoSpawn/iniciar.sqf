/*

    Author: RobérioJR

*/

_veiculospawn = [] spawn compile PreprocessFileLineNumbers "RJ\Sistemas\Admin\VeiculoSpawn\TUT_fnc_veh.sqf";
waitUntil {scriptDone _veiculospawn};

//act1 = player addaction [("<t color=""#9400D3"">" + ("Menu De Veiculos!") +"</t>"),"[] call TUT_fnc_OpenVehUI","",0.03,false,false,"",""];