/*

    Author: RobérioJR
	PROJETO SENDO DESENVOLVIDO

*/

_vei = (vehicle player);
playSound "botao";
sleep 0.8;
cutText ["CAIXA DE SOM - DESLIGADA", "PLAIN"];
deleteVehicle (_vei getVariable ["tocando", objNull]);