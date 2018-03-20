params[ "_sector", "_owner" ];

if !( _owner isEqualTo sideUnknown ) then {
	[5000,0] remoteExec [ "HG_fnc_addOrSubCash", _owner ];
};
