/*

    Author: RobérioJR
	|07/08/18|

*/

player addEventHandler ["Respawn", {_this call RDR_fnc_AoRespawnar}];
player addEventHandler ["Take", {_this call RDR_fnc_AoPegarItem}];
player addEventHandler ["Killed",{_this call RDR_fnc_Mortes}];
//player addEventHandler ["InventoryOpened", {_this call RDR_fnc_InventarioAberto}];

addMissionEventHandler ["Map", {_this call RDR_fnc_Marcador}];

["RDR_PlayerTags","onEachFrame","RDR_fnc_NameTags"] call BIS_fnc_addStackedEventHandler;
