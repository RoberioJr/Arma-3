/*

    Author: RobérioJR
	["MENSAGEM"] RemoteExec ["RJM_fnc_NotificarADM",0]

*/

Params [
    ["_Mensagem","",[""]]
];

If (_Mensagem IsEqualTo "") ExitWith {};
If (IsNil '_Mensagem') ExitWith {};

//["Administrador", _Mensagem, [1, 1, 1, 1], [1, 1, 0, 1]] spawn RJM_fnc_createNotification;
["<img size='1' align='right' color='#ffffff' image='\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa'/> Administrador", _Mensagem, [1, 1, 1, 1], [0.12, 0.63, 0.94, 1]] spawn RJM_fnc_createNotification;