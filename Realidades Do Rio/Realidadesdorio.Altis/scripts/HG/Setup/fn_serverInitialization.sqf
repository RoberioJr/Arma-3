/*
    Author - HoverGuy
    © All Fucks Reserved
    Website - http://www.sunrise-production.com
*/

HG_SAVING_EXTDB = (getText(getMissionConfig "CfgClient" >> "savingMethod")) isEqualTo "extDB";

if(HG_SAVING_EXTDB) then
{
	if(isNil "extDB3_var_loaded") exitWith 
	{
	    diag_log (localize "STR_HG_EXTDB_NOT_LOADED");
		HG_SAVING_EXTDB = false;
	};
	
	if(!([] call extDB3_var_loaded)) exitWith
	{
	    diag_log (localize "STR_HG_EXTDB_NOT_LOADED");
		HG_SAVING_EXTDB = false;
	};
	
	HG_fnc_asyncCall = compileFinal preprocessFileLineNumbers "scripts\HG\Functions\Server\fn_asyncCall.sqf";
	HG_fnc_extDBInit = compileFinal preprocessFileLineNumbers "scripts\HG\Functions\Server\fn_extDBInit.sqf";
	
	private["_protocol","_ok"];
	
	_protocol = getText(getMissionConfig "CfgClient" >> "extDBProtocol");
	_ok = [getText(getMissionConfig "CfgClient" >> "extDBDatabase"),_protocol,getText(getMissionConfig "CfgClient" >> "extDBCustomFile")] call HG_fnc_extDBInit;
	
	if(!_ok) exitWith
	{
	    HG_SAVING_EXTDB = false;
	};
	
	HG_SAVING_PROTOCOL = _protocol;
};

private "_compile";

{
    _compile = compileFinal preprocessFileLineNumbers (_x select 1);
    missionNamespace setVariable[(_x select 0),_compile];
} forEach 
[
	["HG_fnc_activeReset","scripts\HG\Functions\Server\fn_activeReset.sqf"],
	["HG_fnc_clientToServer","scripts\HG\Functions\Server\fn_clientToServer.sqf"],
	["HG_fnc_deleteVehicle","scripts\HG\Functions\Server\fn_deleteVehicle.sqf"],
	["HG_fnc_disconnect","scripts\HG\Functions\Server\fn_disconnect.sqf"],
	["HG_fnc_findIndex","scripts\HG\Functions\Server\fn_findIndex.sqf"],
	["HG_fnc_getGear","scripts\HG\Functions\Server\fn_getGear.sqf"],
	["HG_fnc_getInventory","scripts\HG\Functions\Server\fn_getInventory.sqf"],
	["HG_fnc_getType","scripts\HG\Functions\Server\fn_getType.sqf"],
	["HG_fnc_getWhitelist","scripts\HG\Functions\Server\fn_getWhitelist.sqf"],
	["HG_fnc_lock","scripts\HG\Functions\Server\fn_lock.sqf"],
	["HG_fnc_requestGarage","scripts\HG\Functions\Server\fn_requestGarage.sqf"],
	["HG_fnc_resetGarages","scripts\HG\Functions\Server\fn_resetGarages.sqf"],
	["HG_fnc_resetMoney","scripts\HG\Functions\Server\fn_resetMoney.sqf"],
	["HG_fnc_setInventory","scripts\HG\Functions\Server\fn_setInventory.sqf"],
	["HG_fnc_spawnVehicle","scripts\HG\Functions\Server\fn_spawnVehicle.sqf"],
	["HG_fnc_storeVehicleServer","scripts\HG\Functions\Server\fn_storeVehicleServer.sqf"],
	["HG_fnc_updateWhitelist","scripts\HG\Functions\Server\fn_updateWhitelist.sqf"]
];

if(((getNumber(getMissionConfig "CfgClient" >> "storeVehiclesOnDisconnect")) isEqualTo 1) OR (getNumber(getMissionConfig "CfgClient" >> "deleteBodyOnDisconnect") isEqualTo 1) OR (getNumber(getMissionConfig "CfgClient" >> "enableWhitelist") isEqualTo 1)) then
{
    addMissionEventHandler ["HandleDisconnect",{_this call HG_fnc_disconnect; false;}];
};

if((getNumber(getMissionConfig "CfgClient" >> "resetGaragesOnServerStart")) isEqualTo 1) then
{
    [] call HG_fnc_resetGarages;
} else {
    [] call HG_fnc_activeReset;
};

if((getNumber(getMissionConfig "CfgClient" >> "resetSavedMoney")) isEqualTo 1) then
{
    [] call HG_fnc_resetMoney;
};

if((getNumber(getMissionConfig "CfgClient" >> "enableWhitelist")) isEqualTo 1 AND HG_SAVING_EXTDB) then
{
    [] call HG_fnc_getWhitelist;
};

"HG_CLIENT" addPublicVariableEventHandler {[(_this select 1)] call HG_fnc_clientToServer;};
