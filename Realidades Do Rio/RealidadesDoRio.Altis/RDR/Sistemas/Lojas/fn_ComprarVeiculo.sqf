/*

    Author: RobérioJR

*/

Private ['_Veiculo','_className','_Preco','_Spawn','_Falta'];

_className = lbData[5030,(lbCurSel 5030)];
_Preco = lbValue[5030,(lbCurSel 5030)];

If (!Alive Player) ExitWith {};

If (RDR_Grana < _Preco) ExitWith {
    _Falta = _Preco - RDR_Grana;
    Hint Format["Você Não Tem Dinheiro Suficiente, Está Faltando R$%1 Para Comprar Esse Veiculo.",_Falta];
    playSound "FD_CP_Not_Clear_F";
};

Switch (PlayerSide) Do {
    Case West: { _Spawn = SpawnVeiculosAzul; };
	Case East: { _Spawn = SpawnVeiculosVermelho; };
	Case Independent: { _Spawn = SpawnVeiculosVerde; };
};

If (IsNil "_Spawn") ExitWith { Hint "Erro: Spawn Não Definido"; };

_PosLivre = (GetMarkerPos _Spawn) findEmptyPosition [2,45,_className]; //Acha Espaço Livre Para Spawnar Veiculo [MIN,MAX,CLASSNAME]
_Veiculo = createVehicle [_className, _PosLivre, [], 0, "NONE"]; //Spawnar O Veiculo
waitUntil {!isNil "_Veiculo" && {!isNull _Veiculo}}; //Esperar O Veiculo Spawnar
_Veiculo allowDamage false; //Veiculo Indestrutivel Para Evitar Bugs
_Veiculo setPos _PosLivre;
_Veiculo setVectorUp (surfaceNormal _PosLivre);
_Veiculo setDir (markerDir _Spawn);
_Veiculo lock 2;

player setDir (player getDir _Veiculo);

[False,_Preco, 0] Call RDR_fnc_AdcSubGrana;
playSound "FD_Finish_F";
Hint Format["Você Comprou Um Veiculo Por: %1.",_Preco];

 /* Configuração Do Veiculo */
 clearItemCargoGlobal _Veiculo;
 clearMagazineCargoGlobal _Veiculo;
 clearWeaponCargoGlobal _Veiculo;
 clearBackpackCargoGlobal _Veiculo;
 
 _Veiculo SetVariable ["RDR_Veiculo_Dono",[name player,(GetPlayerUID Player)],True];

 If !(AtivarTermalVeiculos) Then {
    _Veiculo disableTIEquipment true;
 };
 
 RDR_VeiculosDoJogador PushBack _Veiculo;

 [_Veiculo] Spawn {
    _Veiculo = _This Select 0;
    Sleep 0.3;
    _Veiculo allowDamage true;
 };

 closeDialog 0; //Fechar Menu Da Loja

