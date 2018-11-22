#include "..\..\..\RDR_Macros.hpp"
/*

    Author: Marvinn && RobérioJR

*/

 _UltimaMissao = '';
 _missao = '';
 
 _TempoEntreMissoes = RDRCFG(getNumber,"RDR_TempoEntreMissoes");
 
Sleep _TempoEntreMissoes;
 
While {True} Do {
	_missao = ['drogas','armas'] Call BIS_fnc_SelectRandom;
	If !(_UltimaMissao IsEqualTo _missao) Then {
        Switch (True) Do {
            Case (_missao isEqualTo 'drogas'): { [] Spawn RDR_fnc_MissaoArmas; };
            Case (_missao IsEqualTo 'armas'): { [] Spawn RDR_fnc_MissaoDrogas; };
        };
		_UltimaMissao = _missao;
		Sleep _TempoEntreMissoes;
    };
	Sleep 0.1;
};