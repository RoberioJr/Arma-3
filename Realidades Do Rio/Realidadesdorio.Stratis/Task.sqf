//Esperar pela tela de início
waitUntil { !isNull player };
waitUntil { uiSleep 2; (!isNull (findDisplay 46)) };

//Verificar se o addon do task ta ativado
if !(isClass (configFile >> "CfgPatches" >> "task_force_radio")) exitWith
{
	[] spawn
	{
		//Kick player after disaplying TFAR Not found warning.
		disableUserInput true;
		disableUserInput true;
		private _message = "TaskForceRadio não foi iniciado com o ArmA 3!\nRestarte o arma 3 com task force radio ativado";
		
		private _timer = ftfar_wait_for_action_time;
		while {_timer > 0} do
		{
			cutText [format["%1\n%2", _message, format["Você vai retornar ao lobby em %1 segundo/s.", _timer]], "BLACK FADED", 999];
			uiSleep 1;
			_timer = _timer - 1;
		};

		(findDisplay 46) closeDisplay 0;
		true
	};
};

ftfar_server_name = getText (missionConfigFile >> "ForceTFAR" >> "ftfar_server_name");
ftfar_server_ipaddress = getText (missionConfigFile >> "ForceTFAR" >> "ftfar_server_ipaddress");
ftfar_server_password = getText (missionConfigFile >> "ForceTFAR" >> "ftfar_server_password");
ftfar_wait_for_action_time = getNumber (missionConfigFile >> "ForceTFAR" >> "ftfar_wait_for_action_time");

TFS_fnc_ftfar_checkTeamSpeakServer =
{
	private _currentServerName = call TFAR_fnc_getTeamSpeakServerName;
	if (_currentServerName isEqualTo ftfar_server_name) exitWith { true };
	false
};

TFS_fnc_ftfar_getWrongServerString =
{
	if !(ftfar_server_password isEqualTo "") exitWith { format["Você não está no servidor do ts: %1!\nEntre no ts usando %2", ftfar_server_name, ftfar_server_ipaddress };
	format["Você não está no servidor do ts: %1!\nEntre no ts usando o ip: %2!", ftfar_server_name, ftfar_server_ipaddress];
};

TFS_fnc_ftfar_checkTeamSpeakChannel =
{
	private _currentChannelName = call TFAR_fnc_getTeamSpeakChannelName;
	if (_currentChannelName isEqualTo tf_radio_channel_name) exitWith { true };
	false
};

TFS_fnc_ftfar_getWrongChannelString =
{
	if !(tf_radio_channel_password isEqualTo "") exitWith { format["Voce esta no canal do Teamspeak errado\nEntre no canal %1", tf_radio_channel_name; };
	format["Você não está no canal do ts \nEntre no canal: %1!", tf_radio_channel_name];
};

FTFAR_waitForActionThread = nil;

//Start monitor loop.
while {true} do
{
	//If we're not already waiting for user to "do something", check server and channel!
	if (isNil "FTFAR_waitForActionThread") then
	{
		try
		{
			if !(call TFAR_fnc_isTeamSpeakPluginEnabled) throw ["Task Force Radio não está ativado no Teamspeak!\nVá nas configurações e ative o addon", TFAR_fnc_isTeamSpeakPluginEnabled];
			
			if !(call TFS_fnc_ftfar_checkTeamSpeakServer) throw [call TFS_fnc_ftfar_getWrongServerString, TFS_fnc_ftfar_checkTeamSpeakServer];

			if !(call TFS_fnc_ftfar_checkTeamSpeakChannel) throw [call TFS_fnc_ftfar_getWrongChannelString, TFS_fnc_ftfar_checkTeamSpeakChannel];
		}
		catch
		{
			FTFAR_waitForActionThread = _exception spawn
			{
				params [["_message", ""],["_checkFunction", ""]];
				disableUserInput true;
				disableUserInput true;
				private _timer = ftfar_wait_for_action_time;
				while {_timer > 0} do
				{
					cutText [format["%1\n%2", _message, format["Você tem %1 segundo/s.", _timer]], "BLACK FADED", 999];
					uiSleep 1;
					_timer = _timer - 1;
					if (call _checkFunction) exitWith {};
				};

				if ((call TFS_fnc_ftfar_checkTeamSpeakServer) || (call TFS_fnc_ftfar_checkTeamSpeakChannel)) exitWith
				{
					cutText ["", "BLACK IN", 2];
					disableUserInput false;
					disableUserInput false;
					FTFAR_waitForActionThread = nil;
				};

				(findDisplay 46) closeDisplay 0;
				true
			};
		};
	};

	uiSleep 0.01;
};
true