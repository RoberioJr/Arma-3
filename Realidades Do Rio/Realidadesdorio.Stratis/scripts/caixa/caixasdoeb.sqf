/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/
#include "..\..\UIDs.sqf"
_aviso = parseText format ["<t size='3.4' color='#ff0000' shadow='0'>Desvios de Armas do EB\n</t> <t size='1.2'> Chegou a encomenda do desvio de armas do EB </t>"];

if ((getPlayerUID player) in _LideresBANDIDO) then {
   //_posicaoMarker = getMarkerPos entregaeb
   _hasEnough = [50000] call HG_fnc_hasEnoughMoney;

    if (_hasEnough) then {
        [50000,1] call HG_fnc_addOrSubCash;
		hint "Sua carga irá chegar em meia hora apartir de AGORA";
	    sleep 1800;
		_caixaEB = "Caixa_IA2" createVehicle getMarkerPos "entregaeb";
		/* Esvaziar Caixa */
		 clearItemCargoGlobal _caixaEB;
         clearMagazineCargoGlobal _caixaEB;
         clearWeaponCargoGlobal _caixaEB;
         clearBackpackCargoGlobal _caixaEB;
		/* Adicionar Items */
		_caixaEB addWeaponCargo ["BAD_IA2_762",30];
		_caixaEB addMagazineCargo ["20Rnd_762x39_Mag_F", 120];
		/* Aviso a todos que irá chegar a caixa */
		_aviso remoteExec ["hintSilent"];
		
    } else {
        hint "Você não têm o dinheiro suficiente";
    };
 } else {
    hint "Você Não È Lider De Uma Facção..."; 
};