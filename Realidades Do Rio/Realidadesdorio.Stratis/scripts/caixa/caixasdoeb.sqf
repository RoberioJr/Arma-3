/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_posicaoMarker = 
_hasEnough = [50000] call HG_fnc_hasEnoughMoney;

if (_hasEnough) then {
     [50000,1] call HG_fnc_addOrSubCash;
	 sleep 10;
	 armaseb setPos (getMarkerPos entregaeb);
} else {
     hint "Você não têm o dinheiro suficiente";
};