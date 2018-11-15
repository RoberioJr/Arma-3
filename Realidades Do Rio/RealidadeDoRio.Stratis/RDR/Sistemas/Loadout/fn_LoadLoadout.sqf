/*

    Author: RobérioJR

*/

Private ['_loot'];

if (!Alive Player) ExitWith {};

 _loot = ProfileNameSpace GetVariable 'RJ_Loadout';
 player setUnitLoadout _loot;