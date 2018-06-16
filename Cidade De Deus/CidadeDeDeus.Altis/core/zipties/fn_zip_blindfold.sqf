/*
  File: fn_zip_blindFold.sqf
  Author: Wackbatt | 76561198071769386
  Desciption: Give's robbers the ability to blindfold the player they have captured.
  Notes: N/A
  Origin: Altisliferpg.com and armargplife.com
*/
if(player getVariable ["blindfolded",true]) then {
  cutText ["","BLACK IN"];
  hint "Você Foi Desencapuzado, Verifique Seu Anus...";
  player setvariable ["blindfolded",false,true];
 } else {
  cutText ["","BLACK OUT"];
  hint "Você Foi Encapuzado ( ͡° ͜ʖ ͡°).";
  player setvariable ["blindfolded",true,true];
};
