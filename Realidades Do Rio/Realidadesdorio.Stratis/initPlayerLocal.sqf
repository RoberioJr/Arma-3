/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


 //Scripts Aqui:
 
 [] execVM "config\WhiteList.sqf";      //Sistema De Whitelist
 [] execVM "scripts\marcadores.sqf";    //Marcadores Do Mapa
 
 //Simple Shops
 if(!hasInterface) exitWith {};
[] execVM "HG\Setup\fn_clientInitialization.sqf";
