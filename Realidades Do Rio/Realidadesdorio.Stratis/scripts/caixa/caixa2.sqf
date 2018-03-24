/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa2.sqf'", '(alive player) && player distance _target < 3'];

*/

if (isserver) then {
 //Marcador Para Spawn Da Caixa.
 //Caixa A Ser Spawnada.
  _caixa2 = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa2";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa2;
    clearMagazineCargoGlobal _caixa2;
    clearWeaponCargoGlobal _caixa2;
    clearBackpackCargoGlobal _caixa2;
  };
  hint "Você Spawnou Uma Caixa. Não Abuse Desse Poder!!";
};