// MadeBY: Marvinn

private _playerSide = playerSide;

[RocinhaAlta, //Nome do Objeto
"Conquistar Rocinha Alta", //Titulo da Ação
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", //Ícone usado
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", //Ícone usado no progresso
"player distance RocinhaAlta < 5", //Condição usada para ser aparecido
"player distance RocinhaAlta < 5", //Condição usada para ser aparecido no progresso
{},
{},
{RocinhaAlta setFlagSide _playerSide;},
{hint "Você interrompeu a conquista"},
[],
12,//Duração
0,
false, // Remover a ação quando estiver completada (True or False)
true //Mostrar enquanto estiver inconsciente
] remoteExec ["BIS_fnc_holdActionAdd", [0,-2] select isDedicated, true]; //Isso permite o script rodar no servidor dedicado	
