/*
	Author: Casperento
*/

#include "..\..\script_macros.hpp"
#define Btn1 2401
#define Btn2 2402
#define Btn3 2403

params ["_Btn1","_Btn2","_Btn3"];

disableSerialization;

if (!dialog) then {
    createDialog "dgAssalto";
};

_display = findDisplay 9000;

_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;

switch (playerSide) do {
	case civilian : {
		// Botao 1
		_Btn1 ctrlSetText "Assaltar";
		_Btn1 ctrlSetTooltip "Isso é um assalto! Mãos na cabeça!!( SHIFT + B ) !";
		_Btn1 buttonSetAction "[0] call life_fnc_sAssaltoMSG; closeDialog 0;";
		// Botao 2
		_Btn2 ctrlSetText "Veículo";
		_Btn2 ctrlSetTooltip "Pare o veículo e saia dele imediatamente com as mãos na cabeça!!( SHIFT + B ), ou iremos atirar!!";
		_Btn2 buttonSetAction "[1] call life_fnc_sAssaltoMSG; closeDialog 0;";
		// Botao 3
		_Btn3 ctrlSetText "Mete o pé";
		_Btn3 ctrlSetTooltip "Mete o pé, vai!";
		_Btn3 buttonSetAction "[2] call life_fnc_sAssaltoMSG; closeDialog 0;";
	};
	case west : {
		// Botao 1
		_Btn1 ctrlSetText "Abordar";
		_Btn1 ctrlSetTooltip "AQUI É POLÍCIA: fique com as mãos na cabeça! ( SHIFT + B )";
		_Btn1 buttonSetAction "[0] call life_fnc_sAssaltoMSG; closeDialog 0;";
		// Botao 2
		_Btn2 ctrlSetText "Veiculo";
		_Btn2 ctrlSetTooltip "AQUI É POLÍCIA: desça do veículo imediatamente e coloque as mãos na cabeça! ( SHIFT + B )";
		_Btn2 buttonSetAction "[1] call life_fnc_sAssaltoMSG; closeDialog 0;";
		// Botao 3
		_Btn3 ctrlSetText "Afaste-se";
		_Btn3 ctrlSetTooltip "AQUI É POLÍCIA: Saia do local imediatamente, ou iremos atirar!";
		_Btn3 buttonSetAction "[2] call life_fnc_sAssaltoMSG; closeDialog 0;";
	};
	case independent : {
		// Botao 1
		_Btn1 ctrlSetText "PVP";
		_Btn1 ctrlSetTooltip "MÉDICO: Levarei você ao Hospital por morrer em PvP !";
		_Btn1 buttonSetAction "[0] call life_fnc_sAssaltoMSG; closeDialog 0;";
		// Botao 2
		_Btn2 ctrlSetText "Acidente";
		_Btn2 ctrlSetTooltip "MÉDICO: Você sofreu um acidente, portanto poderá continuar com seu RP.";
		_Btn2 buttonSetAction "[1] call life_fnc_sAssaltoMSG; closeDialog 0;";
		// Botao 3
		_Btn3 ctrlSetText "Afaste-se";
		_Btn3 ctrlSetTooltip "MÉDICO: Afaste-se do local e me deixe trabalhar. Obrigado!";
		_Btn3 buttonSetAction "[2] call life_fnc_sAssaltoMSG; closeDialog 0;";
	};
};