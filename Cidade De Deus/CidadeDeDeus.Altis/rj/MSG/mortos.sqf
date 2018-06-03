/*

    Author: RobérioJR

*/

addMissionEventHandler ["EntityKilled", 
{
	params ["_killed", "_killer"];	
	if ((_killer==player) or (_killer == vehicle player)) then{
	    if (_killed isKindOf "CAManBase")then {
	
	        _killer_Name = "";
	        _killed_Name = "";
	        _kill_HUD = "";
	        _killed_Color = "#99D5FF";

	        _killed = _this select 0;
	        _killer = _this select 1;

	            if (!(isplayer _killed)) then {
	                _killed_Name = getText (configFile >> "CfgVehicles" >> format["%1",typeOf _killed] >> "Displayname");
	            }else{_killed_Name = name _killed};

	        private _distance = _killer distance2D _killed; 	
	        private _weapon = getText(configFile >> "CfgWeapons" >> currentWeapon (vehicle _killer) >> "displayname");
	        _killed_Color = (side group _killed call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;
	
	        _weapon = currentWeapon _killer;
	        _pictureweapon = gettext (configFile >> "cfgWeapons" >> _weapon >> "picture");
	        if (_pictureweapon == "") then {
	            _weapon = typeOf (vehicle _killer);
	            _pictureweapon = (getText (configFile >> "cfgVehicles" >> _weapon >> "picture"));
	        };

	        //_kill_HUD = format["<t size='0.5'>Killed  <t size='0.8'> <t color='%1'>  %2  <t color='#FFD700'>  %3 m</t>",_killed_Color,_killed_Name,floor _distance];	
 
	        [format["%1 Matou %2 A Uma Distancia De %3m Com %4", name player,_killed_Name,floor _distance,_weapon],"systemChat"] call BIS_fnc_MP;
	    };
	};				
}];