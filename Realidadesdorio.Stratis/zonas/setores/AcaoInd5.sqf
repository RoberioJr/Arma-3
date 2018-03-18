// MadeBY: Marvinn

[ZonaInd5, //Nome do Objeto
"Conquistar a Zona Independente", //Titulo da Ação
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", //Ícone usado
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", //Ícone usado no progresso
"player distance ZonaInd5 < 5", //Condição usada para ser aparecido
"player distance ZonaInd5 < 5", //Condição usada para ser aparecido no progresso
{},
{},
{ZonaInd5 setDamage 1;},
{hint "Você interrompeu a conquista"},
[],
5,//Duração
0,
false, // Remover a ação quando estiver completada (True or False)
true //Mostrar enquanto estiver inconsciente
] remoteExec ["BIS_fnc_holdActionAdd", [0,-2] select isDedicated, true]; //Isso permite o script rodar no servidor dedicado	
