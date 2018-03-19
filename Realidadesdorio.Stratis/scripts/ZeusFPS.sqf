/*

    Mostra FPS Do Jogador No Painel ZEUS
 
*/



[] spawn {
   while {true} do {
        player setVariable ["DNI_PlayerFPS", floor diag_fps, true];
        sleep 0.1;
    };
};

waitUntil {
    private _hasCurators = (count allcurators) > 0;
    private _hasInitializedCurators = (count (call BIS_fnc_listCuratorPlayers)) > 0;
    private _curatorsInitialized = !_hasCurators || _hasInitializedCurators;
    ((time > 2) || _curatorsInitialized)
    };

if (player in (call bis_fnc_listcuratorplayers)) then {
	addMissionEventHandler ["Draw3D", {
		{
			_distance = position curatorCamera distance _x;
			//if zeus camera is farther than 1200 meters away from the targets the text will not display
			if (_distance < 1200) then {
				_playerFPS = _x getVariable ["DNI_PlayerFPS",50];
				if (_playerFPS  <20) then 
				{
					drawIcon3D
					[
						"",//Path to image displayed near text
						[1,0,0,0.7],//color of the text using RGBA
						position _x,//position of the text _x referring to the player in 'allPlayers'
						1,//Width
						2,//height from position, below
						0,//angle
						format["%1 FPS: %2", name _x, str _playerFPS],//text to be displayed
						0,//shadow on text, 0=none,1=shadow,2=outline
						0.05,//text size
						"PuristaMedium",//text font
						"center"//align text left, right, or center
					];
				}
				else
				{
					drawIcon3D
					[
						"",//Path to image displayed near text
						[1,1,1,0.3],//color of the text using RGBA
						position _x,//position of the text _x referring to the player in 'allPlayers'
						1,//Width
						2,//height from position, below
						0,//angle
						format["%1 FPS: %2", name _x, str _playerFPS],//text to be displayed
						0,//shadow on text, 0=none,1=shadow,2=outline
						0.03,//text size
						"PuristaMedium",//text font
						"center"//align text left, right, or center
					];
				};
			};
		} forEach allPlayers;
		
	}];
};
