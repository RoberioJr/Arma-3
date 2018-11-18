/*
	Author - Torndeco
	Description - Initializes extDB3
	Website - https://bitbucket.org/torndeco/extdb3/wiki/Home
*/

params["_database","_protocol","_custom",["_return",true,[true]]];

if(isNil {uiNamespace getVariable "extDB_SQL_CUSTOM_ID"}) then
{
	// extDB3 Version Check
	private _result = "extDB3" callExtension "9:VERSION";
	diag_log format ["extDB3: Versao: %1", _result];
	if(_result isEqualTo "") exitWith {diag_log "extDB3: Falha Ao Carregar A Extensao"; _return = false};
	if((parseNumber _result) < 1.026) exitWith {diag_log "Error: extDB3 version 1.026 or Higher Required"; _return = false};

	// extDB3 Connect to Database
	_result = parseSimpleArray ("extDB3" callExtension format["9:ADD_DATABASE:%1",_database]);
	if((_result select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Falha Ao Conectar Com o Banco De Dados: %1",_result]; _return = false};
	diag_log "extDB3: Conectado Com o Banco De Dados";

	// extDB3 Generate ID
	private _extDB_ID = str(round(random(9999)));
	extDB_SQL_CUSTOM_ID = _extDB_ID;
	diag_log format ["extDB3: ID Gerado: %1",_extDB_ID];
	
	// extDB3 Load Protocol
	_result = parseSimpleArray ("extDB3" callExtension format["9:ADD_DATABASE_PROTOCOL:%1:%2:%3:%4",_database,_protocol,_extDB_ID,_custom]);
	if((_result select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Erro Na Inicializacao Do Banco De Dados: %1",_result]; _return = false};

	diag_log "extDB3: Protocolo SQL Inicializado";

	// extDB3 Lock
	"extDB3" callExtension "9:LOCK";
	diag_log "extDB3: Trancado e Pronto!";
	
	// extDB3 Save ID
	uiNamespace setVariable ["extDB_SQL_CUSTOM_ID",_extDB_ID];
}
else
{
	diag_log "extDB3: Already Setup";
	extDB_SQL_CUSTOM_ID = uiNamespace getVariable "extDB_SQL_CUSTOM_ID";
};

_return;
