/*

    Author: RobérioJR

*/

/*
[] Spawn {
    While {True} Do {
	    WaitUntil {Alive Player};
		[3] Call RJ_fnc_SalvarProfile;
	};
};*/
[] Spawn { //Save De Dinheiro
    While {True} Do {
	    Sleep 220;
		WaitUntil {Alive Player};
		Sleep 3;
        [3] Call RJ_fnc_SalvarProfile;
		[4] Call RJ_fnc_SalvarProfile;
    };
};