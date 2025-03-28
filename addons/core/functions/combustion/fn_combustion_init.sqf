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
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

// Event: When using the Lighter, is there something flammable nearby?
[
    QGVAR(EH_useLighter),
    {
        if !( missionNamespace getVariable ["ace_fire_enabled", false] ) exitWith {};
        params ["_unit"];
        private _types = [""];
        private _nearbyObjs = nearestObjects [_unit, [], 3, true] select {
            private _className = typeOf _x;
            _className in ["ace_refuel_fuelNozzle"]
            ||
            {
                getNumber (configFile >> "CfgVehicles" >> _className >> QPVAR(canCauseCombustion) ) > 0
                ||
                {
                    private _fuel = [_x] call ace_refuel_fnc_getFuel;
                    _fuel > 0 || { _fuel == -10 }
                }
            }
        };
        { _unit call FUNC(comustion) } forEach _nearbyObjs;
    }
] call CBA_fnc_addEventHandler;


// Event: When starting Refueling, is the unit doing it smoking?
["ace_refuel_started", { _this#3 call FUNC(comustion) }] call CBA_fnc_addEventHandler;