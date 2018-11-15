/*

    Author: RobérioJR
	|10/08/18|

*/

private ["_valid","_array"];
    _valid = ["0","1","2","3","4","5","6","7","8","9"];
    _array = [_this select 0] call RJ_fnc_StrParaArray;
    _return = true;

    {
        if (!(_x in _valid)) exitWith {
            _return = false;
        };
    } forEach _array;
    _return;
	
