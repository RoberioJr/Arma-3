/*
	Author: Casperento
*/
#include "..\..\script_macros.hpp"
private["_mode","_msg","_sound","_msgTarget","_alvo"];

_mode = param [0,0,[0]];
_alvo = cursorTarget;

disableSerialization;

switch (_mode) do {
	// CIV
    case 0: {
		switch (playerSide) do {
			case civilian : {
				_msg = "ISSO É UM ASSALTO! MÃOS NA CABEÇA!!!! ( SHIFT + B ) DOU 10seg, OU VAMOS ATIRAR!!";
			};
			case west : {
				_msg = "AQUI É POLÍCIA: MÃOS NA CABEÇA! ( SHIFT + B )";
			};
			case independent : {
				_msg = "MÉDICO: Levarei você ao Hospital por morrer em combate!";
			};
		};
	};
	case 1: {
		switch (playerSide) do {
			case civilian : {
				_msg = "PARE O VEÍCULO E SAIA DELE COM AS MÃOS NA CABEÇA!!( SHIFT + B ) Dou 10seg, ou iremos atirar!!";
			};
			case west : {
				_msg = "AQUI É POLÍCIA: DESÇA DO VEÍCULO COM AS MÃO NA CABEÇA! ( SHIFT + B )";
			};
			case independent : {
				_msg = "MÉDICO: Você sofreu um acidente, portanto poderá continuar com seu ROLEPLAY. Está liberado.";
			};
		};
	};
	case 2: {
		switch (playerSide) do {
			case civilian : {
				_msg = "CAI FORA RAPÁ!! Não fode!!";
			};
			case west : {
				_msg = "AQUI É POLÍCIA: SAIA IMEDIATAMENTE DO LOCAL!";
			};
			case independent : {
				_msg = "MÉDICO: Afaste-se do local e me deixe trabalhar. Obrigado!";
			};
		};
	};
};

if(_msg isEqualTo "") exitWith {};

//Confirmacao de seguranca
[0,format["%2, voce enviou ANÚNCIO para %1 com sucesso !",name _alvo,name player]] remoteExecCall ["life_fnc_broadcast",player];

//Mensagem para a vitima
_msgTarget = format["%1",_msg];

//Enviando mensagem para a vitima
[2,_msgTarget] remoteExecCall ["life_fnc_broadcast",_alvo];