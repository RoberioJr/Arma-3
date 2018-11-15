//Wait for main display to exist.
waitUntil { !isNull player };
waitUntil { uiSleep 2; (!isNull (findDisplay 46)) };

//Check if CfgPatches entry exists, if not client did not launch game with TFAR.
if !(isClass (configFile >> "CfgPatches" >> "task_force_radio")) exitWith
{
	[] spawn
	{
		//Kick player after disaplying TFAR Not found warning.
		disableUserInput true;
		disableUserInput true;
		private _message = "TaskForceRadio não foi inicializado com o Arma 3\nReniciar o jogo com o TaskForce ativado";
		
		private _timer = ftfar_wait_for_action_time;
		while {_timer > 0} do
		{
			cutText [format["%1\n%2", _message, format["Você retornará ao lobby em %1 segundos", _timer]], "BLACK FADED", 999];
			uiSleep 1;
			_timer = _timer - 1;
		};

		(findDisplay 46) closeDisplay 0;
		true
	};
};

//Custom TFAR Settings.
ftfar_server_name = getText (missionConfigFile >> "ForceTFAR" >> "ftfar_server_name");
ftfar_server_ipaddress = getText (missionConfigFile >> "ForceTFAR" >> "ftfar_server_ipaddress");
ftfar_server_password = getText (missionConfigFile >> "ForceTFAR" >> "ftfar_server_password");
ftfar_wait_for_action_time = getNumber (missionConfigFile >> "ForceTFAR" >> "ftfar_wait_for_action_time");

//Function to check current TeamSpeak server.
TFS_fnc_ftfar_checkTeamSpeakServer =
{
	private _currentServerName = call TFAR_fnc_getTeamSpeakServerName;
	if (_currentServerName isEqualTo ftfar_server_name) exitWith { true };
	false
};

//Function to retreive wrong TeamSpeak server message.
TFS_fnc_ftfar_getWrongServerString =
{
	if !(ftfar_server_password isEqualTo "") exitWith { format["Você não está no Teamspeak do servidor: %1!\Entre no servidor em %2!", ftfar_server_name, ftfar_server_ipaddress]; };
	format["Você não está no Teamspeak do servidor: %1!\nEntre no servidor em %2!", ftfar_server_name, ftfar_server_ipaddress];
};

//Function to check current TeamSpeak channel.
TFS_fnc_ftfar_checkTeamSpeakChannel =
{
	private _currentChannelName = call TFAR_fnc_getTeamSpeakChannelName;
	if (_currentChannelName isEqualTo tf_radio_channel_name) exitWith { true };
	false
};

//Function to retreive wrong TeamSpeak channel message.
TFS_fnc_ftfar_getWrongChannelString =
{
	if !(tf_radio_channel_password isEqualTo "") exitWith { format["Você está no canal do TS errado\nEntre no canal %1 reniciando seu plug-in", tf_radio_channel_name]; };
	format["Você está no canal errado\nEntre no canal %1!", tf_radio_channel_name];
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
			//Check if TS plugin is actually enabled.
			if !(call TFAR_fnc_isTeamSpeakPluginEnabled) throw ["Plug-in do TaskForce está desativado no TS\nFerramentas>Opções>Suplementos>TaskForce Desativado", TFAR_fnc_isTeamSpeakPluginEnabled];
			
			//Check if player is on in TeamSpeak server.
			if !(call TFS_fnc_ftfar_checkTeamSpeakServer) throw [call TFS_fnc_ftfar_getWrongServerString, TFS_fnc_ftfar_checkTeamSpeakServer];

			//Check if player is on in TeamSpeak channel.
			if !(call TFS_fnc_ftfar_checkTeamSpeakChannel) throw [call TFS_fnc_ftfar_getWrongChannelString, TFS_fnc_ftfar_checkTeamSpeakChannel];
		}
		catch
		{
			//Handle check action.
			FTFAR_waitForActionThread = _exception spawn
			{
				params [["_message", ""],["_checkFunction", ""]];
				disableUserInput true;
				disableUserInput true;
				private _timer = ftfar_wait_for_action_time;
				while {_timer > 0} do
				{
					cutText [format["%1\n%2", _message, format["Você tem %1 segundos.", _timer]], "BLACK FADED", 999];
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