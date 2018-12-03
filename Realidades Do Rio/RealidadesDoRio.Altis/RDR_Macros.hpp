/*

    Author: RobérioJR

*/

//Config Macros
#define RDRCFG(TYPE,SETTING) TYPE(missionConfigFile >> "RDR_Config" >> SETTING)
#define RDRCFGARMAS(TYPE,SETTING1,SETTING2) TYPE(missionConfigFile >> "RDR_CfgArmas" >> SETTING1 >> SETTING2)
#define RDRCFGVEICULOS(TYPE,SETTING1,SETTING2) TYPE(missionConfigFile >> "RDR_CfgVeiculos" >> SETTING1 >> SETTING2)
