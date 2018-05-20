/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
private "_loadout","_check","_posit";

//Check Do Time Do Jogador
switch (playerSide) do {
    case west: 
	{
	    _loadout = "config\loadouts\bope.sqf";
	};
	case east: 
	{
	    _loadout = "config\loadouts\bandido.sqf";
	};
	case independent: 
	{
	    _loadout = "config\loadouts\bandido2.sqf";
	};
};
_check = profileNameSpace getVariable "vivo";
_posit = profileNameSpace getVariable "rjposition";

while (true) do {
    if (_check isEqualTo 0) then {
        if (!alive player) then {
	        waitUntil (alive player);
	        [] execVM _loadout;
        };
	};
	if (_check isEqualTo 1) then {
	    if (!isNull _posit) then {
		    waitUntil (alive player);
		    player setPos _posit;
		};
	};
	sleep 0.2;
};

