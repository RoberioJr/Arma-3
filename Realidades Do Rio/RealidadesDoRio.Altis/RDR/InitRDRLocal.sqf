/*

    Author: RobérioJR
	|07/08/18|

*/

WaitUntil {!isNull player && player == player};
WaitUntil {(!IsNil "CfgsProntas")};
WaitUntil {CfgsProntas};

[] ExecVM "RDR\Sistemas\SetupVariaveis.sqf";
[] ExecVM "RDR\Sistemas\SetupEVH.sqf";
[] ExecVM "RDR\Sistemas\BarraDeStatus\StatusBar.sqf";
[] ExecVM "RDR\Sistemas\Admin\loop.sqf";

[] Spawn { WaitUntil {(!IsNil "CfgsProntas")}; Sleep 0.2; [] Spawn RDR_fnc_SpawnarJogador; };

enableSentences false;
player enableFatigue false;

//[] Spawn RDR_fnc_Icons;
[] Spawn RDR_fnc_AutoSave; 
//[] Spawn RDR_fnc_RecMorte; //ProfileNameSpace
[] Spawn RDR_fnc_ArrayDosItems;
//[] Spawn RDR_fnc_SafeZones; //Causa Bug No Sistema De Revive FAR
[] Spawn RDR_fnc_Cor;
[] Spawn RDR_fnc_Pagamento; //Inicia Loop De Pagamentos Periodicos
[] Spawn RDR_fnc_escInterrupt;

RDR_Side = Switch (PlayerSide) Do {
    case West: { "BOPE" };
	case East: { "BAND" };
	case Independent: { "BAND" };
	case Civilian: { "CIVIL" };
};

[] Spawn {
    for "_i" from 0 to 1 step 0 do {
        waitUntil {(!isNull (findDisplay 49)) && {(!isNull (findDisplay 602))}};
        (findDisplay 49) closeDisplay 2; // ESC 
        (findDisplay 602) closeDisplay 2; // Inv
		Hint "Pare De Tentar Abrir O Inventário e O ESC Ao Mesmo Tempo!!";
    };
};

JogadorPronto = True;
