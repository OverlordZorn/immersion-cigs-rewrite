#include "../../script_component.hpp"

/*
* Author: Zorn
* Removes a unit from a magazine. Used by finite lighters, matches or Cigarettes.
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

params ["_player", "_mag"];

private _matchesMags = magazinesAmmo _player select {_x select 0 == _mag};

_player removeMagazineGlobal _mag;

private _oldMag = _matchesMags select 0;

if ((_oldMag select 1) > 1) then {
    _player addMagazine [_mag, (_oldMag select 1) - 1];
} else {
    if (getNumber (configFile >> "CfgMagazines" >> _mag >> "count") > 1) then {
        [QGVAR(EH_notify), [format [LLSTRING(is_Empty), getText (configFile >> "CfgMagazines" >> _mag >> "displayName")], 1], _player] call CBA_fnc_targetEvent;
    };
};
