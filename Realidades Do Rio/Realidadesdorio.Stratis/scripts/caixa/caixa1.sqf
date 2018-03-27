/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa1.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Caixa.
 //Caixa A Ser Spawnada.
  _caixa1 = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa1";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa1;
    clearMagazineCargoGlobal _caixa1;
    clearWeaponCargoGlobal _caixa1;
    clearBackpackCargoGlobal _caixa1;
  };
  hint "Você Spawnou Uma Caixa. Não Abuse Desse Poder!!";
  