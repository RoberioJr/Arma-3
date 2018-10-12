/*

    Author: RobérioJR
	|08/09/18|

*/

[] Spawn {
    Sleep 0.1;
    _ValorDoPagamento = (Pagamento Select 0);
    _Tempo = ((Pagamento Select 1) * 60);
    While {True} Do {
	    WaitUntil {Alive Player};
        Sleep _Tempo;
	    [_ValorDoPagamento,1] Call RJ_fnc_AdcSubGrana;
		SystemChat Format ['%1, Você Recebeu Um Pagamento De R$%2 Pelo Tempo Online!',Name Player,_ValorDoPagamento];
		SystemChat Format ['Proximo Pagamento Em: %1 Minutos...',(Pagamento Select 1)];
		If (RJ_Grana > DinheiroMaximo) Then {
            RJ_Grana = DinheiroMaximo;
        };
    };
	[3] Call RJ_fnc_SalvarProfile;
};