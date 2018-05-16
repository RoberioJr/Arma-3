/*
/  Realidades    /     
/      Do        /     
/ Rio De Janeiro /
*/

//waitUntil (!alive player);

switch (playerSide) do 
{  
	case west: //BOPE
	{
	    //hint "Selecione Seu Ponto De Spawn"
	};
	case east: //Vermelho
	{
	   //hint "Selecione Seu Ponto De Spawn"
	};
	case independent: //Verde
	{
	   //hint "Selecione Seu Ponto De Spawn"
	};
};

// Removido Para Não Aparecer Menu Ao Jogador Entrar no Servidor... (Se Der Merda, Ativa Dnv.)
/* 
if(alive player) then {
createDialog "dlg_respawnSelectionMenu";
};
*/
while {true} do {
	if (!alive player) then{
    waitUntil {alive player};
    createDialog "dlg_respawnSelectionMenu";
    };
};