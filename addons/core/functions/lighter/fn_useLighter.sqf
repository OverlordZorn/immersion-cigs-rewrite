#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to use the lighter, play sound and remove 1 unit from "magazine type lighters"
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


// Why check if it can be checked before ?
/*
if (!(QPVAR(matches) in (magazines _player)) && !(QPVAR(lighter) in (magazines _player))) exitWith {
    [QGVAR(EH_notify), [LLSTRING(no_matches_or_lighter), 2.5], _player] call CBA_fnc_targetEvent;
    false
};
*/

params [ "_player" ];

[ _player ] call FUNC(getLighter) params [ "_className", "_type" ];

if ( _className isEqualTo false ) exitWith {};

// Reduce Magazine Size if its a Magazine
if ( _type isEqualTo "typeMagazine" ) then { [ _player, _className ] call FUNC(removeItemFromMag); };

// Play sound get From Lighter Class)
private _sound = switch (_type) do {
    case "typeMagazine": { getText ( configFile >> "CfgMagazines" >> _className >> QPVAR(LighterSound) ) };
    case "typeItem":     { getText ( configFile >> "CfgWeapons"   >> _className >> QPVAR(LighterSound) ) };
    default { QGVAR(matches_01) };
};
[ QGVAR(EH_sound), [_sound, _player] ] call CBA_fnc_globalEvent;