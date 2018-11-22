/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

_aviso = parseText format ["<t size='3.4' color='#ff0000' shadow='0'>Desvios de Armas do EB\n</t> <t size='1.2'> Chegou a encomenda do desvio de armas do EB </t>"];

_entregaeb = ["desvioeb1", "desvioeb2", "desvioeb3", "desvioeb4"] call BIS_fnc_selectRandom;
_caixaEB = "Caixa_IA2" createVehicle getMarkerPos _entregaeb;

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
_marcador = createMarkerLocal [format["%1_marcador",_id ],visiblePosition _caixaEB];
_marcador setMarkerColorLocal "ColorRed";   //Define a Cor Do Marcador
_marcador setMarkerTypeLocal "mil_dot";   //Ponto "Bolinha"
_marcador setMarkerTextLocal format["Contrabando De Armas"];

[_aviso,4] RemoteExec ['RDR_fnc_Notificar',-2];

[_caixaEB,_entregaeb] Spawn {
        _caixaEB = _this select 0;
        _entregaeb = _this select 1;
        Sleep 890;
        DeleteVehicle _caixaEB;
        deleteMarker _entregaeb;
    };