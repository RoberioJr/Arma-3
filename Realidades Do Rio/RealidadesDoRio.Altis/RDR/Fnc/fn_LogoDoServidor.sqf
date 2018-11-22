/*

    Author: RobérioJR

*/

[] spawn {
    disableSerialization;
    waitUntil { uiSleep 1; !(isNull(findDisplay 46)); };
	
    (["LogoDoServidor"] call BIS_fnc_rscLayer) cutrsc ["LogoDoServidor","plain"];
    _display = uiNamespace getVariable "Logo_Servidor";
	
    if !(typeName _display isEqualTo "DISPLAY") exitWith { systemChat"Logo Do Servidor Não Foi Carregada..."; };
    waitUntil { uiSleep 1; !(isNull _display) };
	
    _imageHolder = _display displayCtrl 1200;
    _imageHolder ctrlSetText "Texturas\logo.paa";
};
