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

params ["_unit"];


private _sound = selectRandom ["cough_0", "cough_1", "cough_2"];
[_unit, _sound, nil, true, false, true] call CBA_fnc_globalSay3d;

if (isPlayer _unit) then {
    enableCamShake true;
    addCamShake [
        1,
        1,
        20
    ];
};