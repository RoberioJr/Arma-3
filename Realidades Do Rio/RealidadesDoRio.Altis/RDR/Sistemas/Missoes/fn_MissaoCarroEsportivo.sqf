/*

    Author: Marvinn

*/

_Marcadores = _This select 0;
_marcador = selectRandom _Marcadores;
_veiculoSorteado = selectRandom ["AlessioMustangGold","AlessioMustangChrome","CarlosF12C","CarlosF12Mat"];
_posMarcador = getMarkerPos _marcador;
_posMarcadorDestino = getMarkerPos(selectRandom ["missaoDestinoBots1","missaoDestinoBots2","missaoDestinoBots3"]);
_vel = createVehicle[_veiculoSorteado,_posMarcador,[],0,"NONE"];
_grupoNPC = createGroup [civilian, true];
_npc = _grupoNPC createUnit ["C_man_polo_1_F",_posMarcador,[],5,"NONE"];
/*
Loadout do NPC
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
*/

removeAllWeapons _npc;
removeAllItems _npc;
removeAllAssignedItems _npc;
removeUniform _npc;
removeVest _npc;
removeBackpack _npc;
removeHeadgear _npc;
removeGoggles _npc;
_npc forceAddUniform "U_C_IDAP_Man_casual_F";
for "_i" from 1 to 3 do {_npc addItemToUniform "CSW_20Rnd_57x28_SS190";};
_npc addGoggles "G_Aviator";

comment "Add weapons";
_npc addWeapon "CSW_FN57";

comment "Add items";
_npc linkItem "ItemMap";
_npc linkItem "ItemCompass";
_npc linkItem "Itemwatch";
_npc linkItem "ItemRadio";

_npc setFace "GreekHead_A3_01";
_npc setSpeaker "male04gre";

/*
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
Fim do Loadout do NPC
*/

//Ponto de Referência para o NPC ir para o veículo
_npc assignAsDriver _vel;
_npc moveInDriver _vel;

//Ponto de Referência para o NPC ir para o destino
_grupoNPC addWaypoint[_posMarcadorDestino, 1];
[_grupoNPC, 1] setWaypointType "MOVE";
[_grupoNPC, 1] setWaypointBehaviour "AWARE";
[_grupoNPC, 1] setWaypointVisible false;

_npcDirigindo = true;
_limit = 1200;
_idCarro = Random (9999);
_marcadorRastreado = createMarker [Format["RDR_%1_%2",_veiculoSorteado, _idCarro], visiblePosition _vel];
_marcadorRastreado setMarkerText Format["Carro Esportivo: %1",_veiculoSorteado];
_marcadorRastreado setMarkerBrush "SolidFull";
_marcadorRastreado setMarkerColor "ColorBlue";
_marcadorRastreado setMarkerType "c_car";
_marcadorRastreado setMarkerShape "ICON";

_aviso = format ["<t size='3.4' color='#ff090f' shadow='0'>Carro Esportivo\n</t><br/><br/><img shadown='false' size='6' image='Texturas\missaocarroesportivo.paa'/><br/><br/><t size='1.2'> Um carro esportivo raríssimo está circulando as ruas, pegue-o! </t>"];
[_aviso,4] RemoteExec ['RDR_fnc_Notificar',-2];
While {_npcDirigindo} do {
	    _marcadorRastreado setMarkerPos (visiblePosition _vel);
        sleep 1;
        _limit = _limit - 1;
		if(!alive _npc) exitWith{
		deleteMarker _marcadorRastreado;};
		if (_vel distance _posMarcadorDestino < 5) exitWith {
			deleteMarker _marcadorRastreado;
		    deleteVehicle _vel;
		    deleteVehicle _npc;
		    };
        if (_limit < 1) then { _npcDirigindo = false; 
           deleteMarker _marcadorRastreado;
		   deleteVehicle _npc;
		   deleteVehicle _vel;
		};
    };
