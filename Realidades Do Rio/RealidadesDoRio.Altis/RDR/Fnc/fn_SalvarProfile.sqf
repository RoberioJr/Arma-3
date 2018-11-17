/*

    Author: RobérioJR

	Uso:
	[NUM] Call RDR_fnc_SalvarProfile;
	0 - Geral | 1 - Loadout | 2 - Estado Do Jogador | 3 - Dinheiro | 4 - Mortes

*/
Private ['_Loadout','_Damage','_Dinheiro','_Mortes'];

_Tipo = Param [0,0,[0]];

Switch (_Tipo) Do {
    Case 0: // Save Geral
	{
	    profileNamespace setVariable ["RDR_Loadout",Nil];
		profileNamespace setVariable ["RDR_Dinheiro",Nil];
		profileNamespace setVariable ["RDR_Damage",Nil];
		_Dinheiro = RDR_Grana;
		_Damage = Damage Player;
		_Loadout = GetUnitLoadout Player;
		if (_Damage > 0.98) Then { _Damage = 0.90; };
		profileNamespace setVariable ["RDR_Loadout",_Loadout];
		profileNamespace setVariable ["RDR_Dinheiro",_Dinheiro];
		profileNamespace setVariable ["RDR_Damage",_Damage];
	};
    Case 1: // Loadout Do Jogador
	{
	    profileNamespace setVariable ["RDR_Loadout",Nil];
	    _Loadout = GetUnitLoadout Player;
        profileNamespace setVariable ["RDR_Loadout",_Loadout];
    };
	Case 2: // Estado Do Jogador
	{
	    profileNamespace setVariable ["RDR_Damage",Nil];
	    _Damage = Damage Player;
		if (_Damage > 0.99) Then { _Damage = 0.90; };
		profileNamespace setVariable ["RDR_Damage",_Damage];
	};
	Case 3: // Dinheiro Do Jogador
	{
	    profileNamespace setVariable ["RDR_Dinheiro",Nil];
		_Dinheiro = RDR_Grana;
		profileNamespace setVariable ["RDR_Dinheiro",_Dinheiro];
	};
	Case 4: // Kills Do Jogador
	{
	    profileNamespace setVariable ["RDR_Mortes",Nil];
		_Mortes = RDR_Mortes;
		profileNamespace setVariable ["RDR_Mortes",_Mortes];
	};
};

 SaveProfileNamespace;