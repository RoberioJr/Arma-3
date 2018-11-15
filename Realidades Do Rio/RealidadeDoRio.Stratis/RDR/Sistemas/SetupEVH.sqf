/*

    Author: RobérioJR
	|07/08/18|

*/

player addEventHandler ["Respawn", {_this call RJ_fnc_AoRespawnar}];
player addEventHandler ["Take", {_this call RJ_fnc_AoPegarItem}];
player addEventHandler ["Killed",{_this call RJ_fnc_Mortes}];
//player addEventHandler ["InventoryOpened", {_this call RJ_fnc_InventarioAberto}];

addMissionEventHandler ["Map", {_this call RJ_fnc_Marcador}];

["RJ_PlayerTags","onEachFrame","RJ_fnc_NameTags"] call BIS_fnc_addStackedEventHandler;
