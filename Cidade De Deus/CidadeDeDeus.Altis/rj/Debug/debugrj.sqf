/*
    Author:RobérioJr
*/
if (!isnil "hotkey") then 
{
	(findDisplay 46) displayAddEventHandler ['KeyDown', 'if ((_this select 1) == 0x30) then	{call hotkey;}']; //F12 = 0x58 //B = 0x30
};
keyswitcher =
{
	switch (_this) do 
	{
		case 48: //F12 = 88 //B = 48
		{
		    [] spawn
			{
			    if (isNil "debugmonitor") then
				{
					debugmonitor = true;
				} else {
				  debugmonitor = !debugmonitor;
				  hintSilent format ["ON/OFF B"];
				};

				while {debugmonitor} do 
				{	
					//-- Configs --//
					  _fome = round (life_hunger);
					  _sede = round (life_thirst);
					  _vida = round ((1 - (damage player)) * 100);
						//--Congigurações terminadas--//	
						
						hintSilent parseText format [
						"<t size='1' align='center' color='#FF0303'>Fome: </t><t size='1' align='center'>%1&#37;</t><br/>"+
						"<t size='1' align='center' color='#A52424'>Sede: </t><t size='1' align='center'>%2&#37;</t><br/>"+
						"<t size='1' align='center' color='#12C7FD'>Saude: </t>" + "<t size='1' align='center'>%3</t><br/>"+
						"<t underline='true' shadow='1' align='center' size='1'><br/>ESCONDER (B)</t>",
						

						_fome, //1
						_sede, //2
						_vida //3
						];

					sleep 1;
				};
			};
		};	
	};
};
waituntil {!isnull (finddisplay 46)};
hotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this select 1 call keyswitcher; false;"];