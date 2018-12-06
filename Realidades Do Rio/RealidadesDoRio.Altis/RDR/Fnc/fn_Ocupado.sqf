/*

    Author: RobérioJr

*/

_Delay = _this Select 0;

If (_Delay < 0) Then { _Delay = 1; };

RDR_JogadorOcupado = true;
Sleep _Delay;
RDR_JogadorOcupado = false;