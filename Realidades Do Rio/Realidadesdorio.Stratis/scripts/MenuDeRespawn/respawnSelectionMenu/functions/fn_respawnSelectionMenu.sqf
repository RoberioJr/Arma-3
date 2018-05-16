scriptName "fn_respawnSelectionMenu";

/*
	Code written by Haz
*/

#define __FILENAME "fn_respawnSelectionMenu.sqf"

#include "..\..\IDCs.hpp"

disableSerialization;

private _display = uiNamespace getVariable "disp_respawnSelectionMenu";

waitUntil {(!isNull _display)};

escKeyEH = _display displayAddEventHandler ["KeyDown", "if (((_this select 1) == 1) && (!isMultiplayer)) then {false} else {true};"];

ctrlActivate (_display displayCtrl dlg_respawnSelectionMenu_leftArrowIB);
(_display displayCtrl dlg_respawnSelectionMenu_rightArrow) ctrlSetAngle [180, 0.5, 0.5];

/* EDIT RJ */
Switch (playerSide) do 
{
    Case west:
	{
	    _configTime = "respawnSelectionMenu_configsBOPE";
	};
	Case east:
	{
	    _configTime = "respawnSelectionMenu_configsVERMELHO";
	};
	Case independent:
	{
	    _configTime = "respawnSelectionMenu_configsVERDE";
	};
};

private _respawnPoints = getArray (getMissionConfig _configTime >> "config_respawnPoints" >> "respawnPoints");

{
	_respawnPoint  = _x;
	_respawnPointName = getText (getMissionConfig _configTime >> "config_respawnPoints" >> _respawnPoint >> "name");
	_respawnPointIcon = getText (getMissionConfig _configTime >> "config_respawnPoints" >> _respawnPoint >> "icon");
	_respawnPointPosition = if ((isText (getMissionConfig _configTime >> "config_respawnPoints" >> _respawnPoint >> "position"))) then {getText (getMissionConfig _configTime >> "config_respawnPoints" >> _respawnPoint >> "position")} else {getArray (getMissionConfig _configTime >> "config_respawnPoints" >> _respawnPoint >> "position")};
	_index = (_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbAdd _respawnPointName;
	(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbSetPicture [_index, _respawnPointIcon];
	(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbSetData [_index, _respawnPoint];
	(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbSetValue [_index, 0];
} forEach _respawnPoints;

if ((!isNil {player getVariable "additionalRespawnPoints"})) then
{
	_additionalRespawnPoints = player getVariable "additionalRespawnPoints";
	if ((count _additionalRespawnPoints > 0)) then
	{
		{
			_respawnPoint  = _x;
			_respawnPointName = _respawnPoint select 0;
			_respawnPointIcon = _respawnPoint select 1;
			_respawnPointPosition = _respawnPoint select 2;
			_index = (_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbAdd _respawnPointName;
			(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbSetPicture [_index, _respawnPointIcon];
			(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbSetData [_index, (_respawnPoint select 0)];
			(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbSetValue [_index, 1];
		} forEach _additionalRespawnPoints;
	};
};

(_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) ctrlAddEventHandler ["LBSelChanged",
{
	_display = uiNamespace getVariable "disp_respawnSelectionMenu";
	_map = _display displayCtrl dlg_respawnSelectionMenu_map;
	_respawnPoint = (_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints);
	ctrlMapAnimClear _map;
	_position = if ((((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbValue (lbCurSel dlg_respawnSelectionMenu_respawnPoints) isEqualTo 0))) then
	{
		if ((isText (getMissionConfig _configTime >> "config_respawnPoints" >> _respawnPoint >> "position"))) then
		{
			getText (getMissionConfig _configTime >> "config_respawnPoints" >> ((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints)) >> "position");
		} else
		{
			getArray (getMissionConfig _configTime >> "config_respawnPoints" >> ((_display displayCtrl dlg_respawnSelectionMenu_respawnPoints) lbData (lbCurSel dlg_respawnSelectionMenu_respawnPoints)) >> "position");
		};
	} else
	{
		((player getVariable "additionalRespawnPoints") select {(_x select 0) isEqualTo _respawnPoint} select 0) select 2
	};
	_map ctrlMapAnimAdd [1, 0.05, if ((typeName _position isEqualTo "STRING")) then {getMarkerPos _position} else {_position}];
	ctrlMapAnimCommit _map;
}];

(_display displayCtrl dlg_respawnSelectionMenu_respawn) ctrlAddEventHandler ["ButtonClick",
{
	[] spawn Haz_fnc_respawn;
}];


