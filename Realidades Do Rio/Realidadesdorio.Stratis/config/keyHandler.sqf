/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {!isNull(findDisplay 46)};
(findDisplay 46) displaySetEventHandler ["KeyDown","_this call keyspressed"];
_Admins = 
[
    "76561198134612622", //RobérioJR
	"76561198343381444", //Marvinn
	"76561198090180406"  //??
];
_UID = (getPlayerUID player);

keyspressed = {
    _keyDik = _this select 1;
    _shift =_this select 2;
    _ctrl = _this select 3;
    _alt = _this select 4;
    _handled = false;
	
    switch (_this select 1) do {
	
		case 66: { //F8 Admin Menu Veiculos
		    if (alive player) then {
		        if (_UID in _Admins) then {
		            [] call TUT_fnc_OpenVehUI;
			    };
			};
		};
		
    	_handled;
    };
};




