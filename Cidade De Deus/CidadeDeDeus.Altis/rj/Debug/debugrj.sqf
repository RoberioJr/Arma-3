/*
    Author:RobérioJr
*/
if (!isnil "hotkey") then 
{
	(findDisplay 46) displayAddEventHandler ['KeyDown', 'if ((_this select 1) == 0x58) then	{call hotkey;}'];
};
keyswitcher =
{
	switch (_this) do 
	{
		case 88: //F12 
		{
		    [] spawn
			{
			     if (isNil "debugmonitor") then
				{
					debugmonitor = true;
				} else {
				  debugmonitor = !debugmonitor;
				  hintSilent format ["ON/OFF F12"];
				};

				while {debugmonitor} do 
				{	
					//--Tempo do Servidor e Configs--//
						_stime = servertime;
					  _HoursTillRestart = 6;
					  _serverRestart = _HoursTillRestart - 1;
					  _hours = (_stime/60/60);
					  _hours = toArray (str _hours);
					  _hours resize 1;
					  _hours = toString _hours;
					  _hours = compile _hours;
					  _hours = call  _hours;
					  _minutes = round(_stime/60);
					  _minutes = _minutes - (_hours*60);
					  _hours = _serverRestart - _hours;
					  _minutes = 60 - _minutes;
					  _nome = (name player);
					  _fome = [life_hunger] call life_fnc_numberText;
					  _sede = [life_thirst] call life_fnc_numberText;
					  _fps = format["%1", diag_fps];
					  _vida = ((damage player)* 100);   
						//--Congigurações terminadas--//	
						
						hintSilent parseText format [
						"<img size='9' shadow='0' image='textures\logo.paa' /><br />" +
						"<t size='1' font='AmorSerifPro' align='center' color='#00CC00'><br/>Nome : </t><t size='1.1' font='AmorSerifPro' align='Center' color='#FFFFFF'>%1</t><br/>"+
						"<t size='1' font='AmorSerifPro' align='center' color='#FF0303'>Fome : </t><t size='1' font='AmorSerifPro' align='center'>%2&#37;</t><br/>"+
						"<t size='1' font='AmorSerifPro' align='center' color='#A52424'>Sede : </t><t size='1' font='AmorSerifPro' align='center'>%6&#37;</t><br/>"+
						"<t size='1' font='AmorSerifPro' align='center' color='#12C7FD'>Saude : </t>" + "<t size='1' font='AmorSerifPro' align='center'>%7</t><br/>"+
						"<t size='1' font='AmorSerifPro' align='center' color='#FFBF00'>FPS : </t><t size='1' font='AmorSerifPro' align='center'>%5</t><br/>"+
						"<t size='1' font='AmorSerifPro' align='center' color='#FF4800'>Restart : </t><t size='1' font='AmorSerifPro' align='center'>%3 h %4 min</t><br/>"+
						"<t underline='true' shadow='1' align='center' size='1'><br/>ESCONDER (F12)</t>",
						

					    _nome, //1
						_fome, //2
						_hours, //3
						_minutes, //4
						_fps, //5
						_sede, //6
						_vida //7
						];

					sleep 1;
				};
			};
		};	
	};
};
waituntil {!isnull (finddisplay 46)};
hotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this select 1 call keyswitcher; false;"];