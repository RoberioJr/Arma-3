/*

    Author: RobérioJR
	|12/10/18|

*/
ExtDBNaoIniciado = true;

if(isNil "extDB3_var_loaded") exitWith 
{
	diag_log "ExtDB Não Foi Inicializado Corretamente!";
	ExtDBNaoIniciado = false;
};
	
if(!([] call extDB3_var_loaded)) exitWith
{
	diag_log "ExtDB Não Foi Inicializado Corretamente!";
    ExtDBNaoIniciado = false;
};
	
private["_Protocol","_DataBase","_CustomINI","_ok"];
	
_Protocol = "SQL";
_DataBase = "RDR";
_CustomINI = "custom.ini";
_ok = [_DataBase,_Protocol,_CustomINI] call RDR_fnc_extDBInit;
	
if(!_ok) exitWith
{
    ExtDBNaoIniciado = false;
};
	
RDR_SAVING_PROTOCOL = _Protocol;

"RDR_CLIENT" addPublicVariableEventHandler {[(_this select 1)] call RDR_fnc_clientToServer;};

 /* Server Inicialization */
  [] execVM "RDR\InitRDRServidor.sqf";
	