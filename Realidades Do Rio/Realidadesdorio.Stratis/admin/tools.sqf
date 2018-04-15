_pathtotools = "admin\tools\";
_pathtoweapon = "admin\armas\";
_pathtovehicles = "admin\veh\";
_pathtosoldier= "admin\spawn\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtosoldier+'%1"';


if ((getPlayerUID player) in ["76561198134612622", "76561198343381444", "76561198090180406"]) then { //all admins
	if ((getPlayerUID player) in ["76561198134612622", "76561198343381444", "76561198090180406"]) then { //Admins Go Here aswell
		adminmenu =
		[
			["RoberioJr Menu",true],
				["Ferramentas", [4], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Veiculos", [4], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
				["Armas", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["Spawn Groups", [5], "#USER:Soldier", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
} else {
adminmenu =
[
	["",true],
		//["Toggle Debug", [2], "", -5, [["expression", format[_execdebug,"playerstats.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];};
ToolsMenu =
[
	["Ferramentas",true],
        ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["Teleport To Me", [3],  "", -5, [["expression", format[_EXECscript1,"tptome.sqf"]]], "1", "1"],		
        ["AtvGodMode", [4],  "", -5, [["expression", format[_EXECscript1,"god.sqf"]]], "1", "1"],
		["RemGodMode", [5],  "", -5, [["expression", format[_EXECscript1,"ungod.sqf"]]], "1", "1"],
		["Car God Mode", [6],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Self", [7],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		["Heal Player(s)", [8],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Apagar Veiculo", [9],  "", -5, [["expression", format[_EXECscript1,"delete.sqf"]]], "1", "1"],
		["Reparar Veiculo", [10],  "", -5, [["expression", format[_EXECscript1,"repair.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["Armas",true],
	//Add Weapons Here Gave some examples :D
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["MK 200", [3],  "", -5, [["expression", format[_EXECscript3,"mk200.sqf"]]], "1", "1"],
		["LRR", [4],  "", -5, [["expression", format[_EXECscript3,"lrr.sqf"]]], "1", "1"],
		["EBR", [5],  "", -5, [["expression", format[_EXECscript3,"ebr.sqf"]]], "1", "1"],
		["GM6", [6],  "", -5, [["expression", format[_EXECscript3,"gm6.sqf"]]], "1", "1"],
		["P07", [7],  "", -5, [["expression", format[_EXECscript3,"phgun.sqf"]]], "1", "1"],
		
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 = 
[
	["Armas 2",true],
	//Add Weapons Here Gave another page because it could get a little confusing :P
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Veiculos",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Hunter Armado", [3],  "", -5, [["expression", format[_EXECscript5,"hunter.sqf"]]], "1", "1"],
		["Offroad HMG .50", [4],  "", -5, [["expression", format[_EXECscript5,"offroad.sqf"]]], "1", "1"],
		["Hunter BOPE", [5],  "", -5, [["expression", format[_EXECscript5,"hunterbope.sqf"]]], "1", "1"],
		["Caveirao", [5],  "", -5, [["expression", format[_EXECscript5,"caveirao.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Prox Pag", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
			["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu2 = 
[
	["Veiculos 2",true],
		["MH9 HummingBird", [2],  "", -5, [["expression", format[_EXECscript5,"mh9.sqf"]]], "1", "1"],
		["HatchBack", [3],  "", -5, [["expression", format[_EXECscript5,"hatchback.sqf"]]], "1", "1"],
		["Disco Voador", [4],  "", -5, [["expression", format[_EXECscript5,"disco.sqf"]]], "1", "1"],
		["Sair", [13], "", -3, [["expression", ""]], "1", "1"]
];
Soldier = 
[
	["Spawner", true],
		["Select Spawn Position (OpFor)", [2],  "", -5, [["expression", format[_EXECscript6,"east.sqf"]]], "1", "1"],
		["Delete Previous Spawn Area (OpFor)", [3],  "", -5, [["expression", format[_EXECscript6,"deleteop.sqf"]]], "1", "1"],
		["Spawn(OpFor)", [4],  "", -5, [["expression", format[_EXECscript6,"eastsp.sqf"]]], "1", "1"],
		["Select Spawn Position (BluFor)", [5],  "", -5, [["expression", format[_EXECscript6,"west.sqf"]]], "1", "1"],
		["Delete Previous Spawn Area (BluFor)", [6],  "", -5, [["expression", format[_EXECscript6,"deletebl.sqf"]]], "1", "1"],
		["Spawn(BluFor)", [7],  "", -5, [["expression", format[_EXECscript6,"westsp.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
		
showCommandingMenu "#USER:adminmenu";