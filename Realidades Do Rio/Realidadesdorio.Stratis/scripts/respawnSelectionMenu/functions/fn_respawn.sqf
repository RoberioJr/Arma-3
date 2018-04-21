scriptName "fn_respawn";

/*
	Code written by Haz
*/

#define __FILENAME "fn_respawn.sqf"

#include "..\..\IDCs.hpp"

disableSerialization;

_display = uiNamespace getVariable "disp_respawnSelectionMenu";

_respawnPoint = (_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints);

private _radius = if ((((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbValue (lbCurSel dlg_respawnSelectionMenu_respawnPoints) isEqualTo 1))) then {((player getVariable "additionalRespawnPoints") select {(_x select 0) isEqualTo ((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints))} select 0) select 3} else {getNumber (getMissionConfig "respawnSelectionMenu_configs" >> "config_respawnPoints" >> ((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints)) >> "radius")};

_position = if ((((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbValue (lbCurSel dlg_respawnSelectionMenu_respawnPoints) isEqualTo 0))) then
{
	if ((isText (getMissionConfig "respawnSelectionMenu_configs" >> "config_respawnPoints" >> _respawnPoint >> "position"))) then
	{
		getText (getMissionConfig "respawnSelectionMenu_configs" >> "config_respawnPoints" >> ((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints)) >> "position");
	} else
	{
		getArray (getMissionConfig "respawnSelectionMenu_configs" >> "config_respawnPoints" >> ((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints)) >> "position");
	};
} else
{
	((player getVariable "additionalRespawnPoints") select {(_x select 0) isEqualTo _respawnPoint} select 0) select 2
};

if ((typeName _position isEqualTo "STRING")) then
{
	player setPos [((getMarkerPos _position select 0) + (sin (random 360)) * (_radius / 2)), ((getMarkerPos _position select 1) + (cos (random 360)) * (_radius / 2)), 0];
} else
{
	player setPos [((_position select 0) + (sin (random 360)) * (_radius / 2)), ((_position select 1) + (cos (random 360)) * (_radius / 2)), 0];
};

closeDialog 0;