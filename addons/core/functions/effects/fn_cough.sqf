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


private _sound = selectRandom ["cough_0", "cough_1", "cough_2"];
[_unit, _sound, nil, true, true, true] call CBA_fnc_globalSay3d;

if (isPlayer _unit) then {
    enableCamShake true;
    addCamShake [
        1,
        1,
        20
    ];
};