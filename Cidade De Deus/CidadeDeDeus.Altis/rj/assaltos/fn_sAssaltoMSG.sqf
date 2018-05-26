/*
	Author: Casperento
*/
#include "..\..\script_macros.hpp"
private["_mode","_msg","_sound","_msgTarget","_alvo","_tipo"];

_mode = param [0,0,[0]];
_alvo = cursorTarget;

disableSerialization;

switch (_mode) do {
	// CIV
    case 0: {
		switch (playerSide) do {
			case civilian : {
				_msg = "ISSO É UM ASSALTO! MÃOS NA CABEÇA!!!! ( SHIFT + B ) DOU 10seg, OU VAMOS ATIRAR!!";
				_tipo = "ATENÇÃO!";
			};
			case west : {
				_msg = "AQUI É POLÍCIA: MÃOS NA CABEÇA! ( SHIFT + B )";
				_tipo = "POLÍCIA";
			};
			case independent : {
				_msg = "MÉDICO: Levarei você ao Hospital por morrer em combate!";
				_tipo = "MÉDICO";
			};
		};
	};
	case 1: {
		switch (playerSide) do {
			case civilian : {
				_msg = "PARE O VEÍCULO E SAIA DELE COM AS MÃOS NA CABEÇA!!( SHIFT + B ) Dou 10seg, ou iremos atirar!!";
			    _tipo = "ATENÇÃO!";
			};
			case west : {
				_msg = "AQUI É POLÍCIA: DESÇA DO VEÍCULO COM AS MÃO NA CABEÇA! ( SHIFT + B )";
				_tipo = "POLÍCIA";
			};
			case independent : {
				_msg = "MÉDICO: Você sofreu um acidente, portanto poderá continuar com seu ROLEPLAY. Está liberado.";
			    _tipo = "MÉDICO";
			};
		};
	};
	case 2: {
		switch (playerSide) do {
			case civilian : {
				_msg = "CAI FORA RAPÁ!! Não fode!!";
				_tipo = "ATENÇÃO!";
			};
			case west : {
				_msg = "POLÍCIA: SAIA IMEDIATAMENTE DO LOCAL!";
				_tipo = "POLÍCIA";
			};
			case independent : {
				_msg = "MÉDICO: Afaste-se do local e me deixe trabalhar. Obrigado!";
				_tipo = "MÉDICO";
			};
		};
	};
};

if(_msg isEqualTo "") exitWith {};

//Confirmacao de seguranca
[0,format["%2, voce enviou ANÚNCIO para %1 com sucesso !",name _alvo,name player]] remoteExecCall ["life_fnc_broadcast",player];

//Mensagem para a vitima
//_msgTarget = format["%1",_msg];
_msgTarget = format["<t color='#ffffff' size='2'>%2</t><t color='#c45454' size='2'>:</t><br/><br/><img shadown='false' size='6' image='textures\atencao.paa'/><br/><br/>%1", _msg, _tipo];
//_msgTarget = format["<t color='#ffffff' size='2'>ALERTA</t><br/><br/><img shadown='false' size='10' image='textures\SEUBANNER.jpg'/><br/><br/><t color='#fffc00' size='2'> %1 </t><br/><t color='#ff0000' size='2'>*BY-CASPERENTO*</t>",_msg];


//Enviando mensagem para a vitima
//[2,_msgTarget] remoteExecCall ["life_fnc_broadcast",_alvo];
[3,_msgTarget] remoteExecCall ["life_fnc_broadcast",_alvo];