#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to handle the removing/dropping of the cig.
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

params ["_unit", "_itemType", "_currentItem", ["_case", "RND", [""]] ];

if (_case == "RND") then { _case = selectRandomWeighted ["DROP", 0.5, "REMOVE", 0.5]; };

switch (_case) do {
    case "REMOVE": {
        switch (_itemType) do {
            case ("GOGGLES"): { removeGoggles _unit; };
            case ("HMD"):     { _unit removeWeapon (hmd _unit); };
        };
    };
    case "DROP": {
        [_unit, _currentItem] call CBA_fnc_dropItem;
    };
};
