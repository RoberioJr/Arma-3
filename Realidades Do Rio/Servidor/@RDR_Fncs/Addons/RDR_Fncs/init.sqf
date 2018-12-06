#include "RDR_Macros.hpp"
/*
    
    Author: RobérioJR

*/


_timeStamp = diag_tickTime;
diag_log "--------------------------------------------------------------------------------------------------";
diag_log "-------------------------------------- Realidades Do Rio -----------------------------------------";
diag_log "----------------------------------- By: RobérioJr && Marvinn -------------------------------------";
diag_log "--------------------------------------------------------------------------------------------------";

[] call compile preprocessFileLineNumbers "\RDR_Fncs\functions.sqf";

diag_log "--------------------------------------------------------------------------------------------------";
diag_log format ["           Fim Da Inicialização Do Realidades Do Rio :: Tempo Total %1 Segundos ",(diag_tickTime) - _timeStamp];
diag_log "--------------------------------------------------------------------------------------------------";
