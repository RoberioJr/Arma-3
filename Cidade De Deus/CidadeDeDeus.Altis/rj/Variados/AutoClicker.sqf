ClicksPerSecond = 0; //Sets a value to the variable
lastlogging = 0; //Sets value to the last logging
clickingstarted = false; // Default value

(findDisplay 46) displayAddEventHandler ["MouseButtonDown",{
_mensagem = [
  "Desliga Esse AutoClicker Ai Viado...",
  "Cuidado Com Essa Porra Ai, Tu Vai Tomar BAN",
  "Rapaz, Se eu Fosse Você Eu Desligava Essa Parada Ai...",
  "Estaremos De Olho Na Sua Conta :), Qualquer Suspeita Chamamos Você Para Conversar...",
  "Estamos Detectando um AutoClicker, Toma Cuidado Ai Porque Se Pegar é BAN!"] call bis_fnc_SelectRandom
_this spawn {
ClicksPerSecond = ClicksPerSecond + 1; clickingstarted = true; //Ups the clicks per second
if(ClicksPerSecond < 0) then {ClicksPerSecond = 0;}; //Just to make sure the value doesn't go below 0
//hint format["Clicks per second: %1",ClicksPerSecond]; //Just a hint to demonstrate that it catches your clicks per second
uisleep 1; ClicksPerSecond = ClicksPerSecond - 1; // Reduces value after 1 second (helps getting clicks per second)
if(ClicksPerSecond >= 20 && clickingstarted) then { //If clicks per second is equal or above 20 it runs this
  clickingstarted = false;
  //hint format["Detec Detected (%1 c/s)",ClicksPerSecond];
  systemChat format ["%1 | Clicks:%2c/s",_mensagem, ClicksPerSecond];
  if((lastLogging + 20) < time) then { // if its been 20 seconds since last time it logged it, it will log it again
    lastLogging = time;  // resets the time before it logs it again
    systemChat "Qualquer Movimentação Suspeita Fará Com Que Você Seja Examinado Por Nossa Equipe."; //Replace this with a logging function or auto kick/ban
	//systemChat _mensagem; //Replace this with a logging function or auto kick/ban
  };
};
if(ClicksPerSecond < 0) then {ClicksPerSecond = 0;}; //Just to make sure the value doesn't go below 0
}}];