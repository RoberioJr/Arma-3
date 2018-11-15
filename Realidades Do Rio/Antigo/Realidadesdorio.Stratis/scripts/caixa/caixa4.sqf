/*

 By:RobérioJr
 Descr: Spawna Uma Caixa Vazia No Marcador
 Init Do OBJ: this addAction ["<t color='#FF0000'>CAIXA</t>", "[] execVM 'scripts\caixa\caixa4.sqf'", '(alive player) && player distance _target < 3'];

*/

 //Marcador Para Spawn Da Caixa.
 //Caixa A Ser Spawnada.
  _caixa4 = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixa4";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixa4;
    clearMagazineCargoGlobal _caixa4;
    clearWeaponCargoGlobal _caixa4;
    clearBackpackCargoGlobal _caixa4;
  };
  hint "Você Spawnou Uma Caixa. Não Abuse Desse Poder!!";
