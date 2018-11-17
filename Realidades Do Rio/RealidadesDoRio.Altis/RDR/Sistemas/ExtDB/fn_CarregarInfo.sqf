/*
    
	Author: RobérioJR
	
*/

params["_gear","_cash","_bank","_levelbope","_levelband","_leveladmin","_leveldoador"];

if((count _gear) != 0) then {
    {
        player removeWeaponGlobal _x;
    } forEach (weapons player);

    {
        player removeMagazine _x;
    } forEach (magazines player);

 removeUniform player;
 removeVest player;
 removeBackpackGlobal player;
 removeGoggles player;
 removeHeadGear player;

    {
	    player unassignItem _x;
	    player removeItem _x;
    } forEach (assignedItems player);

    if(!(hmd player isEqualTo "")) then 
    {
	    player unlinkItem (hmd player);
    };

   player setUnitLoadout [_gear,false];
};

RDR_Grana = _cash;
RDR_Banco = _bank;
RDR_BopeLevel = _levelbope;
RDR_BandLevel = _levelband;
RDR_AdminLevel = _leveladmin;
RDR_DoadorLevel = _leveldoador;

true;
