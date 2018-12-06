/*

    Author: RobérioJr

*/

_Area = _This Select 0;
_Ganho = _This Select 1;
_Delay = _This Select 2;

Sleep 0.5;

_Delay = _Delay * 60; //Transformar Em Minutos
_DonoDaArea = (SERVER GetVariable _Area);
_DonoAtual = _DonoDaArea;

_Side = Switch (true) Do {
    Case (_DonoDaArea IsEqualto "BOPE"): { West };
	Case (_DonoDaArea IsEqualto "CV"): { East };
	Case (_DonoDaArea IsEqualto "PCC"): { Independent };
	Case (_DonoDaArea IsEqualto "CIV"): { Civilian };
};


While {_DonoDaArea IsEqualTo _DonoAtual} Do {
    Sleep _Delay;
    _DonoAtual = (SERVER GetVariable _Area);
	Sleep 0.2;
	If !(_DonoDaArea IsEqualTo _DonoAtual) ExitWith {};
	[True,_Ganho,0] RemoteExecCall ["RDR_fnc_AdcSubGrana",_Side];
};
