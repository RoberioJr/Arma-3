/*

    Author: RobérioJR

*/

Private ['_TempArray','_TempVar'];

WaitUntil {(!IsNil "RJ_ArmasCfg")};
_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RJ_ArmasCfg;

RJ_Armas = _TempArray;

_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RJ_PentesCfg;

RJ_Pentes = _TempArray;

_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RJ_AcessoriosCfg;

RJ_Acessorios = _TempArray;

_TempArray = [];
{
    _TempVar = (_x Select 0);
	_TempArray pushBack _TempVar;
} ForEach RJ_VeiculosCFG;

RJ_Veiculos = _TempArray;



