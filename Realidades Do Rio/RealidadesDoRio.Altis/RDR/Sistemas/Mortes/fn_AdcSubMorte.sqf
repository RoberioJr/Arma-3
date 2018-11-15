/*

    Author: RobérioJR

	Uso:
	[NUM] remoteExecCall ["RDR_fnc_AdcSubMorte",JOGADOR];
	BOOL: 1 = Adicionar | 0 = Remover

*/

_Tipo = Param [0,0,[0]];

Switch (_Tipo) Do
{
    Case 0:
	{
        RDR_Mortes = RDR_Mortes - 1;
		If (RDR_Mortes < 0) Then { RDR_Mortes = 0 };
	};
	Case 1:
	{
	    RDR_Mortes = RDR_Mortes + 1;
		If (RDR_Mortes < 0) Then { RDR_Mortes = 0 };
	};
};

[4] Call RDR_fnc_SalvarProfile;