/*
    Inicialização De Scripts De SafeZone...
*/
if (LIFE_SETTINGS(getNumber,"rj_ativar_safezones") isEqualTo 1) then {
diag_log "RJ:SafeZones - Ativado";

    
// ExecVM "rj\SafeZones\Zonas\.sqf"

} else {
   diag_log "RJ:SafeZones - Desativado";
};
