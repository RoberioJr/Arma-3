while{true} do{
     sleep 900;
     _missao = ["missao1", "missao2", "missao3", "missao4", "missao5"] call BIS_fnc_selectRandom;
     _Spawn = GetMarkerPos _missao;
	 
	 //Marcador da Missão
     
	 _marcador = createMarker [format["%1_marcador",random 9999], _Spawn];
     _marcador setMarkerColorLocal "ColorRed";   //Define a Cor Do Marcador
     _marcador setMarkerTypeLocal "mil_dot";   //Ponto "Bolinha"
     _marcador setMarkerTextLocal "Caixa de Drogas";
	 
     //Cria a caixa e limpa ela
          
     _caixa = "Box_NATO_WpsSpecial_F" createVehicle _Spawn;
     clearItemCargoGlobal _caixa;
     clearMagazineCargoGlobal _caixa;
     clearWeaponCargoGlobal _caixa;
     clearBackpackCargoGlobal _caixa;
     _caixa setVariable ["R3F_LOG_disabled", true];
     
     //Adiciona as drogas e quantidades
     {
    _N = 0;
    While {_N < (_x select 1)} Do {
        _N = _N + 1;
        _caixa AddItem (_x Select 0); 
    };
       } ForEach [
                  ["UMI_Item_Weed_Bale",3],
                  ["UMI_Item_Cocaine_Brick", 2],
                  ["UMI_Item_Coke_Pile_01", 5]
    ];
    sleep 0.2;
    [] remoteExec [hint parseText format["<t color='#ffffff' size='2'>Carga De</t><t color='#c45454' size='2'>Drogas</t><br/><br/><img shadown='false' size='6' image='Texturas\missaodrogas.paa'/><br/><br/>Uma nova carga de drogas chegou! Faça a reevenda e consiga bastante dinheiro!"], 0];
    [_caixa,_marcador] Spawn {
        _caixa = _this select 0;
		_marcador = _this select 1;
        Sleep 898;
        DeleteVehicle  _caixa;
		deleteMarker _marcador;
    };
};