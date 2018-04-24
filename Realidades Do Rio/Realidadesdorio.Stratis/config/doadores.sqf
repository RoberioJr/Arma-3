////////////////////////////////////////////
// Sistema de Doadores                    //
// BY: Marvinn/RoberioJr                  //
////////////////////////////////////////////

//////////////////////////////////////////////////
//// Colocar Abaixo Os SteamUID Dos Doadores  ////
//////////////////////////////////////////////////

_Doadores = [
"76561198134612622",   //RobérioJr
"76561198343381444",   //Marques
"76561198090180406"   //Marvinn
];





























client_firstSpawn = true;

if((getPlayerUID player) in _Doadores) then
	{
        lojadoa addAction["<img image='HG\UI\Icons\money.paa' size='1.5'/><t color='#FF0000'>"+(localize "STR_HG_GEAR_SHOP")+"</t>",{_this call HG_fnc_dialogOnLoadGear},"HG_RoupaseArmas",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];
		lojadoa addAction["<img image='HG\UI\Icons\money.paa' size='1.5'/><t color='#FF0000'>"+(localize "STR_HG_VEHICLES_SHOP")+"</t>",{_this call HG_fnc_dialogOnLoadVehicles},"HG_DoadoresVeiculos",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];
	};