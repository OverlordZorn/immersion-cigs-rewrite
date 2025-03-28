#include "../script_component.hpp"


/*
* Author: Zorn
* post Init Function
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


// CBA Events
[QGVAR(EH_start_cig), FUNC(start_smoking)] call CBA_fnc_addEventHandler;

[QGVAR(EH_notify), CBA_fnc_notify] call CBA_fnc_addEventHandler;

[QGVAR(EH_sound), FUNC(sound)] call CBA_fnc_addEventHandler;
[QGVAR(EH_smoke), FUNC(smoke)] call CBA_fnc_addEventHandler;


if (isServer) then {

    ["ace_unconscious", {
        params ["_unit", "_state"];
        if (_state && { _unit getVariable [QPVAR(isSmoking), false] } ) then {

            [ FUNC(drop_cig), [_unit], 1 ] call CBA_fnc_waitAndExecute;

            _unit setVariable [QPVAR(isSmoking), false, true];
        };

    }] call CBA_fnc_addEventHandler;
};

if !(hasInterface) exitWith {};

// I dont remember why this waits for cba settings :harold:
private _code = {
    // reset isSmoking/isSucking variable on respawn
    player addEventHandler ["Respawn", {
        player setVariable [QPVAR(isSmoking), false];
        player setVariable [QPVAR(isSucking), false];
    }];

    // if 2 suckable/smokable items are equipped, it will put the nvg one back in the inventory.
    player addEventHandler ["InventoryClosed", {
        params ["_unit", "_container"];
        if (
            (
                getNumber (configFile >> "CfgGlasses" >> goggles _unit >> QPVAR(isSmokable)) == 1
                ||
              { getNumber (configFile >> "CfgGlasses" >> goggles _unit >> QPVAR(isSuckable)) == 1 }
            )
            &&
            {
                getNumber (configFile >> "CfgWeapons" >> hmd     _unit >> QPVAR(isSmokable)) == 1
                ||
              { getNumber (configFile >> "CfgWeapons" >> hmd     _unit >> QPVAR(isSuckable)) == 1 }
            }
        ) then {
            _unit addItem (hmd _unit);
            _unit unlinkItem (hmd _unit);
        };
    }];
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };