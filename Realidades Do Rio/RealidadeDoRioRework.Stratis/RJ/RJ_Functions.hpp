/*

    Author: RobérioJR
	|07/08/18|

*/

class RJ_Scripts {
	tag = "RJ";

	class Functions {
	    file = "RJ\Fnc";
		class ENumeral {};
		class StrParaArray {};
		class PuloDoGato {};
		class KeyHandler {};
		class Marcador {};
		class Icons {};
		class AnimSync {};
		class say3D {};
		class SalvarProfile {};
		class AutoSave {};
		class ArrayDosItems {};
		class Limpeza {};
		class Notificar {};
		class TrancarVeiculo {};
		class MenuInicial {};
		class SafeZones {};
		class NameTags {};
		class ClimaDinamico {};
		class Cor {};
		class InventarioAberto {};
	};
	
	class Actions {
		file = "RJ\Sistemas\Actions";
		class AoRespawnar {};
		class AoPegarItem {};
	};
	
	class Loadout {
		file = "RJ\Sistemas\Loadout";
		class LimparJogador {};
		class SpawnarJogador {};
		class LoadoutInicial {};
		class PegarLoadoutDoCorpo {};
	};
	
	class Economia {
		file = "RJ\Sistemas\Economia";
		class RecGrana {};
		class AdcSubGrana {};
		class Pagamento {};
	};
	
	class Lojas {
		file = "RJ\Sistemas\Lojas";
		class MenuArmas {};
		class ComprarArma {};
		class MudancaNoLBArmas {};
		class VenderArma {};
		class MenuVeiculos {};
		class ComprarVeiculo {};
		class MudancaNoLBVeiculos {};
	};
	
	class Mortes {
		file = "RJ\Sistemas\Mortes";
		class RecMorte {};
		class Mortes {};
		class AdcSubMorte {};
	};
};

#include "Sistemas\CHVD\CfgFunctions.hpp"
#include "Sistemas\Admin\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM