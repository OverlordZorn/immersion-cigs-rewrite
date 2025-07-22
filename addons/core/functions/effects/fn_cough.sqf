#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to do a cough
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/


/*
// ToDo: Implement intensity maybe which affects "range (-> volume)" of cough and intensity of shake?

// TODO: implmenet intensity/chance based on > I would only take Ae2 into account for long term effects. Ae1 will probably still be at 90% after a couple hours.
// REF: https://github.com/acemod/ACE3/blob/master/addons/advanced_fatigue/script_component.hpp
// REF: https://github.com/acemod/ACE3/blob/master/addons/advanced_fatigue/functions/fnc_mainLoop.sqf#L130
*/


params ["_unit"];

if !(isPlayer _unit) exitWith {};



private _sound = selectRandom [QPVAR(cough_0), QPVAR(cough_1), QPVAR(cough_2)];
private _distance = getArray (configFile >> "CfgSounds" >> _sound >> "sound") select 3; 
[ _unit, _sound, _distance, true, true, true ] call CBA_fnc_globalSay3d;

if (isPlayer _unit) then {
    enableCamShake true;
	addCamShake [
		1 + random 2,
		3 + random 2,
		2 + random 3
	];
};
