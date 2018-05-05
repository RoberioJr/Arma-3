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

 /* Init De Scripts Do RobérioJr */
 [] execVM "rj\initRJ.sqf";

StartProgress = true;
