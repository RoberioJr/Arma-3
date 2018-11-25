#include "..\..\RDR_Macros.hpp"
/*

    Author: RobérioJR

*/

 RDR_SyncTrancado = true;
 Sleep (RDRCFG(getNumber,"RDR_TempoSincronizar"));
 RDR_SyncTrancado = false;