#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to be used for advanced fatuige
*
* Arguments:
*
* Return Value:
* Duty Factor as Number
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_player"];

linearConversion [
    0,
    100,
    ( _player getVariable [QPVAR(recentPuffs), 0] ) * ( missionNamespace getVariable [QSET(adv_fatigue_modifier), 1] ),
    1,
    2.5,
    true
]
