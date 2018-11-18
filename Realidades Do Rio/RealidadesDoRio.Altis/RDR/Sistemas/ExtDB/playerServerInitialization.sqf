#include "..\..\..\RDR_Macros.hpp"
/*

    Author: RobérioJR

*/

params["_player","_jip","_uid","_result","_cash"];

_uid = getPlayerUID _player;

if (!ExtDBNaoIniciado) Then { diag_log "ExtDB Não Foi Iniciado Corretamente!"; };

_query = format["SELECT CASE WHEN EXISTS (SELECT pid FROM players WHERE pid = '%1') THEN 'true' ELSE 'false' END",_uid];
	
	_exists = [2,_query,false] call RDR_fnc_asyncCall;
	_exists = _exists select 0;
	
	if(_exists) then
	{
	    _query = format["SELECT dinheiro, bancoacc, bope_gear, band_gear, bopelevel, bandidolevel, adminlevel, doadorlevel, alive, band_position FROM players WHERE pid = '%1'",_uid];
		_result = [2,_query,false] call RDR_fnc_asyncCall;
	} else {
	    _query = format["INSERT INTO players (pid, bope_gear, band_gear, bancoacc, nome) VALUES('%1','%2','%3','%4','%5')",_uid,[],[],(RDRCFG(getNumber,"RDR_DinheiroInicial")),name _player];

		[1,_query] call RDR_fnc_asyncCall;
		
		_result = 
		[
		    0,
		    RDRCFG(getNumber,"RDR_DinheiroInicial"),
			[],
			[],
			0,0,0,
			0,0,
			[]
		];
	};

_cash = _result select 0;
_bank = _result select 1;
_gear = [_result select 2,_result select 3];
_levelbope = _result select 4;
_levelband = _result select 5;
_leveladmin = _result select 6;
_leveldoador = _result select 7;
_jogadorvivo = _result select 8;
_bandidopos = _result select 9;

if((isNil "_cash") OR (isNil "_bank")) then
{
    _cash = 0;
    _bank = RDRCFG(getNumber,"RDR_DinheiroInicial");
};

_player setVariable ["RDR_Grana",_cash,true];
_player setVariable ["RDR_Banco",_bank,true];

 //if((count _gear) != 0) then
 //{
	[_gear,_cash,_bank,_levelbope,_levelband,_leveladmin,_leveldoador,_jogadorvivo,_bandidopos] remoteExecCall ["RDR_fnc_CarregarInfo",(owner _player),false];
 //};
  
  
  
  
  

