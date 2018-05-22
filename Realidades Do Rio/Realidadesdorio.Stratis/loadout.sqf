

waitUntil (alive player);

switch (playerSide) do {
    case west: 
	{
		//_act = player addaction [("<t color=""#9400D3"">" + ("Pegar Loadout Inicial") +"</t>"),"config\loadouts\bope.sqf","",5,false,true,"",""];
		//_rem = player addaction [("<t color=""#9400D3"">" + ("Manter Loadout") +"</t>"),(player removeAction _act; player removeAction _rem;),"",5,false,true,"",""];
	    [] execVM "config\loadouts\bope.sqf";
	};
	case east: 
	{
		//_act = player addaction [("<t color=""#9400D3"">" + ("Pegar Loadout Inicial") +"</t>"),"config\loadouts\bandido.sqf","",5,false,true,"",""];
	   // _rem = player addaction [("<t color=""#9400D3"">" + ("Manter Loadout") +"</t>"),(player removeAction _act; player removeAction _rem;),"",5,false,true,"",""];
		[] execVM "config\loadouts\bandido.sqf";
	};
	case independent: 
	{
		//_act = player addaction [("<t color=""#9400D3"">" + ("Pegar Loadout Inicial") +"</t>"),"config\loadouts\bandido2.sqf","",5,false,true,"",""];
	    //_rem = player addaction [("<t color=""#9400D3"">" + ("Manter Loadout") +"</t>"),(player removeAction _act; player removeAction _rem;),"",5,false,true,"",""];
		[] execVM "config\loadouts\bandido2.sqf";
	};
};