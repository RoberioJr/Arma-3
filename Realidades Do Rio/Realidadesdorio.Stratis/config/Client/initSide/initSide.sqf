/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

waitUntil {alive player};
while {true} do {
    switch (playerSide) do 
    {
        case west: 
	    {
	    	[] execVM "config\Client\initSide\initBOPE.sqf";
        };
        case east: 
	    {
	    	[] execVM "config\Client\initSide\initBandido.sqf";
        };
		case independent:
		{
		    [] execVM "config\Client\initSide\initBandido.sqf";
		};
    };
	sleep 30;
};