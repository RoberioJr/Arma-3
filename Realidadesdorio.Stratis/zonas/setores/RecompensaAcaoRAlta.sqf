// MadeBY: Marvinn

_flagSide1 = flagSide RocinhaAlta;
_flagSide2 = flagSide RocinhaBaixa;
_flagSide3 = flagSide 

if (_flagSide1 == east && playerSide == east) then{
     [5000,0] call HG_fnc_addOrSubCash;
	 sleep 600.0;
};

if (_flagSide2 == east && playerSide == east) then{
     [3000,0] call HG_fnc_addOrSubCash;
	 sleep 600.0;
};

if (_flagSide3 == east && playerSide == east) then{
     [4000,0] call HG_fnc_addOrSubCash;
	 sleep 600.0;
};
