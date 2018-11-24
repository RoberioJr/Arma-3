#include "..\..\RDR_Macros.hpp"

/*
    File: fn_escInterupt.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Monitors when the ESC menu is pulled up and blocks off
    certain controls when conditions meet.
*/

private ["_abortButton","_respawnButton","_fieldManual","_escSync","_canUseControls"];
disableSerialization;

_escSync = {
    private ["_abortButton","_thread","_syncManager"];
    disableSerialization;

    _syncManager = {
        disableSerialization;
        private ["_abortButton","_timeStamp","_abortTime"];
		_abortButton = ((findDisplay 49) displayCtrl 104); 
        _abortTime = RDRCFG(getNumber,"RDR_EscMenuTempo");
        _timeStamp = time + _abortTime;

        waitUntil {
            _abortButton ctrlSetText format ["Aguarde %1",[(_timeStamp - time),"SS.MS"] call BIS_fnc_secondsToString];
            _abortButton ctrlCommit 0;
            round(_timeStamp - time) <= 0 || isNull (findDisplay 49)
        };

        _abortButton ctrlSetText "Sair";
        _abortButton ctrlCommit 0;
    };

	_abortButton = ((findDisplay 49) displayCtrl 104); 

    if (_this) then {
        _thread = [] spawn _syncManager;
        waitUntil {scriptDone _thread || isNull (findDisplay 49)};
        _abortButton ctrlEnable true;
    };
};

_canUseControls = {
    if (playerSide isEqualTo west) exitWith {true};
};

for "_i" from 0 to 1 step 0 do {
    waitUntil {!isNull (findDisplay 49)};
	_abortButton = ((findDisplay 49) displayCtrl 104); 
    _abortButton buttonSetAction "[0] Spawn RDR_fnc_Sincronizar;";
	_respawnButton = ((findDisplay 49) displayCtrl 1010); 
	_fieldManual = ((findDisplay 49) displayCtrl 122); 
	private _saveButton = ((findDisplay 49) displayCtrl 103);
    _saveButton ctrlSetText "";

    //Extras
    if (RDRCFG(getNumber,"RDR_EscMenuExtrasAtivar") isEqualTo 1) then {
		private _topButton = ((findDisplay 49) displayCtrl 2);
        _topButton ctrlEnable false;
        _topButton ctrlSetText format ["%1",RDRCFG(getText,"RDR_EscMenuExtras")];
        _saveButton ctrlEnable false;
        _saveButton ctrlSetText format ["Seu UID: %1",getPlayerUID player];
    };

    //Block off our buttons first.
    _abortButton ctrlEnable false;
    _respawnButton ctrlEnable false;
    _fieldManual ctrlEnable false; //Never re-enable, blocks an old script executor.
    _fieldManual ctrlShow false;

    _usebleCtrl = call _canUseControls;
    _usebleCtrl spawn _escSync;

    if (_usebleCtrl) then {
        _respawnButton ctrlEnable true; //Enable the button.
    };

    waitUntil {isNull (findDisplay 49) || {!alive player}};
    if (!isNull (findDisplay 49) && {!alive player}) then {
        (findDisplay 49) closeDisplay 2;
    };
};
