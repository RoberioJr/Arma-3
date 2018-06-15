#include "..\..\script_macros.hpp" 
#include "..\CFGs.sqf"
/*

    Author: RobérioJR

*/

_pathmusicas = "rj\RadioRJ\musicas\";
_executar = 'player execVM "'+_pathmusicas+'%1"';



waitUntil {alive player};

    /* Radio Normal */
	radiorj =
	[
		["Rádio CDD By:RJ",true],
			["RAP e HIPHOP", [2], "#USER:MusicaRAP", -5, [["expression", ""]], "1", "1"],
			["REMIX", [3], "#USER:MusicaREMIX", -5, [["expression", ""]], "1", "1"],
			["FUNK", [4], "#USER:MusicaFUNK", -5, [["expression", ""]], "1", "1"],
			["FORRÓ", [5], "#USER:MusicaFORRO", -5, [["expression", ""]], "1", "1"],
			["INTERNACIONAL", [6], "#USER:MusicaINTER", -5, [["expression", ""]], "1", "1"],
			["TESTE", [7], "", -5, [["expression", "[4] call life_fnc_radio"]], "1", "1"],
			["DESLIGAR RADIO", [8],  "", -5, [["expression", format[_executar,"PARAR.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
	];

/* Radio De Doadores */
if (FETCH_CONST(life_donorlevel) >=1 && {(driver (vehicle player)) isEqualTo player}) then {
    radiorj =
	[
		["Rádio CDD By:RJ",true],
			["Radio Normal", [4], "#USER:RadioD", -5, [["expression", ""]], "1", "1"],
			["Caixa De Som", [5], "#USER:MusicaTD", -5, [["expression", ""]], "1", "1"],
			["TESTE", [9], "", -5, [["expression", "[5] call life_fnc_radio3d"]], "1", "1"],
		    ["DESLIGAR RADIO", [6],  "", -5, [["expression", format[_executar,"PARAR.sqf"]]], "1", "1"],
			["DESLIGAR SOM", [7],  "", -5, [["expression", format[_executar,"PARARSAY.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
	];
};

 RadioD =
 [
	["Rádio CDD",true],
		["RAP e HIPHOP", [4], "#USER:MusicaRAP", -5, [["expression", ""]], "1", "1"],
		["REMIX", [5], "#USER:MusicaREMIX", -5, [["expression", ""]], "1", "1"],
		["FUNK", [6], "#USER:MusicaFUNK", -5, [["expression", ""]], "1", "1"],
		["FORRÓ", [7], "#USER:MusicaFORRO", -5, [["expression", ""]], "1", "1"],
		["INTERNACIONAL", [8], "#USER:MusicaINTER", -5, [["expression", ""]], "1", "1"],
	["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
 ];
 
    /* Caixa De Som - 3D */
 MusicaTD =
 [
     ["HIPHOP - SOM",true],
	 	[_nomeMusicaMenu1, [2],  "", -5, [["expression", format[_executar,"SAY1.sqf"]]], "1", "1"],
	    [_nomeMusicaMenu2, [3],  "", -5, [["expression", format[_executar,"SAY2.sqf"]]], "1", "1"],		
        [_nomeMusicaMenu3, [4],  "", -5, [["expression", format[_executar,"SAY3.sqf"]]], "1", "1"],
		[_nomeMusicaMenu4, [4],  "", -5, [["expression", format[_executar,"SAY4.sqf"]]], "1", "1"],
		[_nomeMusicaMenu5, [4],  "", -5, [["expression", format[_executar,"SAY5.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	        ["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
 ];

    /* Gêneros Musicais Da Radio */
  
MusicaRAP =             
[
	["HIPHOP e RAP",true],
        [_nomeMusicaMenu1, [2],  "", -5, [["expression", format[_executar,"musica1.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

MusicaREMIX =             
[
	["REMIX",true],
        [_nomeMusicaMenu2, [2],  "", -5, [["expression", format[_executar,"musica2.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

MusicaFUNK =             
[
	["FUNK",true],
        [_nomeMusicaMenu3, [2],  "", -5, [["expression", format[_executar,"musica3.sqf"]]], "1", "1"],
		[_nomeMusicaMenu5, [3],  "", -5, [["expression", format[_executar,"musica5.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

MusicaFORRO =
[
	["FORRÓ",true],
        [_nomeMusicaMenu4, [2],  "", -5, [["expression", format[_executar,"musica4.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

MusicaINTER = 
[
    ["INTERNACIONAL",true],
	    [_nomeMusicaMenu6, [2],  "", -5, [["expression", format[_executar,"musica6.sqf"]]], "1", "1"],
		    ["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:radiorj";

