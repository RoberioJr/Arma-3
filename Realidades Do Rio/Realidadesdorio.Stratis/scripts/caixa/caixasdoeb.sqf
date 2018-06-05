/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
#include "..\..\UIDs.sqf"

if ((getPlayerUID player) in _LideresBANDIDO) then {
   _posicaoMarker = getMarkerPos entregaeb
   _hasEnough = [50000] call HG_fnc_hasEnoughMoney;

    if (_hasEnough) then {
        [50000,1] call HG_fnc_addOrSubCash;
	    sleep 10;
	    armaseb setPos (getMarkerPos entregaeb);
    } else {
        hint "Você não têm o dinheiro suficiente";
    };
 } else {
    hint "Você Não È Lider De Uma Facção..."; 
};