/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
#include "..\..\UIDs.sqf"

if ((getPlayerUID player) in _LideresBANDIDO) then {
   //_posicaoMarker = getMarkerPos entregaeb
   _hasEnough = [50000] call HG_fnc_hasEnoughMoney;

    if (_hasEnough) then {
        [50000,1] call HG_fnc_addOrSubCash;
	    sleep 10;
		_caixaEB = "Caixa_IA2" createVehicle getMarkerPos "entregaeb";
		/* Esvaziar Caixa */
		 //clearItemCargoGlobal _caixaEB;
         //clearMagazineCargoGlobal _caixaEB;
         //clearWeaponCargoGlobal _caixaEB;
         //clearBackpackCargoGlobal _caixaEB;
		/* Adicionar Items */
		_caixaEB addWeaponCargo ["CLASSNAME DA ARMA",5];
		_caixaEB addMagazineCargo ["CLASSNAME DOS PENTES", 5];
	    //armaseb setPos (getMarkerPos entregaeb);
    } else {
        hint "Você não têm o dinheiro suficiente";
    };
 } else {
    hint "Você Não È Lider De Uma Facção..."; 
};