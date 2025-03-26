#include "../../script_component.hpp"

/*
* Author: Zorn
* Event Handler Function, Triggered by ace_refuel_started
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

params ["_source", "_target", "_nozzle", "_unit"];


if ( _unit getVariable [QPVAR(isSmoking), false] && { random 1 < SET(effect_spontaneusComustion_chance) } ) then {

    [_unit, 5, _nozzle] call ace_fire_fnc_burn;
};
 