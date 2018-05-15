#include "..\script_macros.hpp"
/*
    File: pedagio.sqf
    Author: GhostsBR
	Edit: RobérioJR

	NPC: this addAction ["<t color = '#40FF00'>Pagar Pedágio - R$1000</t>", "scripts\pedagio.sqf"];
	GATE: this setVariable ['bis_disabled_Door_1',1,true]; this setVariable ['bis_disabled_Door_2',1,true];
*/


if (side player == civilian) then {
	if (CASH > 999) then {
		call action_pagar;
	};
	if (CASH < 999) exitWith {hint "Você não tem dinheiro suficiente para pagar o pedágio!"};
};

if (side player == west) then {
	call action_prioridade;
};

if (side player == independent) then {
	call action_prioridade;
};


action_prioridade = {
	_porta = nearestObject [player, "Land_Net_Fence_gate_F"];
	hint "Pedágio Gratuito para serviços publicos!";
	_porta animate ["Door_1_rot", 1];
	_porta animate ["Door_2_rot", 1];
	sleep 7;
	call action_acabou;
};

action_pagar = {
	_pagamento = 1000;
	_porta = nearestObject [player, "Land_Net_Fence_gate_F"];
	CASH = CASH - _pagamento;
	hint "Você pagou R$1000 pelo pedágio!";
	_porta animate ["Door_1_rot", 1];
	_porta animate ["Door_2_rot", 1];
	sleep 7;
	call action_acabou;
};

action_acabou = {
	_porta = nearestObject [player, "Land_Net_Fence_gate_F"];
	_porta animate ["Door_1_rot", 0];
	_porta animate ["Door_2_rot", 0];
};