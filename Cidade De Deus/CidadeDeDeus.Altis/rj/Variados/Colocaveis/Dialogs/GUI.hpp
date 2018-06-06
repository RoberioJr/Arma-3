class rj_GUI_BarrierGUI 
{
idd = 1705;
style = 32;
name = "rj_GUI_BarrierGUI";
movingEnable = 0;
onload = "[] spawn rj_fnc_BarrierGUI";

class controlsbackground 
    {
        class rj_GUI_BarrierBack: IGUIBack
        {
            idc = -1;
            x = 0 * GUI_GRID_W + GUI_GRID_X;
            y = 0 * GUI_GRID_H + GUI_GRID_Y;
            w = 40 * GUI_GRID_W;
            h = 25 * GUI_GRID_H;
            colorBackground[] = {0,0,0,0.4};
        };
    };
    
class controls 
    {

        class rj_GUI_BarrierTitle: RscText
        {
            idc = -1;
            text = "CDD | Menu De Objetos"; //--- ToDo: Localize;
            x = 0 * GUI_GRID_W + GUI_GRID_X;
            y = -1 * GUI_GRID_H + GUI_GRID_Y;
            w = 40 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorBackground[] = {1,0.475,0,1};
        };
        class rj_GUI_BarrierX: RscButtonMenuCancel
        {
            text = "X"; //--- ToDo: Localize;
            x = 38.5 * GUI_GRID_W + GUI_GRID_X;
            y = -1 * GUI_GRID_H + GUI_GRID_Y;
            w = 1.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Fechar Menu"; //--- ToDo: Localize;
            action = "(finddisplay 1705) closedisplay 0";
        };
        class rj_GUI_Barrierlistbox: RscListbox
        {
            idc = 2686;
            x = 2 * GUI_GRID_W + GUI_GRID_X;
            y = 2 * GUI_GRID_H + GUI_GRID_Y;
            w = 18 * GUI_GRID_W;
            h = 21 * GUI_GRID_H;
            tooltip = "Selecione O Objeto Que Quiser Colocar"; //--- ToDo: Localize;
        };
        class rj_GUI_Barrierspawn: RscButton
        {
            idc = 1600;
            text = "Colocar O Objeto"; //--- ToDo: Localize;
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 4 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Colocar O Objeto Selecionado"; //--- ToDo: Localize;
            action = "[lbtext[2686,(lbCurSel 2686)]] call rj_fnc_spawnbarrier";
        };
        class rj_GUI_BarrierCleanup: RscButton
        {
            idc = 1601;
            text = "Remover Objetos Selecionados"; //--- ToDo: Localize;
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Remover Todos Os Objetos Selecionados"; //--- ToDo: Localize;
            action = "[lbtext[2686,(lbCurSel 2686)],1] call rj_fnc_cleanupbarrier";
        };
        class rj_GUI_BarrierCleanupButton: RscButton
        {
            idc = 1602;
            text = "Remover Todos Os Objetos (Em Um Raio De 10m)"; //--- ToDo: Localize;
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 12 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Remover Todos Os Objetos Perto De Você"; //--- ToDo: Localize;
            action = "[0,2] call rj_fnc_cleanupbarrier";
        };
    };
};