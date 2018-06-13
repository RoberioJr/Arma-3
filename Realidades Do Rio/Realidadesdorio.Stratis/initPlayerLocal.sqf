/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
#include "rj_macros.hpp"  //Inclusão Dos Macros
 
 //Scripts Aqui:
 
 [] execVM "config\WhiteList.sqf";                                        //Sistema De Whitelist
 [] execVM "config\doadores.sqf";                                         //Sistema dos Doadores
 [] execVM "config\SlotsReservados.sqf";                                  //Slots Reservados
 [] execVM "config\Client\initSide\initSide.sqf";                         //Inicialização Jogadores
 [] execVM "scripts\marcadores.sqf";                                      //Marcadores Do Mapa
 
 if (REALIDADESDORIOCFG(getNumber,"rj_ativar_whitelist") isEqualTo 1) then {
    [] execVM "config\WhiteList.sqf";  //Sistema De Whitelist)
 };
 
 //Sistema De Lojas
 if(!hasInterface) exitWith {};
[] execVM "scripts\HG\Setup\fn_clientInitialization.sqf";

[] call compile preprocessFileLineNumbers "config\variaveis.sqf";

 /* KeyHandler By: RobérioJR */
  //[] execVM "config\keyHandler.sqf"; NÃO FUNCIONA POR ENQUANTO

