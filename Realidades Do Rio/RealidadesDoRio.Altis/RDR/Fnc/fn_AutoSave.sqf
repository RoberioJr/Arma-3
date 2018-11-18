/*

    Author: RobérioJR

*/

/*
[] Spawn {
    While {True} Do {
	    WaitUntil {Alive Player};
		[3] Call RDR_fnc_SalvarProfile;
	};
};*/
[] Spawn { //Save De Dinheiro
    While {True} Do {
	    Sleep 350;
		WaitUntil {Alive Player};
		Sleep 3;
		[] Spawn RDR_fnc_Sincronizar;
        //[3] Call RDR_fnc_SalvarProfile;
		//[4] Call RDR_fnc_SalvarProfile;
    };
};