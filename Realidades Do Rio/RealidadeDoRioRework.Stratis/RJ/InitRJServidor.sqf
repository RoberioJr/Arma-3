/*

    Author: RobérioJR
	|07/08/18|

*/

if (isNil "drn_DynamicWeather_MainThread") then { drn_DynamicWeather_MainThread = [] Spawn RJ_fnc_ClimaDinamico;

  [] Spawn RJ_Fnc_MissaoDrogas;