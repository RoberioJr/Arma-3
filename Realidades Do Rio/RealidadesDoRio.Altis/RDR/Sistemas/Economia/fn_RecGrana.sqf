/*

    Author: RobérioJR

*/

WaitUntil {JogadorPronto};

ProfileNameSpace SetVariable ["RDR_DinheiroInicial",nil];
ProfileNameSpace SetVariable ["RDR_DinheiroInicial",DinheiroInicial];

With ProfileNamespace Do {
    If (IsNil "RDR_Dinheiro") Then {
	    RDR_Dinheiro = RDR_DinheiroInicial;
		SystemChat Format ['%1, Perfil Novo Detectado, Aplicando Variaveis No Perfil.',Name Player];
	};
};

RDR_Grana = ProfileNameSpace GetVariable "RDR_Dinheiro";

If (RDR_Grana isEqualTo DinheiroInicial) Then {
    [3] Call RDR_fnc_SalvarProfile;
};

If (RDR_Grana > DinheiroMaximo) Then {
    RDR_Grana = DinheiroMaximo;
};

[] Spawn RDR_fnc_Pagamento; //Inicia Loop De Pagamentos Periodicos

/*
if (typename ProfileNameSpace GetVariable "RDR_Dinheiro" != "SCALAR") then {
    RDR_Grana = DinheiroInicial;
	[3] Call RDR_fnc_SalvarProfile;
};*/
