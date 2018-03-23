waituntil {!(IsNull (findDisplay 46))};
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 199) then {player setpos (screenToWorld [0.5,0.5])}"];