/*

    Author: RobérioJR
	|07/08/18|

*/

  [] Spawn RDR_Fnc_MissaoDrogas;
  
addMissionEventHandler ["HandleDisconnect",{_this call RDR_fnc_AoDesconectar; false;}];

while {true} Do {
sleep 900;
_missao = ['drogas','armas'] Call BIS_fnc_SelectRandom;
    Switch (true) Do {
    case (_missao IsEqualTo 'drogas'): { Spawn RDR_fnc_MissaoDrogas; };
    case (_missao IsEqualTo 'armas'): { Spawn RDR_fnc_MissaoArmas; };
    };
};