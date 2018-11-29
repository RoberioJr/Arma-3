/*

    Author: RobérioJR
	|12/10/18|

*/
if (!(_this select 0)) exitWith {}; //Não é O Servidor

ExtDBNaoIniciado = true;

[] call compile preprocessFileLineNumbers "\RDR_Fncs\init.sqf";

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

 /* Server Inicialization */
  [] execVM "RDR\InitRDRServidor.sqf";
	