/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
#include "rj_macros.hpp"  //Inclusão Dos Macros
 
 //Scripts Aqui:
 
 [] execVM "config\Client\initSide\initSide.sqf";                         //Inicialização Jogadores
 
 //Sistema De Lojas
 if(!hasInterface) exitWith {};
[] execVM "scripts\HG\Setup\fn_clientInitialization.sqf";

 /* KeyHandler By: RobérioJR */
  //[] execVM "config\keyHandler.sqf"; NÃO FUNCIONA POR ENQUANTO