/*
    File: initServer.sqf
    Author:

    Description:
    Starts the initialization of the server.
*/
if (!(_this select 0)) exitWith {}; //Not server
[] call compile preprocessFileLineNumbers "\life_server\init.sqf";

  /* Configuração Do Sistema De Guincho Realista */
 _AtivarGuindoAvancado = "sim";
 
if (_AtivarGuindoAvancado == "sim" ) then { 
    diag_log "RJ: Ativando Sistema De Guincho Avançado...";
    [] execVM "rj\GuinchoAvancado\guincho.sqf";
} else {
 diag_log "RJ: Sistema De Guincho Avançado Está Desativado.";
};
