/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

// Simple Shops
[] execVM "HG\Setup\fn_serverInitialization.sqf";

//Sistema De Whitelist By: RobérioJr
allowed = call compile preprocessFileLineNumbers "WhiteList.txt";
