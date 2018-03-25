/*	
	AUTHOR: Lystic
	EDIT: RoberioJR
	DATE: 06/19/14
	VERSION: 1.5
	FILE: Anticheat.sqf
	COMMENT: Do not edit this file. Run this file from your mission init!

*/

  /* Configuration */

_Enabled = true;							//Enable or disable the anticheat
_Admins = ["76561198134612622", "76561198090180406", "76561198343381444"]; 			//Add your admin UID here
_Use_Life_fnc_MP = false;					//If you are using altis life change this to true

//Add new cheat files & variables & menus to these lists
_DetectedFiles = ["JM3.sqf","JM3.png","wookie.sqf","wookie_wuat\start.sqf","lystoarma3\start.sqf","help.sqf","hack.sqf","cheat.sqf","JxMxE.sqf","JME.sqf","wookiev5.sqf","menu.sqf","fnc_create_vehicle.sqf","fnc_autoheal.sqf","fnc_create_weapon.sqf"];			
_DetectedVariables = ["ESP","Wookie","Extasy","GOD","GodMode","JxMxE_Exec","Lystic","Hack","Script","Wookie_Exec","Bypass","norecoil","cheat","Admin_Lite_Menu","admincrate","Jesus_MODE","antiantiantiantih4x","NSS_AC"];
_DetectedMenus = [3030];
/* End Configuration */

if(!_Enabled) exitWith {};

_toCompilableString = {
	_code = _this select 0;
	_string = "";
	if(typename _code == "CODE") then {
		_string = str(_code);
		_arr = toArray(_string);
		_arr set[0,32];
		_arr set[count(_arr)-1,32];
		_string = toString(_arr);
	};
	_string;
};
//Protect BIS_fnc_MP
BIS_fnc_MP = compileFinal ([BIS_fnc_MP] call _toCompilableString);
BIS_fnc_MPExec = compileFinal ([BIS_fnc_MPExec] call _toCompilableString);

//Protect AH_fnc_MP
if(_Use_Life_fnc_MP) then {
	Life_fnc_MP = compileFinal ([Life_fnc_MP] call _toCompilableString);
	AH_fnc_MP = compileFinal ([Life_fnc_MP] call _toCompilableString);
	life_fnc_tazed = compileFinal ([life_fnc_tazed] call _toCompilableString);
} else {
	AH_fnc_MP = compileFinal ([BIS_fnc_MP] call _toCompilableString);
};

if(isDedicated) then {
	diag_log "<ANTICHEAT>: Inicializado!";
	Notify_Kick = compileFinal '
		diag_log "<ANTICHEAT> Kicked User";
		diag_log str(_this);
		diag_log "<ANTICHEAT> End Kicked";
		[_this,"Receive_Notify",true,false] call AH_fnc_MP;
	';
	Notify_Load = compileFinal '
		diag_log format["<ANTICHEAT> %1",_this];
	';

	[] spawn {
		while{true} do {
			{
				_x hideObjectGlobal false;
			} forEach playableUnits;
			_time = time + 2;
			waitUntil{time >= _time};
		};
	};	

} else {
	waitUntil{!isnull player};
	waitUntil{alive player};
	Receive_Notify = compileFinal "
		hint format['%1 Foi Expulso Por %2. Notifique Um Admin!',_this select 0,_this select 2];
	";

	if(getplayeruid player in _Admins) exitWith {
		hint "Bem Vindo Admin";
		[[format["O Administrador %1 Conectou No Servidor",name player]],"Notify_Load",false,false] call AH_fnc_MP; 
	};		

	Kick = compileFinal "
		endMission 'FAIL';
		for '_i' from 0 to 100 do {(findDisplay _i) closeDisplay 0;};
		disableUserInput true;
	";

	[_DetectedFiles] spawn {
		_name = name player;
		_uid = getplayeruid player;
		loadFile "";
		{
			_text = loadFile _x;
			_numLetters = count(toArray(_text));
			if(_numLetters > 0) exitWith {
				[[_name,_uid,format["Bad Script: %1",_x]],"Notify_Kick",false,false] call AH_fnc_MP;
				call Kick;
			};
		} foreach (_this select 0);
	};
	[_DetectedVariables] spawn {
		_name = name player;
		_uid = getplayeruid player;
		{
			_x spawn {
				waitUntil{!isNil _this};
				[[_name,_uid,format["Bad Variable: %1",_this]],"Notify_Kick",false,false] call AH_fnc_MP;
				call Kick;
			};
		} forEach (_this select 0);
	};
	[_DetectedMenus] spawn {
		_name = name player;
		_uid = getplayeruid player;
		{
			_x spawn {
				waitUntil{!isNUll (findDisplay _this)};
				[[_name,_uid,format["Bad Menu: %1",_this]],"Notify_Kick",false,false] call AH_fnc_MP;
				call Kick;
			};
		} forEach (_this select 0);
	};
	[] spawn {
		_name = name player;
		_uid = getplayeruid player;
		while{true} do {
			if(unitRecoilCoefficient player < 1) exitWith {
				[[_name,_uid,"Recoil Hack"],"Notify_Kick",false,false] call AH_fnc_MP;
				call Kick;
			};
			_time = time + 5;
			setTerrainGrid 25;
			_nearObjects = vehicle player nearObjects 50;
			{
				vehicle player enableCollisionWith _x;
			} forEach _nearObjects;
			waitUntil{time >= _time};
		};
	};
	[] spawn {
		while{true} do {
			onMapSingleClick '';
			player allowDamage true;
			vehicle player allowDamage true;
		};
	};
	[] spawn {
		while{true} do {
			waitUntil{!isNull (findDisplay 49)};
			((findDisplay 49) displayCtrl 2) ctrlEnable false;
			((findDisplay 49) displayCtrl 2) ctrlSetText "Proteção Do Servidor by:";
			((findDisplay 49) displayCtrl 103) ctrlEnable false;
			((findDisplay 49) displayCtrl 103) ctrlSetText "RobérioJr";
			((findDisplay 49) displayCtrl 122) ctrlEnable false;
			((findDisplay 49) displayCtrl 122) ctrlShow false;
			((findDisplay 49) displayCtrl 523) ctrlSetText "Public v1.5";
			waitUntil{isNull (findDisplay 49)}
		};
	};
	[[format["O Jogador %1 Foi Inicializado",name player]],"Notify_Load",false,false] call AH_fnc_MP; 
};

_exists = loadFile "AntiHack\ACScripts\AdminMenu.sqf";
if(_exists != "") then {
	call compile preprocessfilelinenumbers "AntiHack\ACScripts\AdminMenu.sqf";
};