/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Load Briefing
};
[] execVM "KRON_Strings.sqf";
 
 /* Init De Scripts De 3º Parte */
  [] execVM "scripts\status_bar\init_statusBar.sqf";

 /* Init De Scripts Do RobérioJr */
 [] execVM "rj\initRJ.sqf";

StartProgress = true;
