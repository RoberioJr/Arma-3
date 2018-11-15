/*

    Author: RobérioJR
	|07/08/18|

*/

JogadorPronto = False;
WaitUntil {!isNull player && player == player};
WaitUntil {(!IsNil "CfgsProntas")};
WaitUntil {CfgsProntas};

[] ExecVM "RDR\Sistemas\SetupVariaveis.sqf";
[] ExecVM "RDR\Sistemas\SetupEVH.sqf";
[] ExecVM "RDR\Sistemas\BarraDeStatus\StatusBar.sqf";
[] ExecVM "RDR\Sistemas\Admin\loop.sqf";
[] ExecVM "RDR\Sistemas\R3F_LOG\init.sqf";

enableSentences false;
[] Spawn { WaitUntil {(!IsNil "CfgsProntas")}; Sleep 0.2; [] Spawn RDR_fnc_SpawnaRDRogador; };

//[] Spawn RDR_fnc_Icons;
[] Spawn RDR_fnc_AutoSave;
[] Spawn RDR_fnc_RecGrana;
[] Spawn RDR_fnc_RecMorte;
[] Spawn RDR_fnc_ArrayDosItems;
[] Spawn RDR_fnc_SafeZones;
[] Spawn RDR_fnc_Cor;

JogadorPronto = True;
