/*

    Author: RobérioJR

*/
Private ['_TempVar','_Arma','_Pentes','_Uniforme','_Colete','_Mochila','_N'];

_TempVar = [] spawn RDR_fnc_LimpaRDRogador;
waitUntil {scriptDone _TempVar};

_Arma = ArmaInicial Select 0;
_Pentes = ArmaInicial Select 1;

Switch (PlayerSide) Do {
    Case West:
	{
	    _Uniforme = UniformesPadroes select 0;
        _Colete = ColetesPadroes select 0;
        _Mochila = MochilasPadroes select 0;
	};
	Case East:
	{
	    _Uniforme = UniformesPadroes select 1;
        _Colete = ColetesPadroes select 1;
        _Mochila = MochilasPadroes select 1;
	};
	Case Independent:
	{
	    _Uniforme = UniformesPadroes select 2;
        _Colete = ColetesPadroes select 2;
        _Mochila = MochilasPadroes select 2;
    };
};
 /* Adicionar Uniforme */
player forceAddUniform _Uniforme;
 /* Adicionar Colete */
player addVest _Colete;
 /* Adicionar Mochila */
player addBackpack _Mochila;
 /* Adicionar Arma */
[player, _Arma, _Pentes] call BIS_fnc_addWeapon;
 /* Adicionar Items */
{
    _N = 0;
    While {_N < (_x select 1)} Do {
	    _N = _N + 1;
        Player AddItem (_x Select 0);
	};
} ForEach ItemsIniciais;

/* Items Basicos */
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles";

