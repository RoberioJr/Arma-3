/*

    Author: RobérioJR
	PROJETO SENDO DESENVOLVIDO

*/

_vei = (vehicle player);
playSound "botao";
cutText ["CAIXA DE SOM - DESLIGADA", "PLAIN"];
sleep 0.8;
deleteVehicle (_vei getVariable ["tocando", objNull]);