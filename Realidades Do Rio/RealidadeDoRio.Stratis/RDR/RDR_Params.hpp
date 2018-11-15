
class AISkill
{
	title = "Dificuldade BOTs"; // Param name visible in the list
	values[] = {0,1,2}; // Values; must be integers; has to have the same number of elements as 'texts'
	texts[] = {"Recruit","Regular","Veteran"}; // Description of each selectable item
	default = 1; // Default value; must be listed in 'values' array, otherwise 0 is used
	// Default values that are not whole numbers do not work. Param will default to 0 (or 1 if defined)
};
class Hora
{
	title = "Hora";
	texts[] = {"Manha","Dia","Tarde","Noite"};
	values[] = {6,12,18,0};
	default = 12;
	function = "BIS_fnc_paramDaytime"; // (Optional) [[Functions_Library_(Arma_3)|Function]] [[call]]ed when player joins, selected value is passed as an argument
	isGlobal = 1; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
};
class Tempo
{
	title = "Tempo";
	values[] = {0,25,50,75,100};
	texts[] = {"Limpo","Nublado","Sereno","Chuva","Tempestade"};
	default = 25;
	function = "BIS_fnc_paramWeather";
};
/*
class CampoDeBatalha 
{
	title "Local Da Batalha";
	values[] = {0,1,2,3,4};
	texts[] = {"Limpo","Nublado","Sereno","Chuva","Tempestade"};
	default = 25;
	function = "fnc";
	//file = "script.sqf";
};
/*
class ViewDistance	
{
	title = "View distance (in metres)";
	values[] = {500,1000,2000,5000};
	// When 'texts' are missing, values will be displayed directly instead
	default = 1000;
		file = "setViewDistance.sqf"; // (Optional) Script [[call]]ed when player joins, selected value is passed as an argument
};
*/