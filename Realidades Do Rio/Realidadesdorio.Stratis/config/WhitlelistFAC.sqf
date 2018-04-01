/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
/ Feito por RoberioJr /
/ Adaptado por Marvinn /
*/

SLOTS_FAC = {
	/*["Arma3 UID", slot variable name] call SLOT_RESERVADO;*/
	["76561198090180406", fg58] call SLOT_RESERVADO; //ID do Marvinn e Slot do Líder
};

SLOT_RESERVADO = {
	[_this select 0, _this select 1] spawn {
		params ["_uidd","_slot"];
		//hint format ["%1			%2",_uidd,_slot];	
		waitUntil {!isNull player || player == player};
		if (_slot == player) then {
			if ((getPlayerUID player) == _uidd) then {
				hint format ["Bem Vindo Líder do //FACÇÃO SEM NOME//"];
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
[] call SLOTS_FAC;

RJ_SYSTEMCHAT = {
	_syschat = _this select 0;
	systemChat _syschat;
};
