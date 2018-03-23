// Guardar Arma
waituntil {!(IsNull (findDisplay 46))};
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 35) then {
  player action ["SwitchWeapon", player, player, 100]; player switchCamera cameraView;
}"];

//outra
