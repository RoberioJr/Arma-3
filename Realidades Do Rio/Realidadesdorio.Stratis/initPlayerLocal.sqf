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
 [] execVM "config\loadouts\Checks\iniciar.sqf";                          //Checks De Estado Do Jogador
 
 //Sistema De Lojas
 if(!hasInterface) exitWith {};
[] execVM "scripts\HG\Setup\fn_clientInitialization.sqf";

 /* KeyHandler By: RobérioJR */
  [] execVM "config\keyHandler.sqf";

//Sistema De Whitelist By: RobérioJr
/*
fnc_reservedSlot = {
  player enableSimulationGlobal false;
  ( "reserved" call BIS_fnc_rscLayer ) cutText [ "Esse Slot é Reservado. PorFavor Escolha Outro Slot.", "BLACK OUT", 1, true ];
  sleep 10;
  endMission "nao_autorizado";
};
*/
