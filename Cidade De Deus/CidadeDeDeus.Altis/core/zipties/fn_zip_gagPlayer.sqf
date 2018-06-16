/*
  File: fn_zip_gagPlayer.sqf
  Author: Wackbatt | 76561198071769386
  Desciption: Give's robbers the ability to gag the player they have captured.
  Notes: N/A
  Origin: Altisliferpg.com and armargplife.com
*/
if(player getVariable ["gagged",true]) then {
  hint "Você Pode Falar Agora.";
  5 enableChannel true;
  player setvariable ["gagged",false,true];
 } else {
  hint "Você Foi amordaçado Por alguem.";
  5 enableChannel false;
  player setvariable ["gagged",true,true];
};
