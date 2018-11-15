/*

    Author: RobérioJR

	Uso:
	[QUANTIDADE,NUM] Call RDR_fnc_AdcSubGrana;
	BOOL: 1 = Adicionar | 0 = Remover

*/

Params ['_Valor','_Tipo'];

Switch (_Tipo) Do
{
    Case 0:
	{
        RDR_Grana = RDR_Grana - _Valor;
	    If (RDR_Grana < 0) Then { RDR_Grana = 0; };
	};
	Case 1:
	{
	    RDR_Grana = RDR_Grana + _Valor;
		If (RDR_Grana > DinheiroMaximo) Then { RDR_Grana = DinheiroMaximo; };
	};
};

[3] Call RDR_fnc_SalvarProfile;