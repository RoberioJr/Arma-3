/*

    Author: RobérioJR

*/

//Private ['_loot'];

//if (!Alive Player) ExitWith {};

 //_loot = ProfileNameSpace GetVariable 'RDR_Loadout';
 
 _TempVar = [] spawn RDR_fnc_LimparJogador;
 waitUntil {scriptDone _TempVar};
 
 _loadout = RDR_LoadoutDB;
 //Systemchat format['Aplicando: %1',_loadout];
 player setUnitLoadout _loadout;