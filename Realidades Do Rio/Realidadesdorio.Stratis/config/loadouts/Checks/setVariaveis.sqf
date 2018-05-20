private "_rjposition","_vivo";


//_vivo = profileNameSpace getVariable "vivo";
//if (_vivo isEqualTo 1) then {forceRespawn player;};
while (true) do {
    if (alive player) then {
        profileNameSpace setVariable ["vivo",1];
		profileNameSpace setVariable ["rjposition",getPos player];	
		saveProfileNamespace;
    };
	if (!alive player) then {
	    profileNameSpace setVariable ["vivo",0];
		saveProfileNamespace;
		waitUntil (alive player);
	};
sleep 1.5;
};