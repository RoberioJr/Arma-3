#include "..\..\..\RDR_Macros.hpp"
/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_Marcadores = _This Select 0;
_caixaEB = "Caixa_IA2" createVehicle GetMarkerPos (SelectRandom _Marcadores);

_TempoFinalizar = (RDRCFG(getNumber,"RDR_TempoEntreMissoes") + 120);

    /* Esvaziar Caixa */
clearItemCargoGlobal _caixaEB;
clearMagazineCargoGlobal _caixaEB;
clearWeaponCargoGlobal _caixaEB;
clearBackpackCargoGlobal _caixaEB;

    /* Adicionar Items */
_caixaEB addWeaponCargo ["BAD_IA2_762",5];
_caixaEB addMagazineCargo ["20Rnd_762x39_Mag_F", 25];

    /* Aviso a todos que irá chegar a caixa */
_id = random 9999;
_marcador = createMarker [format["%1_marcador",_id ],visiblePosition _caixaEB];
_marcador setMarkerColor "ColorRed";   //Define a Cor Do Marcador
_marcador setMarkerType "mil_dot";   //Ponto "Bolinha"
_marcador setMarkerText format["Contrabando De Armas"];

_aviso = parseText format ["<t size='3.4' color='#ff0000' shadow='0'>Desvios de Armas do EB\n</t> <t size='1.2'> Chegou a encomenda do desvio de armas do EB </t>"];
[_aviso,4] RemoteExec ['RDR_fnc_Notificar',-2];

[_caixaEB,_entregaeb,_TempoFinalizar] Spawn {
        _caixaEB = _this select 0;
        _entregaeb = _this select 1;
        _TempoFinalizar = _this select 2;
        Sleep _TempoFinalizar;
        DeleteVehicle _caixaEB;
        deleteMarker _entregaeb;
    };