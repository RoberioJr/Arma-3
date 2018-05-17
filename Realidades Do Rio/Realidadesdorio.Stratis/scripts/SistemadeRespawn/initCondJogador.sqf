/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_spawncv = getMarkerPos spawn_certocv;
_spawnbope = getMarkerPos spawn_certobope;
_perfilAntigo = profileNamespace getVariable "antigoJogador";
_uidjog = getPlayerUID player;

if (_perfilAntigo isEqualTo getPlayerUID) then {
     //COMANDO PRA CRIAR DIALOGO DO MENU
} else {

waitUntil (alive player);
profileNamespace setVariable ["antigoJogador","_uidjog"];
saveProfileNamespace;
//COMANDO DE CRIAR DIALOGO PARA O MENU
     if (playerSide isEqualTo east) then {
	    player setPos _spawncv;
	};
	 if (playerSide isEqualTo west) then {
	    player setPos _spawnbope;
	};
};