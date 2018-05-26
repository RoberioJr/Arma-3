/*
   
    Author: RobérioJR
   
*/


Minutos = 900;
publicvariable "Minutos";
Minutosd = true;
publicvariable "Minutosd";

waitUntil {!isnil "Minutos"};
 
while {(Minutosd) && (Minutos > 0)} do {

		[{hintSilent parsetext format ["<br /><t align='center' color='#FF0000' size='1.3' font='TahomaB' >%1</t><br />",[((Minutos)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];},"BIS_fnc_spawn",TRUE,FALSE] spawn BIS_fnc_MP;
		
    Minutos = Minutos - 1;
    publicvariable "Minutos";
    sleep 1;
};
Minutos = 0;
true;

waituntil {(Minutosd) && (Minutos == 0)};


