/*
file: fn_robATM.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bi.../wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name
 
if(side _robber != civilian) exitWith { hint "Você Não Pode Roubar Essa Joalheria!" };
if(_robber distance _shop > 4) exitWith { hint "Você Precisa Estar A 4 Metros Para Assaltar!" };
 
if !(_kassa) then { _kassa = 90000; };
if (_rip) exitWith { hint "O Assalto Já Está Acontecendo!" };
if (vehicle player != _robber) exitWith { hint "Saia De Dentro Do Veiculo!" };
 
if !(alive _robber) exitWith {};
if(!([false,"boltcutter",1] call life_fnc_handleInv)) exitWith {"Você Não Tem Um Alicate"};
if (_kassa == 0) exitWith { hint "Não Tem Dinheiro No Caixa!!" };
 
_rip = true;
_kassa = 600000 + round(random 800000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 100) then { hint "Um Alarme Foi Ativado, A Policia Já Deve Estar A Caminho!"; [[1,format["ALARME! - Joalheria: %1 Está Sendo Assaltada!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };
 
_cops = (west countSide playableUnits);
if(_cops < 5) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "Não Tem Policiais Suficientes Para Roubar Essa Joalheria!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (12m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(_rip) then
{
while{true} do
{
sleep 4;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (12m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
            _marker = createMarker ["rjMarker200", _Pos]; //by ehno: Place a Maker on the map
            "rjMarker200" setMarkerColor "ColorRed";
            "rjMarker200" setMarkerText "!ATENÇÃO! Assalto Em Progresso !ATENÇÃO!";
            "rjMarker200" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 12.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 12.5) exitWith { deleteMarker "rjMarker200"; _shop switchMove ""; hint "Você Deve Estar A Menos De 12M Para Assaltar! - Agora O Caixa Foi Trancado."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];
 
titleText[format["Você Roubou R$%1, Agora Corre Carai!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "rjMarker200"; // by ehno delete maker
life_cash = life_cash + _kassa;
 
_rip = false;
life_use_atm = false;
sleep (120 + random(240));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"]remoteExec["life_fnc_wantedAdd",false,false]
};
sleep 450;
_action = _shop addAction["Roubar Cofre Da Joalheria",life_fnc_robATM];
_shop switchMove "";