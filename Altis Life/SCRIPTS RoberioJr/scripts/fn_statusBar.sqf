waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

"statusBar" cutRsc ["osefStatusBar","PLAIN"];

[] spawn {
	sleep 15;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_color=[1,1,1,1] ;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetTextColor _color ;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Policiais: %2 | Civis: %3 | Resgate: %4 | Dinheiro: %5 | Banco: %6 | Posição: %7 ", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText,mapGridPosition player, _counter,_modo];
	};
};