#include "../../script_component.hpp"

/*
* Author: Zorn
* [Description]
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* [this, true] call cigs_core_fnc_start_cig; // the be used to start ai's cig, overwriting the need and usage for lighters.
*
* Public: No
*/

params ["_unit", ["_force", false, [true]]];

if (!_force && { !([_unit] call FUNC(hasLighter)) } ) exitWith {};

[_unit, _force] call FUNC(useLighter);
[_unit] call FUNC(smoking_start);
