/*

    Author: RobérioJR
	PROJETO SENDO DESENVOLVIDO
    USO: ["IDMUSICA",DISTANCIA] call life_fnc_radio3d;
*/
/*
params [
    ["_musica",objNull,[objNull]]
];*/

_musica = param [0,0,[0]];

#include "..\CFGs.sqf"

if (_musica isEqualTo "") exitWith {};
if (_musica > 5 or _musica < 1) then {_musica = selectRandom [1,2,3,4,5];};
switch (_musica) do {
    case 1: {
	    _nomeMusica = _nomeMusica1; 
	    _musica = "um";
	};
	case 2: {
	    _nomeMusica = _nomeMusica2; 
	    _musica = "dois";
	};
	case 3: {
	    _nomeMusica = _nomeMusica3; 
	    _musica = "tres";
	};
	case 4: {
	    _nomeMusica = _nomeMusica4; 
	    _musica = "quatro";
	};
	case 5: {
	    _nomeMusica = _nomeMusica5; 
	    _musica = "cinco";
	};
};

if (vehicle player != player) then {
	playSound "botao";
	cutText [format ["Tocando: %1",_nomeMusica], "PLAIN"];
	sleep 1.5;
    playMusic _musica;
};