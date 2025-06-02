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
* [this, true] call cigs_core_fnc_start_cig_your; // the be used to start ai's cig, overwriting the need and usage for lighters.
*
* Public: No
*/

params ["_player", ["_force", false, [true]]];

if (!_force && { !([_player] call FUNC(hasLighter)) } ) exitWith {};

[_player, _force] call FUNC(useLighter);
[_player] call FUNC(start_smoking);
