#include "../script_component.hpp"

/*
* Author: Zorn
* Function to Enable/Disable the Arsenal Loadout Replacer
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

params [
    ["_enable", true, [true] ]
];

if (_enable) then {
    private _id = missionNamespace getVariable [QGVAR(eh_id_loadoutReplacer), "404"];
    if (_id isEqualTo "404") then {
        _id = ["featureCamera", FUNC(onArsenalOpen)] call CBA_fnc_addPlayerEventHandler;
        missionNamespace setVariable [QGVAR(eh_id_loadoutReplacer), _id];
    };
} else {
    private _id = missionNamespace getVariable [QGVAR(eh_id_loadoutReplacer), "404"];
    if (_id isNotEqualTo "404") then { ["featureCamera", _id] call CBA_fnc_removePlayerEventHandler; };
};