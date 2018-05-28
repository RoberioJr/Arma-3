/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


 //Scripts Aqui:
 
 [] execVM "config\WhiteList.sqf";                                        //Sistema De Whitelist
 [] execVM "config\doadores.sqf";                                         //Sistema dos Doadores
 [] execVM "config\SlotsReservados.sqf";                                  //Slots Reservados
 [] execVM "config\Client\initSide\initSide.sqf";                         //Inicialização Jogadores
 [] execVM "scripts\marcadores.sqf";                                      //Marcadores Do Mapa
 [] execVM "forceTask.sqf"
 
 //Sistema De Lojas
 if(!hasInterface) exitWith {};
[] execVM "scripts\HG\Setup\fn_clientInitialization.sqf";

 /* KeyHandler By: RobérioJR */
  //[] execVM "config\keyHandler.sqf"; NÃO FUNCIONA POR ENQUANTO

