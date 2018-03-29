/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/


////////////////////////////////////////////
// WhiteList Para BOPE                    //
// By: RobérioJr                          //
// Last Update by RobérioJr on 16-03-2018 //
////////////////////////////////////////////

// Colocar Abaixo Os SteamUID Dos Jogadores Autorizados a Jogar De BOPE

_whitelist = [
"76561198134612622", //RobérioJr
"76561198343381444", //Marques
"76561198090180406" //Marvinn
];


/* DESATIVADO TEMPORARIAMENTE */
/*
SLOTS_RJ = {
	//["Arma3 UID", Variavel Do Slot] call SLOT_RESERVADO;
	["COLOCAR UID", VAR NAME DO SLOT] call SLOT_RESERVADO;
};
*/

    /* NÃO EDITAR ABAIXO. */

	

/* WHITELIST */
client_firstSpawn = true;

if(playerSide == west) then
{
	if(!((getPlayerUID player) in _whitelist)) then
	{
		hint "Você Não Faz Parte Do BOPE!";
		titleFadeOut 9999;
		titleText [format["Você Não Pode Jogar De BOPE!"],"PLAIN",0];
		[] spawn{
			sleep 10;
			endMission "Escolha Outra Equipe";
		}
	};
};

/* PERMISSÃO PARA ABRIR PORTAS DO BOPE */
if (playerSide == west) then
{
    setVariable ["copLevel",1,true];
};


/* SLOTS RESERVADOS */
/* DESATIVADO TEMPORARIAMENTE */
/*
SLOT_RESERVADO = {
	[_this select 0, _this select 1] spawn {
		params ["_uidd","_slot"];
		//hint format ["%1			%2",_uidd,_slot];	
		waitUntil {!isNull player || player == player};
		if (_slot == player) then {
			if ((getPlayerUID player) == _uidd) then {
				hint format ["Bem Vindo %1 Ao Seu Slot Reservado ---- %2",name player, getPlayerUID player];
			} else {
				//titleText ["", "BLACK OUT"];
				//sleep 5;
				//disableUserInput true;
				for "_sec" from 10 to 1 step -1 do {
					_kick = format ["<t size='3' color='#ff0000'>Slot Reservado, Você Será Kikado Em %1 ---- %2</t>",_sec, name player];
					titleText [_kick, "BLACK IN", -1,true,true];
					playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F";
					sleep 1;	
				};
				//disableUserInput false;
				[((name player) + " TENTOU Entrar Em Um Slot Reservado!")] remoteExec ["RJ_SYSTEMCHAT"];
				diag_log format ["RJ_SLOTS>> %1 >> %2 ---- %3 TENTOU Entrar Em Um Slot Reservado...",time,getPlayerUID player,name player];
				sleep .1;
				//failMission "LOSER";
				["RES SLOT",false,.1] call BIS_fnc_endMission;
			};	
		};
	};
};
[] call SLOTS_RJ;

RJ_SYSTEMCHAT = {
	_syschat = _this select 0;
	systemChat _syschat;
};
*/

