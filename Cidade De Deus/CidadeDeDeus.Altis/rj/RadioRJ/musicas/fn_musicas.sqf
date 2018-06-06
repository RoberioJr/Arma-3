/*

    Author: RobérioJR

*/
private["_mode"];
#include "..\..\CFGs.sqf"
_mscid = param [0,0,[0]];

switch (_mscid) do {
	case 1: {
	    _idmusica = "INSONIA";
		_NomeMusica = _NomeMusica1;
	};
	case 2: {
	    _idmusica = "intro";
		_NomeMusica = _NomeMusica2;
	};
	case 3: {
	    _idmusica = "GAZA";
		_NomeMusica = _NomeMusica3;
	};
	case 4: {
	    _idmusica = "FALSOAMOR";
		_NomeMusica = _NomeMusica4;
	};
	case 5: {
	    _idmusica = "JULIETA";
		_NomeMusica = _NomeMusica5;
	};
};

    if (vehicle player != player) then {
	    playSound "botao";
	    cutText [format ["Tocando: %1",_NomeMusica], "PLAIN"];
	    sleep 1.5;
        playMusic _idmusica;
		//[] remoteExec ["playMusic 'INSONIA'", crew (vehicle player), 0];
		//{_idmusica remoteExec ["playMusic"]} forEach crew (vehicle player);
    };
	
