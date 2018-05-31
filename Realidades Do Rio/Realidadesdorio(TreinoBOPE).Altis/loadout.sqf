switch (playerSide) do {
    case west: 
	{
	    [] execVM "config\loadouts\bope.sqf";
	};
	case east: 
	{
		[] execVM "config\loadouts\bandido.sqf";
	};
	case independent: 
	{
		[] execVM "config\loadouts\bandido2.sqf";
	};
};