/*

    Author: RobérioJR
	|07/08/18|

*/

JogadorPronto = False;
WaitUntil {!isNull player && player == player};
WaitUntil {(!IsNil "CfgsProntas")};
WaitUntil {CfgsProntas};

[] ExecVM "RJ\Sistemas\SetupVariaveis.sqf";
[] ExecVM "RJ\Sistemas\SetupEVH.sqf";
[] ExecVM "RJ\Sistemas\BarraDeStatus\StatusBar.sqf";
[] ExecVM "RJ\Sistemas\Admin\loop.sqf";
[] ExecVM "RJ\Sistemas\R3F_LOG\init.sqf";

enableSentences false;
[] Spawn { WaitUntil {(!IsNil "CfgsProntas")}; Sleep 0.2; [] Spawn RJ_fnc_SpawnarJogador; };

//[] Spawn RJ_fnc_Icons;
[] Spawn RJ_fnc_AutoSave;
[] Spawn RJ_fnc_RecGrana;
[] Spawn RJ_fnc_RecMorte;
[] Spawn RJ_fnc_ArrayDosItems;
[] Spawn RJ_fnc_SafeZones;
[] Spawn RJ_fnc_Cor;

JogadorPronto = True;
