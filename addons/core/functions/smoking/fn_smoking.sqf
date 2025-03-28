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
private ["_currentItem", "_itemConfig"];

switch (_itemType) do {
    case ("GOGGLES"): {
        _currentItem = goggles _unit;
        _itemConfig = configFile >> "CfgGlasses" >> _currentItem;
    };
    case ("HMD"): {
        _currentItem = hmd _unit;
        _itemConfig = configFile >> "CfgWeapons" >> _currentItem;
    };
};
////////////////////////////////////////
// Smoke Particles & Effects
////////////////////////////////////////
[QGVAR(EH_smoke), [_unit, _itemConfig]] call CBA_fnc_globalEvent;
_unit setFatigue (getFatigue _unit + 0.01);


////////////////////////////////////////
// Get NextCigState
////////////////////////////////////////

private _gogglesNew = "";
private _nextItemState = getText (_itemConfig >> QPVAR(nextState));


private _nextItemStateTime = 0;

if (_nextItemState != "") then {
    switch (_itemType) do {
        case ("GOGGLES"): { _nextItemStateTime = getNumber (configFile >> "CfgGlasses" >> _nextItemState >> QPVAR(initStateTime));  };
        case ("HMD"):     { _nextItemStateTime = getNumber (configFile >> "CfgWeapons" >> _nextItemState >> QPVAR(initStateTime));  };
    };
} else {
    _nextItemStateTime = _maxTime;
};



if (_currentTime >= _nextItemStateTime) then { _gogglesNew = _nextItemState; };

if (_gogglesNew != "") then {
    switch (_itemType) do {
        case ("GOGGLES"): {
            removeGoggles _unit;
            _unit addGoggles _gogglesNew;
            _itemConfig = configFile >> "CfgGlasses" >> _gogglesNew;
        };
        case ("HMD"): {
            _unit removeWeapon _currentItem;
            _unit addWeapon  _gogglesNew;
            _itemConfig = configFile >> "CfgWeapons" >> _gogglesNew;
        };
    };
    _currentItem = _gogglesNew;
};

////////////////////////////////////////
// API 
////////////////////////////////////////
[QGVAR(EH_smoking_local),  [_unit, _currentTime, _currentItem, _itemType]] call CBA_fnc_localEvent;
[QGVAR(EH_smoking_server), [_unit, _currentTime, _currentItem, _itemType]] call CBA_fnc_serverEvent;


////////////////////////////////////////
// Define Delay and Timers
////////////////////////////////////////

private "_delay";
if (_currentTime < 15) then {
    _delay = (random 3);
    _currentTime = _currentTime + _delay;
} else {
    _delay = (5 + random 15);
    _currentTime = _currentTime + _delay;
};



////////////////////////////////////////
// Call Recursive Function
////////////////////////////////////////

_timeoutCode = {
    params ["_unit","_currentTime","_currentItem","_itemType","_maxTime","_itemConfig"];
    if (  [_unit, _itemType, _currentItem, _currentTime, _maxTime] call FUNC(canKeepSmoking) ) then {

        [_unit,_currentTime,_itemType,_maxTime] call FUNC(smoking);

    } else {

        // IF fail condition detected
        if (_unit getVariable [QPVAR(isSmoking), false]) then { _unit setVariable [QPVAR(isSmoking), false, true] };
        
        if (lifeState _unit in ["HEALTHY", "INJURED"]) then {
            if (_currentTime >= _maxTime) then { [_unit, _currentItem, _itemType] call FUNC(drop_cig); };
        } else {
            [_unit, _currentItem, _itemType] call FUNC(drop_cig);
        };
    };
};

_condition = { !((_this#0) getVariable [QPVAR(isSmoking), false]) };

_statement = {
    params ["_unit","_currentTime","_currentItem","_itemType","_maxTime","_itemConfig"];
    [_unit, QEGVAR(anim,cig_out), 1] call FUNC(anim);

    if (_currentTime >= _maxTime) then {
        [_unit, _currentItem, _itemType] call FUNC(drop_cig);
    };
};

[
    _condition,
    _statement,
    [_unit,_currentTime,_currentItem,_itemType,_maxTime,_itemConfig],
    _delay,
    _timeoutCode
] call CBA_fnc_waitUntilAndExecute;