_tsNomeCanal = call TFAR_fnc_getTeamSpeakChannelName;
_tsNomeServidor = call TFAR_fnc_getTeamSpeakServerName;
_tsPluginAtivado = call TFAR_fnc_isTeamSpeakPluginEnabled;

while{true} do {
          if !(_tsNomeServidor isEqualTo "Realidades do Rio") then{                                                      //Checa se ta no Servidor certo
			     cutText format["Você está no Servidor errado do TS3 para usar o TaskForceRadio",], "BLACK FADED", 999];
	      }else{ 
		       if !(_tsNomeCanal isEqualTo "TaskForceRadio") then{                                                      //Checa se ta no Canal certo
               cutText format["Você está na sala errada do TaskForceRadio no TS3",], "BLACK FADED", 999];
	      }else{
		       if !(_tsPluginAtivado) then{
			      cutText format["Plug-in do TaskForceRadio desativado",], "BLACK FADED", 999];
		  };
      };
   };
};