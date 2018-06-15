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

if (vehicle player != player) exitWith {};
if (_musica isEqualTo "") exitWith {};
if (_musica isEqualTo "0") exitWith {playMusic "";}; //Parar Musica
if (_musica > 6 or _musica < 1) then {_musica = selectRandom [1,2,3,4,5,6];};
switch (_musica) do {
    case 1: {
	    nomeMusica = _nomeMusica1; 
	    _musica = "um";
	};
	case 2: {
	    nomeMusica = _nomeMusica2; 
	    _musica = "dois";
	};
	case 3: {
	    nomeMusica = _nomeMusica3; 
	    _musica = "tres";
	};
	case 4: {
	    nomeMusica = _nomeMusica4; 
	    _musica = "quatro";
	};
	case 5: {
	    nomeMusica = _nomeMusica5; 
	    _musica = "cinco";
	};
	case 6: {
	    nomeMusica = _nomeMusica6; 
	    _musica = "seis";
	};
};

	playSound "botao";
	titleText[format ["Tocando: %1",nomeMusica],"PLAIN"];
	sleep 1.5;
    playMusic _musica;
	
	