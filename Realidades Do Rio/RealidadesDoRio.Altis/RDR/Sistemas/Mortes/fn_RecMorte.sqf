/*

    Author: RobérioJR

*/

WaitUntil {JogadorPronto};

With ProfileNamespace Do {
    If (IsNil "RDR_Mortes") Then {
	    RDR_Mortes = 0;
	};
};

RDR_Mortes = ProfileNameSpace GetVariable "RDR_Mortes";

If (RDR_Mortes isEqualTo 0) Then {
    [4] Call RDR_fnc_SalvarProfile;
};
