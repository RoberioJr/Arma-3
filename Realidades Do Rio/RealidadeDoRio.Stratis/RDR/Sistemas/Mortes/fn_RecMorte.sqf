/*

    Author: RobérioJR
  
*/

WaitUntil {JogadorPronto};

With ProfileNamespace Do {
    If (IsNil "RJ_Mortes") Then {
	    RJ_Mortes = 0;
	};
};

RJ_Mortes = ProfileNameSpace GetVariable "RJ_Mortes";

If (RJ_Mortes isEqualTo 0) Then {
    [4] Call RJ_fnc_SalvarProfile;
};
