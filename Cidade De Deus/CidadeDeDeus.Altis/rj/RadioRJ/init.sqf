/*

    Author: RobérioJR

*/

private ["_radio","_veiculos"];

/* Lista De Veiculos Que Possuirão Radio */
_veiculos = [
    "C_Hatchback_01_sport_F",  //HatchBack Sport
    "C_Hatchback_01_F",        //HatchBack
	"C_SUV_01_F",              //SUV
	"C_Truck_02_covered_F",    //Zamack
	"I_Truck_02_transport_F",  //Zamack Transp
	"C_Van_01_transport_F",    //Chaninha sem Baú
	"C_Van_01_box_F",          //Chaninha Baú
	"C_Offroad_02_unarmed_F",  //OffRoad
	"B_G_Offroad_01_F",        //OffRoad Rebelde
	"C_Offroad_01_F,",         //OffRoad Normal 
	"B_Truck_01_box_F",        //Hemmt Box
	"C_Van_02_vehicle_F",      //Van De Carga
	"C_Van_02_medevac_F"       //Ambulancia
];

/* Iniciando Loop */
 diag_log "RJ: Radio Dos Veiculos - Ativado";
while {true} do
{
    waitUntil {alive player};
	if (typeOf vehicle player in _veiculos) then {
	    if (vehicle player != player) then {
            _radio = player addaction [("<t color=""#2E9AFE"">" + ("RadioCDD") +"</t>"),"rj\RadioRJ\mscs.sqf","",5,false,true,"",""];
        };
	};
	waitUntil {vehicle player == player}; //Aguarda Até Que O Jogador Saida Do Veiculo
	    playMusic ""; //Para Musica
		player removeAction _radio; //Remove Ação Do Radio
	    waitUntil {vehicle player != player};
	//sleep 0.5;
};



