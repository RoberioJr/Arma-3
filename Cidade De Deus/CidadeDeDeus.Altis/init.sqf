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

 /* Init De Scripts RJ */
 [] execVM "rj\initRJ.sqf";

StartProgress = true;
