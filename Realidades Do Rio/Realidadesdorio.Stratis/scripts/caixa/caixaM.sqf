/*

 By:RobérioJr and Marvinn
 Descr: Spawna Uma Caixa Com Drogas
 
*/

 //Caixa A Ser Spawnada.
  _caixaM = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "caixaM";
  if((getNumber(missionConfigFile >> "CfgClient" >> "clearInventory")) isEqualTo 1) then
  {
	clearItemCargoGlobal _caixaM;
    clearMagazineCargoGlobal _caixaM;
    clearWeaponCargoGlobal _caixaM;
    clearBackpackCargoGlobal _caixaM;
  };
  _caixaM addItemCargoGlobal ["UMI_Item_Weed_Bale", 4];
  _caixaM addItemCargoGlobal ["UMI_Item_Cocaine_Brick", 2];
  _caixaM addItemCargoGlobal ["UMI_Item_Coke_Pile_01", 4];
  
  