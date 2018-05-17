/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_spawncv = getMarkerPos "spawn_certocv";
_spawnbope = getMarkerPos "spawn_certobope";
_perfilAntigo = profileNamespace getVariable "antigoJogador";
_uidjog = getPlayerUID player;

if (_perfilAntigo isEqualTo getPlayerUID) then {
    //COMANDO PRA CRIAR DIALOGO DO MENU
 } else {
    waitUntil (alive player);
    profileNamespace setVariable ["antigoJogador","_uidjog"];
    saveProfileNamespace;
};
//COMANDO DE CRIAR DIALOGO PARA O MENU
 switch (playerSide) do 
{
    case west: 
	{
	    player setPos _spawnbope;
	};
	case east: 
	{
	    player setPos _spawncv;
	};
	case independent: 
	{
	};
};