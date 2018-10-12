/*

    Author: RobérioJR

	Uso:
	[QUANTIDADE,NUM] Call RJ_fnc_AdcSubGrana;
	BOOL: 1 = Adicionar | 0 = Remover
 
*/

Params ['_Valor','_Tipo'];

Switch (_Tipo) Do
{
    Case 0: 
	{
        RJ_Grana = RJ_Grana - _Valor;
	    If (RJ_Grana < 0) Then { RJ_Grana = 0; };
	};
	Case 1: 
	{
	    RJ_Grana = RJ_Grana + _Valor;
		If (RJ_Grana > DinheiroMaximo) Then { RJ_Grana = DinheiroMaximo; };
	};
};

[3] Call RJ_fnc_SalvarProfile;