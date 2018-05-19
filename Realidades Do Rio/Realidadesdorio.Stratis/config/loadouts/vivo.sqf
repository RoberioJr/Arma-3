private "_rjposition","_vivo";


_vivo = profileNameSpace getVariable "vivo";
sleep 30;
if (_vivo isEqualTo 1) then {forceRespawn player;};
while (true) do {
    if (player alive) then {
        profileNameSpace setVariable ["vivo",1];
		profileNameSpace setVariable ["rjposition",getPos player];	
    };
	if (player !alive) then {
	    profileNameSpace setVariable ["vivo",0];
		waitUntil (alive player);
		sleep 90;
		waitUntil (vehicle player isEqualTo player);
	};
sleep 1.5;
};