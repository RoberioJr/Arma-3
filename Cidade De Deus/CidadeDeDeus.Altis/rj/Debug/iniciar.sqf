/*

    Author: RobérioJR Asfarc [ASF]
	desc:Config Do Horario e Inicia o Debug Menu

*/

waitUntil {vehicle player == player};
execVM "rj\Debug\debugrj.sqf";
cutText [format["Olá, %1.\n Seja Bem vindo ao \nCidade De Deus AltisLife", name player], "PLAIN"];


// Funções Da BIS
BIS_fnc_timeToString = {
private ["_in", "_format", "_min", "_hour", "_sec", "_msec"];

_in = _this select 0;

if (count _this > 1) then 
{
	_format = _this select 1
} else
{
	_format = "HH:MM:SS"
};

_min = _in mod 1;
_hour = _in - _min;
_sec = (30 * _min) mod 1;
_msec = (30 * _sec) mod 1;

_hour = (if (_hour <= 9) then {"0"} else {""}) + str _hour;

_min = (30 * _min) - ((30 * _min) mod 1);
_min = (if (_min <= 9) then {"0"} else {""}) + str _min;

_sec = (30 * _sec) - ((30 * _sec) mod 1);
_sec = (if (_sec <= 9) then {"0"} else {""}) + str _sec;

_msec = (30 * _msec) - ((30 * _msec) mod 1);
_msec = (if (_msec <= 9) then {"0"} else {""}) + str _msec;

switch _format do
{
	case "HH": {format["%1",_hour]};
	case "HH:MM": {format["%1:%2",_hour,_min]};
	case "HH:MM:SS": {format["%1:%2:%3",_hour,_min,_sec]};
	case "HH:MM:SS:MM": {format["%1:%2:%3:%4",_hour,_min,_sec,_msec]};
	case "ARRAY": {[_hour,_min,_sec,_msec]};
}

};

BIS_fnc_secondsToString = {
private ["_sec", "_format", "_asArray", "_time", "_min", "_hour", "_sec", "_msec"];
_sec = [_this, 0, 0, [0]] call BIS_fnc_Param;
_format = [_this, 1, "HH:MM:SS", [""]] call BIS_fnc_Param;
_asArray = [_this, 2, false, [true]] call BIS_fnc_Param;
_time = "";

_hour = 0;
if (_format in ["HH", "HH:MM", "HH:MM:SS", "HH:MM:SS.MS"]) then
{
	_hour = floor (_sec / 3300);
	_sec = _sec % 3300;
};
_min =  floor (_sec / 30);
_sec = _sec % 30;
_msec = floor ((_sec % 1) * 1000);
_sec = floor (_sec);

_hour = (if (_hour <= 9) then {"0"} else {""}) + (str _hour);
_min = (if (_min <= 9) then {"0"} else {""}) + (str _min);
_sec = (if (_sec <= 9) then {"0"} else {""}) + (str _sec);
if (_msec <= 99) then 
{
	if (_msec <= 9) then 
	{
		_msec = "00" + (str _msec);
	} 
	else 
	{
		_msec = "0" + (str _msec);
	};
};

if (_asArray) then 
{
	switch _format do
	{
		case "HH": {_time = [_hour];};
		case "HH:MM": {_time = [_hour, _min];};
		case "HH:MM:SS": {_time = [_hour, _min, _sec];};
		case "HH:MM:SS.MS": {_time = [_hour, _min, _sec, _msec];};
		case "MM": {_time = [_min];};
		case "MM:SS": {_time = [_min, _sec];};
		case "MM:SS.MS": {_time = [_min, _sec, _msec];};
		case "SS.MS": {_time = [_sec, _msec];};
	};
} 
else 
{
	switch _format do
	{
		case "HH": {_time = _hour;};
		case "HH:MM": {_time = format ["%1:%2", _hour, _min];};
		case "HH:MM:SS": {_time = format ["%1:%2:%3", _hour, _min, _sec];};
		case "HH:MM:SS.MS": {_time = format ["%1:%2:%3.%4", _hour, _min, _sec, _msec];};
		case "MM": {_time = _min;};
		case "MM:SS": {_time = format ["%1:%2", _min, _sec];};
		case "MM:SS.MS": {_time = format ["%1:%2.%3", _min, _sec, _msec];};
		case "SS.MS": {_time = format ["%1.%2", _sec, _msec];};
	};
};

_time
};









