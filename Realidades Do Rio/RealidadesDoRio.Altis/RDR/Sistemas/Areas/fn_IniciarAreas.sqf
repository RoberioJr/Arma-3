#include "..\..\..\RDR_Macros.hpp"
/*

    Author: RobérioJr

*/

If (!isServer) ExitWith {};
Diag_Log "::RDR Server:: - Criando Areas De Captura... ";

_Array = RDRCFG(GetArray,"RDR_AreasDeCapturar");

{
    _Marcador = _x Select 0;
	_Raio = _x Select 1;
	_Ganho = _x Select 2;
	_Delay = _x Select 3;
	[_Marcador,_Raio,_Ganho,_Delay] Spawn RDR_fnc_CriarAreas;
	Diag_Log Format[":: Area Criada: %1 | Pos: %2 ::",_Marcador,(GetMarkerPos _Marcador)];
	Sleep 0.06;
} ForEach _Array;
