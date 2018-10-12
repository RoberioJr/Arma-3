/*

    Author: RobérioJR
  
*/

WaitUntil {JogadorPronto};

ProfileNameSpace SetVariable ["RJ_DinheiroInicial",nil];
ProfileNameSpace SetVariable ["RJ_DinheiroInicial",DinheiroInicial];

With ProfileNamespace Do {
    If (IsNil "RJ_Dinheiro") Then {
	    RJ_Dinheiro = RJ_DinheiroInicial;
		SystemChat Format ['%1, Perfil Novo Detectado, Aplicando Variaveis No Perfil.',Name Player];
	};
};

RJ_Grana = ProfileNameSpace GetVariable "RJ_Dinheiro";

If (RJ_Grana isEqualTo DinheiroInicial) Then {
    [3] Call RJ_fnc_SalvarProfile;
};

If (RJ_Grana > DinheiroMaximo) Then {
    RJ_Grana = DinheiroMaximo;
};

[] Spawn RJ_fnc_Pagamento; //Inicia Loop De Pagamentos Periodicos

/*
if (typename ProfileNameSpace GetVariable "RJ_Dinheiro" != "SCALAR") then {
    RJ_Grana = DinheiroInicial;
	[3] Call RJ_fnc_SalvarProfile;
};*/
