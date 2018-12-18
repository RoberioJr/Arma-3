/*

    Author: RobérioJR
	Edit: Marvinn

*/

_VarMarcador = _This Select 0;
_VarPonto = _This Select 1;
_Dono = _This Select 2;
_UltimoDono = "";
_cond = true;
_grupo = createGroup [civilian, false];

_CorDoMarcador = "";
_Time = "";
Switch (true) Do {
    Case (_Dono IsEqualTo "BOPE"):{ _CorDoMarcador = "colorblue"; _Time = "BOPE"; };
	Case (_Dono IsEqualTo "CV"):{ _CorDoMarcador = "colorred"; _Time = "Comando Vermelho"; };
	Case (_Dono IsEqualTo "PCC"):{ _CorDoMarcador = "colorgreen"; _Time = "Primeiro Comando Da Capital"; };
	Case (_Dono IsEqualTo "CIV"):{ _CorDoMarcador = "colorcivilian"; _Time = "Civil"; };
};

(Format["%1",_VarMarcador]) setMarkerColor _CorDoMarcador;
(Format["%1",_VarPonto]) setMarkerColor _CorDoMarcador;
(Format["%1",_VarPonto]) setMarkerText Format["Área Controlada Pelo %1",_Time];

SERVER SetVariable [_VarMarcador,_Dono];

/*
Sistema de patrulha de bots, by: Marvinn
*/

If (_Dono IsEqualto _UltimoDono) Then {_cond = false;};

Switch (_cond) Do {
    Case (_Dono IsEqualTo "BOPE"):{ 
	    deleteGroup _group;
		_grupo = createGroup [west, true];
	    {_grupo createUnit ["B_Soldier_F",_posMarcador,[],25,"NONE"]; } forEach [1,2,3,4];
		{
            [_x,_Dono] Spawn RDR_fnc_CarregarLoadoutDeBot;
        } ForEach (units(group _grupo));
	};
	Case (_Dono IsEqualTo "CV"):{ 
	    deleteGroup _group;
		_grupo = createGroup [west, true];
	    {_grupo createUnit ["O_G_Soldier_F",_posMarcador,[],25,"NONE"]; } forEach [1,2,3,4];
		{
            [_x,_Dono] Spawn RDR_fnc_CarregarLoadoutDeBot;
        } ForEach (units(group _grupo));	
	};
	Case (_Dono IsEqualTo "PCC"):{
	    deleteGroup _group;
		_grupo = createGroup [west, true];
	    {_grupo createUnit ["I_G_Soldier_F",_posMarcador,[],25,"NONE"]; } forEach [1,2,3,4];
		{
            [_x,_Dono] Spawn RDR_fnc_CarregarLoadoutDeBot;
        } ForEach (units(group _grupo));	
	};	
};