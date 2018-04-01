_bopeSpawnMarkers = ["bopeSpawn_0", "bopeSpawn_1", "bopeSpawn_2", "bopeSpawn_3"] call BIS_fnc_selectRandom;

_bandidoSpawnMarkers = ["bandidoSpawn_0", "bandidoSpawn_1", "bandidoSpawn_2", "bandidoSpawn_3"] call BIS_fnc_selectRandom;

switch (side player) do
{
	case WEST: {
	player setPos (getMarkerPos _bopeSpawnMarkers);
	hint "Pronto!";
	};

	case EAST: {
	player setPos (getMarkerPos _bandidoSpawnMarkers);
	hint "Pronto!";
	};
};