/*

    Author: RobérioJR

	Uso:
	[BOOL,VAL,TIPO] Call RDR_fnc_AdcSubGrana;
	
	BOOL: True = Adicionar | False = Remover
	VAL: Valor A Ser Processado
	TIPO: Dinheiro = 0 | Banco = 1;

*/

//Params ['_Valor','_Tipo'];
Params ['_Modo','_Valor','_Tipo'];

If (_Modo) Then {
    Switch (_Tipo) Do {
	    Case 0: 
		{
		    RDR_Grana = RDR_Grana + _Valor;
		};
		Case 1:
		{
		    RDR_Banco = RDR_Banco + _Valor;
		};
	};
} Else { 
    Switch (_Tipo) Do {
	    Case 0: 
		{
		    RDR_Grana = RDR_Grana - _Valor;
		};
		Case 1:
		{
		    RDR_Banco = RDR_Banco - _Valor;
		};
	};
};

 If (RDR_Grana < 0) Then { RDR_Grana = 0; };
 If (RDR_Banco < 0) Then { RDR_Banco = 0; };
 If (RDR_Banco > DinheiroMaximo) Then { RDR_Banco = DinheiroMaximo; };

/*  MODO ANTIGO
Switch (_Modo) Do
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
}; */

//[3] Call RDR_fnc_SalvarProfile;