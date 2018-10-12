/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
//Uso: ["MENSAGEM"] remoteExec ["RJ_fnc_Notificar",0];
//Envia Uma Notificação Para Todos Os Jogadores Em Um Determinado Veiculo

params [
    ["_Mensagem","",[""]],
	["_Tipo",0,[0]]
];

if (_Mensagem isEqualTo "") exitWith {};

Switch (_Tipo) Do {
    Case 1: { titleText[_mensagem,"PLAIN"]; };
	Case 2: { SystemChat Format["%1",_mensagem]; };
};

