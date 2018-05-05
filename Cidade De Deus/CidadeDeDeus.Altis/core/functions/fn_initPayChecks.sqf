#include "..\..\script_macros.hpp"
/*
	File: fn_initPayChecks.sqf
        Author: ScarsoLP
	Description:
	Changes The Player(s) paycheck depending on what rank/level they are in the Police/NHS/Donator. 
        Also changes the palyer(s) paycheck depending on what licenses they have.
*/

/* Changes The Paycheck Depending On Levels */

switch (playerSide) do
{
	case west:
	{
		switch(FETCH_CONST(life_coplevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;};
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 3000;}; 
			case 3: {life_paycheck = life_paycheck + 4000;}; 
			case 4: {life_paycheck = life_paycheck + 5000;}; 
			case 5: {life_paycheck = life_paycheck + 6000;}; 
			case 6: {life_paycheck = life_paycheck + 7000;}; 
			case 7: {life_paycheck = life_paycheck + 8000;};
		};
		switch(FETCH_CONST(life_donorlevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 2000;};
			case 2: {life_paycheck = life_paycheck + 2500;}; 
			case 3: {life_paycheck = life_paycheck + 3000;}; 
			case 4: {life_paycheck = life_paycheck + 3500;}; 
			case 5: {life_paycheck = life_paycheck + 4000;}; 
		};
	};

	case independent:
	{
		switch(FETCH_CONST(life_mediclevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 3000;}; 
			case 3: {life_paycheck = life_paycheck + 4000;};
			case 4: {life_paycheck = life_paycheck + 5000;};
			case 5: {life_paycheck = life_paycheck + 6000;};
		};
		switch(FETCH_CONST(life_donorlevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 2000;};
			case 2: {life_paycheck = life_paycheck + 2500;}; 
			case 3: {life_paycheck = life_paycheck + 3000;}; 
			case 4: {life_paycheck = life_paycheck + 3500;}; 
			case 5: {life_paycheck = life_paycheck + 4000;}; 
		};
	};
	
	case civilian:
	{
		switch(FETCH_CONST(life_donorlevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 2500;};
			case 2: {life_paycheck = life_paycheck + 5000;}; 
			case 3: {life_paycheck = life_paycheck + 7500;}; 
			case 4: {life_paycheck = life_paycheck + 10000;}; 
			case 5: {life_paycheck = life_paycheck + 12500;}; 
		};
	};
};