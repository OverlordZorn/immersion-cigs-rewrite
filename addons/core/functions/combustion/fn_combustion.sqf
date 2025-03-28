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

params ["_unit"];

if (isNil "_unit") exitWith {};

if ( _unit getVariable [QPVAR(isSmoking), false] && { random 1 < SET(effect_spontaneusComustion_chance) } ) then {

    [ ace_fire_fnc_burn , [_unit , 2 + ceil random 3], 1 + ceil random 2 ] call CBA_fnc_waitAndExecute;
    
};
 