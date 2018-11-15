/*
    
	Author: RobérioJR
	
*/
params["_value","_mode","_uid","_val"];

_mode = _value select 0;
_uid = _value select 1;
_val = _value select 2;

    private _query = 
	[
		format["UPDATE players SET dinheiro = '%1' WHERE PID = '%2'",_val,_uid],
	    format["UPDATE players SET bancoacc = '%1' WHERE PID = '%2'",_val,_uid],
		format["UPDATE players SET bope_gear = '%1' WHERE PID = '%2'",_val,_uid],
		format["UPDATE players SET band_gear = '%1' WHERE PID = '%2'",_val,_uid],
		format["UPDATE players SET band_position = '%1' WHERE PID = '%2'",_val,_uid]
	] select _mode;
	
	[1,_query] call HG_fnc_asyncCall;
};	

true;
	