/*

Restrição De Área
 Altura E Bordas Do Mapa

*/

_maxTime = 20; // 20 seconds max default
_maxHeight = 1500; // 1500m height max default

/*	------------------------------------------------------------------------------------------
	DO NOT EDIT BELOW HERE!
	------------------------------------------------------------------------------------------	*/

if (isServer) then
{
	_mapSizeSquare = getNumber (configfile >> "CfgWorlds" >> worldName >> "mapSize");
	_mapSizeEllipse = sqrt ((_mapSizeSquare * _mapSizeSquare) + (_mapSizeSquare * _mapSizeSquare));
	_mapCenterPos = [(_mapSizeSquare / 2),(_mapSizeSquare / 2)];

	_mkrInBounds = createMarker ["playableArea",_mapCenterPos];
	_mkrInBounds setMarkerColor "ColorBlue";
	_mkrInBounds setMarkerShape "ELLIPSE";
	_mkrInBounds setMarkerBrush "BORDER";
	_mkrInBounds setMarkerAlpha 1;
	_mkrInBounds setMarkerSize [(_mapSizeEllipse / 2),(_mapSizeEllipse / 2)];
};

if (hasInterface) then
{
	[_maxTime,_maxHeight] spawn
	{
		params ["_maxTime","_maxHeight"];
		respawnDialogActive = false;
		_inLoop = false;
		_loopForever = true;
		while {_loopForever} do
		{
			waitUntil {uiSleep 0.1; alive player && !playerSpawning && !respawnDialogActive};
			if (alive player) then
			{
				_outOfBounds = !(player inArea "playableArea");
				_outOfBoundsAltitude = (getPos player select 2 > _maxHeight);
				if (((_outOfBounds) || (_outOfBoundsAltitude)) && (!_inLoop)) then
				{
					_inLoop = true;
					_inLoopTimer = _maxTime;
					_secondsText = "";
					while {(_outOfBounds) || (_outOfBoundsAltitude)} do
					{
						if (_inLoopTimer > 1) then
						{
							_secondsText = "Segundos";
						}
						else
						{
							_secondsText = "Segundo";
						};
						_oobText = format ["Você Está Fora Dos Limites Do Mapa!\n\nVocê Tem %1 %2 para voltar Para a àrea de jogo  e abaixo de %3M de Altitude!",_inLoopTimer,_secondsText,_maxHeight];
						[_oobText, 1] call mf_notify_client;
						playSound "Alarm";
						uiSleep 1;
						_inLoopTimer = _inLoopTimer - 1;
						if (_inLoopTimer isEqualTo 0) exitWith
						{
							vehicle player setDamage 1;
							player setDamage 1;
						};
						_outOfBounds = !(player inArea "playableArea");
						_outOfBoundsAltitude = (getPos player select 2 > _maxHeight);
					};
					if (alive player) then
					{
						_oobText = "Você voltou para a área Jogavel!";
						[_oobText, 10] call mf_notify_client;
					}
					else
					{
						_oobText = "Você foi para fora dos limites do mapa e foi morto!";
						[_oobText, 10] call mf_notify_client;
					};
					_inLoop = false;
					_outOfBounds = false;
					_outOfBoundsAltitude = false;
				};
			};
			uiSleep 1;
		};
	};
};
