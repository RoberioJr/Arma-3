/*

    Author: RobérioJR
	|07/08/18|

*/

class RDR_Scripts {
	tag = "RDR";

	class Functions {
	    file = "RDR\Fnc";
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
		class AbrirPMenu {};
		class escInterrupt {};
		class MenuAnims {};
		class LockSync {};
		class CompilarBool {};
		class SimDesabilitar {};
		class Ocupado {};
		class LogoDoServidor { postInit = 1; };
	};
	
	class ExtDB {
		file = "RDR\Sistemas\ExtDB";
		class asyncCall {};
		class extDBInit {};
		class CarregarInfo {};
		class Sincronizar {};
		class PrepararEnvio {};
	};

	class Actions {
		file = "RDR\Sistemas\Actions";
		class AoRespawnar {};
		class AoPegarItem {};
		class AoMorrer {};
	};

	class Missoes {
		file = "RDR\Sistemas\Missoes";
		class IniciarMissoes {};
		class MissaoDrogas {};
		class MissaoArmas {};
		class MissaoCarroEsportivo {};
	};
	
	class Loadout {
		file = "RDR\Sistemas\Loadout";
		class LimparJogador {};
		class SpawnarJogador {};
		class LoadoutInicial {};
		class PegarLoadoutDoCorpo {};
		class LoadLoadout {};
	};

	class Economia {
		file = "RDR\Sistemas\Economia";
		class AdcSubGrana {};
		class Pagamento {};
		class RecompTerritorio {};
		class EnviarDinheiro {};
		class ReceberDinheiro {};
		class DroparGrana {};
		class PegarDinheiro {};
	};

	class Lojas {
		file = "RDR\Sistemas\Lojas";
		class MenuArmas {};
		class ComprarArma {};
		class MudancaNoLBArmas {};
		class VenderArma {};
		class MenuVeiculos {};
		class ComprarVeiculo {};
		class MudancaNoLBVeiculos {};
		class MenuArmasNovo {};
	};
	
	class Areas {
		file = "RDR\Sistemas\Areas";
		class IniciarAreas {};
		class CriarAreas {};
		class RecompensaAreas {};
		class AtualizarArea {};
	};

	class Mortes {
		file = "RDR\Sistemas\Mortes";
		class RecMorte {};
		//class Mortes {};
		class AdcSubMorte {};
	};
};

#include "Sistemas\CHVD\CfgFunctions.hpp"
#include "Sistemas\Admin\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM