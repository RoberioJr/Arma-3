_pathtomusicas = "rj\RadioRJ\mscs\";
_EXECscript5 = 'player execVM "'+_pathtomusicas+'%1"';

	adminmenu =
	[
		["Rádio CDD",true],
			["RAP e HIPHOP", [4], "#USER:MusicaRAP", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
	];};
MusicaRAP =
[
	["HIPHOP e RAP",true],
        ["Hungria Insonia", [2],  "", -5, [["expression", format[_EXECscript1,"Hinsonia.sqf"]]], "1", "1"],
		//["2", [3],  "", -5, [["expression", format[_EXECscript1,"tptome.sqf"]]], "1", "1"],		
        //["3", [4],  "", -5, [["expression", format[_EXECscript1,"god.sqf"]]], "1", "1"],
		//["4", [5],  "", -5, [["expression", format[_EXECscript1,"ungod.sqf"]]], "1", "1"],
		//["5", [6],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		//["6", [7],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		//["7", [8],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		//["8", [9],  "", -5, [["expression", format[_EXECscript1,"delete.sqf"]]], "1", "1"],
		//["9", [10],  "", -5, [["expression", format[_EXECscript1,"repair.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";