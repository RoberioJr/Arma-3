/*

    Author: RobérioJR
	|07/08/18|

*/

if (isNil "drn_DynamicWeather_MainThread") then { drn_DynamicWeather_MainThread = [] Spawn RDR_fnc_ClimaDinamico; };

  [] Spawn RDR_Fnc_MissaoDrogas;
  
addMissionEventHandler ["HandleDisconnect",{_this call RDR_fnc_AoDesconectar; false;}];