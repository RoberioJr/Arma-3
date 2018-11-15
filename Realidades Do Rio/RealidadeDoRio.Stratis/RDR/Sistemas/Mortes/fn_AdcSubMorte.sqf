/*

    Author: RobérioJR

	Uso:
	[NUM] remoteExecCall ["RJ_fnc_AdcSubMorte",JOGADOR];
	BOOL: 1 = Adicionar | 0 = Remover
 
*/

_Tipo = Param [0,0,[0]];

Switch (_Tipo) Do
{
    Case 0: 
	{
        RJ_Mortes = RJ_Mortes - 1;
		If (RJ_Mortes < 0) Then { RJ_Mortes = 0 };
	};
	Case 1: 
	{
	    RJ_Mortes = RJ_Mortes + 1;
		If (RJ_Mortes < 0) Then { RJ_Mortes = 0 };
	};
};

[4] Call RJ_fnc_SalvarProfile;