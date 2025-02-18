#include "../../script_component.hpp"

/*
* Author: Zorn
* PostInit Function for the Eating of cigarettes
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

// Start Smoking
[
    "#All"                      // item - Classname or itemType or wildcard
    ,["GOGGLES", "HMD"]         // Slots - STRING or ARRAY of Strings
    ,[LLSTRING(eat_cig), LLSTRING(eat_cig_desc)]    // Display Name - STRING or ARRAY of Strings - [displayName, Tooltip]
    ,[]                         // Text Color
    ,PATH_TO_ADDON_3(data,ui,eat_cig.paa)                        // Icon path
    ,[                          // condition - CODE or ARRAY of Code [_conditionEnable, _conditionShow] - Arguments: params ["_unit", "_container", "_item", "_slot", "_params"];
        {
            params ["_unit", "_container", "_item", "_slot", "_params"];
            [_unit] call FUNC(canStartSmoking);
        },{
            params ["_unit", "_container", "_item", "_slot", "_params"];
            _hasCig = switch (_slot) do {
                case "GOGGLES": { getNumber (configFile >> "CfgGlasses" >> _item >> QPVAR(isSmokable)) == 1 };
                case "HMD":     { getNumber (configFile >> "CfgWeapons" >> _item >> QPVAR(isSmokable)) == 1 };
                default { false };
            };
            _hasCig && { [_unit] call FUNC(canStartSmoking) };
        }
    ],
    {                          // statement - CODE or ARRAY of Code [_conditionEnable, _conditionShow] - Arguments: params ["_unit", "_container", "_item", "_slot", "_params"];
        params ["_unit", "_container", "_item", "_slot", "_params"];
        private _sound = selectRandom [QPVAR(eat_bread_1), QPVAR(eat_bread_2), QPVAR(eat_bread_3), QPVAR(eat_bread_4), QPVAR(eat_bread_5)];
        [QGVAR(EH_sound), [_sound, _unit]] call CBA_fnc_globalEvent;
    },
    true
] call CBA_fnc_addItemContextMenuOption;