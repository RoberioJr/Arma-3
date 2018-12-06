/*

    Author: RobérioJR

*/

_VarMarcador = _This Select 0;
_VarPonto = _This Select 1;
_Dono = _This Select 2;

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