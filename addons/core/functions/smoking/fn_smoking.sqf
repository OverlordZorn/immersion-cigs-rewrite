#include "../../script_component.hpp"

/*
* Author: Zorn
* Recursive Function to handle the smoking of the Cigs. Triggers Smoke Particles
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

params ["_unit","_currentTime","_itemType","_maxTime"];

////////////////////////////////////////
// Update Current variables
////////////////////////////////////////
private ["_itemClass", "_itemCfg"];

switch (_itemType) do {
    case ("GOGGLES"): {
        _itemClass = goggles _unit;
        _itemCfg = configFile >> "CfgGlasses" >> _itemClass;
    };
    case ("HMD"): {
        _itemClass = hmd _unit;
        _itemCfg = configFile >> "CfgWeapons" >> _itemClass;
    };
};


////////////////////////////////////////
// Sound Effects
////////////////////////////////////////
private _sound = (_itemCfg >> QPVAR(smokeSound)) call CBA_fnc_getCfgDataRandom;
if (isNil "_sound") then { _sound = selectRandom [QPVAR(smoke_3),QPVAR(smoke_4)] };
[_unit, _sound, 20, true, false, true] call CBA_fnc_globalSay3d;


////////////////////////////////////////
// Smoke Particles
////////////////////////////////////////
diag_log format ['[CVO](debug)(fn_smoking) _unit: %1 - _itemCfg: %2', _unit , _itemCfg];
[ CBA_fnc_globalEvent, [QGVAR(EH_smoke), [_unit, _itemCfg]], 2.5 ] call CBA_fnc_waitAndExecute;


////////////////////////////////////////
// Fatigue
////////////////////////////////////////
_unit setFatigue (getFatigue _unit + 0.01);
[_unit] call FUNC(adv_fatigue_addPuffs);


////////////////////////////////////////
// Get NextCigState
////////////////////////////////////////
private _nextClass = getText (_itemCfg >> QPVAR(nextState));

private _nextItemStateTime = if (_nextClass != "") then {
    switch (_itemType) do {
        case ("GOGGLES"): { getNumber (configFile >> "CfgGlasses" >> _nextClass >> QPVAR(initStateTime)) };
        case ("HMD"):     { getNumber (configFile >> "CfgWeapons" >> _nextClass >> QPVAR(initStateTime)) };
    }
} else {
    _maxTime
};

private _gogglesNew = ["", _nextClass] select (_currentTime >= _nextItemStateTime);

if (_gogglesNew != "") then {
    switch (_itemType) do {
        case ("GOGGLES"): {
            removeGoggles _unit;
            _unit addGoggles _gogglesNew;
            _itemCfg = configFile >> "CfgGlasses" >> _gogglesNew;
        };
        case ("HMD"): {
            _unit removeWeapon _itemClass;
            _unit addWeapon  _gogglesNew;
            _itemCfg = configFile >> "CfgWeapons" >> _gogglesNew;
        };
    };
    _itemClass = _gogglesNew;
};


////////////////////////////////////////
// Define Delay and Timers
////////////////////////////////////////
private  _delay = [ 3 + random 3, 15 + random 25 ] select (_currentTime > 15);
_currentTime = _currentTime + _delay;


////////////////////////////////////////
// Call Recursive Function
////////////////////////////////////////
[

    {
        // Condition
        !((_this#0) getVariable [QPVAR(isSmoking), false])
    },  

    {
        // Statement ## Unit stopped smoking
        params ["_unit","_currentTime","_itemClass","_itemType","_maxTime","_itemCfg"];
        [_unit, QEGVAR(anim,cig_out), 1] call FUNC(anim);
        if (_currentTime >= _maxTime) then { [_unit, _itemClass, _itemType, true] call FUNC(drop_cig); };
    },  

    [_unit,_currentTime,_itemClass,_itemType,_maxTime,_itemCfg],

    _delay,

    {
        // Timeout Code ## Unit hasnt stopped smoking -> Can Keep Smoking?

        params ["_unit","_currentTime","_itemClass","_itemType","_maxTime","_itemCfg"];
        if (  [_unit, _itemType, _itemClass, _currentTime, _maxTime] call FUNC(canKeepSmoking) ) then {
            // Can continue smoking
            [_unit,_currentTime,_itemType,_maxTime] call FUNC(smoking);
        } else {
            // Can not continue smoking
            if (_unit getVariable [QPVAR(isSmoking), false]) then { _unit setVariable [QPVAR(isSmoking), false, true] };

            // Drop Cigarette            
            if (lifeState _unit in ["HEALTHY", "INJURED"]) then {
                // Is conscious ## Only drop cig when cig is done
                if (_currentTime >= _maxTime) then { [_unit, _itemClass, _itemType] call FUNC(drop_cig); };
            } else {
                // is unconscious
                [_unit, _itemClass, _itemType] call FUNC(drop_cig);
            };
        };
    }

] call CBA_fnc_waitUntilAndExecute;


////////////////////////////////////////
// API 
////////////////////////////////////////
[QGVAR(API_smoking),  [_unit, _currentTime, _itemClass, _itemType]] call CBA_fnc_localEvent;
