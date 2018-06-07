/*

    Author: RobérioJR

*/

#include "..\CFGs.sqf"
private ["_radio"];

/* Iniciando Script */
 diag_log "RJ: Radio Dos Veiculos - Ativado";
while {true} do
{
    waitUntil {alive player};
	if (typeOf vehicle player in _VeiculosComRadio) then {
	    if (vehicle player != player) then {
            _radio = player addaction [("<t color=""#2E9AFE"">" + ("RadioCDD") +"</t>"),"rj\RadioRJ\mscs.sqf","",5,false,true,"",""];
        };
	};
	waitUntil {vehicle player == player}; //Aguarda Até Que O Jogador Saida Do Veiculo
	playMusic ""; //Parar Musica
    player removeAction _radio; //Remove Ação Do Radio
	waitUntil {vehicle player != player}; //Aguardar O Jogador Entrar No Veiculo
};



