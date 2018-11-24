#include "..\..\..\RDR_Macros.hpp"
/*

    Author: Marvinn && RobérioJR

*/

 _MarcadoresMissoes = [
    ["missao_1","missao_2","missao_3","missao_4","missao_5"],
	["missaoesp_1","missaoesp_2","missaoesp_3"]
 ];

 _UltimaMissao = -1;
 _missao = -2;
 _TempoEntreMissoes = RDRCFG(getNumber,"RDR_TempoEntreMissoes");
 
Sleep _TempoEntreMissoes;
 
While {True} Do {
	_missao = SelectRandom [1,2];
	If !(_UltimaMissao IsEqualTo _missao) Then {
        Switch (True) Do {
            Case (_missao isEqualTo 1): { [(_MarcadoresMissoes Select 0)] Spawn RDR_fnc_MissaoArmas; };
            Case (_missao IsEqualTo 2): { [(_MarcadoresMissoes Select 0)] Spawn RDR_fnc_MissaoDrogas; };
        };
		_UltimaMissao = _missao;
		Sleep _TempoEntreMissoes;
    };
	Sleep 0.1;
};