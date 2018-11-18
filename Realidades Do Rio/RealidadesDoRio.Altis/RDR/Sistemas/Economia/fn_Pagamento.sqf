#include "..\..\..\RDR_Macros.hpp"
/*

    Author: RobérioJR
	|08/09/18|

*/

_GranaMax = RDRCFG(getNumber,"RDR_DinheiroMaximo");
_ArrayPagamento = RDRCFG(getArray,"RDR_Pagamento");

 Sleep 0.1;
 //_ValorDoPagamento = (Pagamento Select 0);
 _ValorDoPagamento = (_ArrayPagamento Select 0);
 //_Tempo = ((Pagamento Select 1) * 60);
 _Tempo = ((_ArrayPagamento Select 1) * 60);
 While {True} Do {
	WaitUntil {Alive Player};
    Sleep _Tempo;
	[True,_ValorDoPagamento,1] Call RDR_fnc_AdcSubGrana;
    SystemChat Format ['%1, Você Recebeu Um Pagamento De R$%2 Pelo Tempo Online!',Name Player,_ValorDoPagamento];
	SystemChat Format ['Proximo Pagamento Em: %1 Minutos...',(_ArrayPagamento Select 1)];
	//SystemChat Format ['Proximo Pagamento Em: %1 Minutos...',(Pagamento Select 1)];
	If (RDR_Grana > _GranaMax) Then {
        RDR_Grana = _GranaMax;
    };
 };
	//[3] Call RDR_fnc_SalvarProfile;
