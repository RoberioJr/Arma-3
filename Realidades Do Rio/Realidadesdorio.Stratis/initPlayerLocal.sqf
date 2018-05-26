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
 player addEventHandler ["Respawn", {_this execVM "loadout.sqf"}];        //Respawn com Loadouts
  player addEventHandler ["Respawn", {_this call life_fnc_onPlayerRespawn}];
 //[] execVM "config\loadouts\Checks\iniciar.sqf";                          //Checks De Estado Do Jogador
 
 //Sistema De Lojas
 if(!hasInterface) exitWith {};
[] execVM "scripts\HG\Setup\fn_clientInitialization.sqf";

 /* KeyHandler By: RobérioJR */
  //[] execVM "config\keyHandler.sqf"; NÃO FUNCIONA POR ENQUANTO

//Sistema De Whitelist By: RobérioJr
/*
fnc_reservedSlot = {
  player enableSimulationGlobal false;
  ( "reserved" call BIS_fnc_rscLayer ) cutText [ "Esse Slot é Reservado. PorFavor Escolha Outro Slot.", "BLACK OUT", 1, true ];
  sleep 10;
  endMission "nao_autorizado";
};
*/
