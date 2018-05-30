#include "..\..\script_macros.hpp" 
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
			["RAP e HIPHOP", [4], "#USER:MusicaRAP", -5, [["expression", ""]], "1", "1"],
			["REMIX", [5], "#USER:MusicaREMIX", -5, [["expression", ""]], "1", "1"],
			["FUNK", [5], "#USER:MusicaFUNK", -5, [["expression", ""]], "1", "1"],
			["DESLIGAR RADIO", [7],  "", -5, [["expression", format[_executar,"PARAR.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
	];
};

/* Radio De Doadores */
if (FETCH_CONST(life_donorlevel) >=1) then {
    radiorj =
	[
		["Rádio CDD By:RJ",true],
			["Radio Normal", [4], "#USER:RadioD", -5, [["expression", ""]], "1", "1"],
			["Caixa De Som", [5], "#USER:MusicaTD", -5, [["expression", ""]], "1", "1"],
		    ["DESLIGAR RADIO", [7],  "", -5, [["expression", format[_executar,"PARAR.sqf"]]], "1", "1"],
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
		["FUNK", [5], "#USER:MusicaFUNK", -5, [["expression", ""]], "1", "1"],
	["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
 ];
 
    /* Caixa De Som - 3D */
 MusicaTD =
 [
     ["HIPHOP - SOM",true],
	 	["Hungria Insonia", [2],  "", -5, [["expression", format[_executar,"SAYinsonia.sqf"]]], "1", "1"],
	    ["Faixa De Gaza", [2],  "", -5, [["expression", format[_executar,"SAYGaza.sqf"]]], "1", "1"],		
        ["Chatuba Heathens", [2],  "", -5, [["expression", format[_executar,"SAYChatuba.sqf"]]], "1", "1"],
		//["4", [5],  "", -5, [["expression", format[_executar,"ungod.sqf"]]], "1", "1"],
		//["5", [6],  "", -5, [["expression", format[_executar,"cargod.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	        ["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
 ];

    /* Gêneros Musicais Da Radio */
  
MusicaRAP =             
[
	["HIPHOP e RAP",true],
        ["Hungria Insonia", [2],  "", -5, [["expression", format[_executar,"insonia.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
        //["3", [4],  "", -5, [["expression", format[_executar,"god.sqf"]]], "1", "1"],
		//["4", [5],  "", -5, [["expression", format[_executar,"ungod.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

MusicaREMIX =             
[
	["REMIX",true],
        ["Chatuba Heathens", [2],  "", -5, [["expression", format[_executar,"Chatuba.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
        //["3", [4],  "", -5, [["expression", format[_executar,"god.sqf"]]], "1", "1"],
		//["4", [5],  "", -5, [["expression", format[_executar,"ungod.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

MusicaFUNK =             
[
	["FUNK",true],
        ["Faixa De Gaza", [2],  "", -5, [["expression", format[_executar,"Gaza.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
        //["3", [4],  "", -5, [["expression", format[_executar,"god.sqf"]]], "1", "1"],
		//["4", [5],  "", -5, [["expression", format[_executar,"ungod.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:radiorj";