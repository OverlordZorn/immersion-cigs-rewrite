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

ZRN_LOG_1(_this);

params ["_unit"];

private _sound = selectRandom [QPVAR(verpuffung_00), QPVAR(verpuffung_01), QPVAR(verpuffung_02), QPVAR(verpuffung_03), QPVAR(verpuffung_04)];
[_unit, _sound, 100, true, false, true] call CBA_fnc_globalSay3d;

[_unit , 2 + ceil random 3] call ace_fire_fnc_burn;
[_unit, "", "", true, true] call FUNC(drop_cig);

 
