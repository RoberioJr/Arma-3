/*

    Author: RobérioJR
	|10/08/18|

*/

Private ['_MrkSpawn'];

if (!Alive Player) exitWith {};
if ((Vehicle Player) != Player) exitWith {};

switch (PlayerSide) do {
    case West: { _MrkSpawn = SpawnAzul; };
	case East: { _MrkSpawn = SpawnVermelho; };
	case Independent: { _MrkSpawn = SpawnVerde; };
};

[] spawn { 
    player AllowDamage False;
	SystemChat Format ['%1, Você Está Invulnerável Por 4 Segundos...',Name player];
    sleep 4;
	player AllowDamage True;
};
[] Spawn {
    titleCut ["", "BLACK FADED", 999]; 
	Sleep 1.5; 
	titleCut ["", "BLACK IN", 5];
};
  
  [] spawn RJ_fnc_LoadoutInicial;
 
  player setPos (GetMarkerPos _MrkSpawn);
  
 if !(PrimeiroRespawn) Then { 
    PrimeiroRespawn = true; 
	(findDisplay 46) displayAddEventHandler ["KeyDown", {_this call RJ_fnc_KeyHandler}]; 
	If (AtivarMenuInicial) Then {
	    [] Spawn RJ_fnc_MenuInicial;
	};
 };