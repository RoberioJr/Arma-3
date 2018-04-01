/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


 //Scripts Aqui:
 
 [] execVM "config\WhiteList.sqf";      //Sistema De Whitelist
 [] execVM "config\WhitelistCV.sqf";    //Slot do Líder do Comando Vermelho
 [] execVM "config\WhitlelistFAC.sqf";  //Slot do Líder do /FACÇÃO SEM NOME/
 [] execVM "config\initSide.sqf";       //Inicialização Jogadores
 [] execVM "scripts\marcadores.sqf";    //Marcadores Do Mapa
 
 //Simple Shops
 if(!hasInterface) exitWith {};
[] execVM "HG\Setup\fn_clientInitialization.sqf";
