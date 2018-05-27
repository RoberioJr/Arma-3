/*

    Author: RobérioJR

*/

_pathmusicas = "rj\RadioRJ\musicas\";
_executar = 'player execVM "'+_pathmusicas+'%1"';

	radiorj =
	[
		["Rádio CDD",true],
			["RAP e HIPHOP", [4], "#USER:MusicaRAP", -5, [["expression", ""]], "1", "1"],
			["DESLIGAR RADIO", [7],  "", -5, [["expression", format[_executar,"PARAR.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
	];};
MusicaRAP =             
[
	["HIPHOP e RAP",true],
        ["Hungria Insonia", [2],  "", -5, [["expression", format[_executar,"Hinsonia.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_executar,"tptome.sqf"]]], "1", "1"],		
        //["3", [4],  "", -5, [["expression", format[_executar,"god.sqf"]]], "1", "1"],
		//["4", [5],  "", -5, [["expression", format[_executar,"ungod.sqf"]]], "1", "1"],
		//["5", [6],  "", -5, [["expression", format[_executar,"cargod.sqf"]]], "1", "1"],
		//["6", [7],  "", -5, [["expression", format[_executar,"heal.sqf"]]], "1", "1"],
		//["7", [8],  "", -5, [["expression", format[_executar,"healp.sqf"]]], "1", "1"],
		//["8", [9],  "", -5, [["expression", format[_executar,"delete.sqf"]]], "1", "1"],
		//["9", [10],  "", -5, [["expression", format[_executar,"repair.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:radiorj";