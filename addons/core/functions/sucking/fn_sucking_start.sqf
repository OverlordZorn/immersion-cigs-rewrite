#include "../../script_component.hpp"

/*
* Author: Zorn
* Function that will initiate the Recursive Sucking
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

params ["_unit"];

////////////////////////////////////////
// Initial Check
////////////////////////////////////////
if (!(local _unit)) exitWith {};


////////////////////////////////////////
// Check if sucking & set flag
////////////////////////////////////////
if (_unit getVariable [QPVAR(isSucking), false]) exitWith {};
_unit setVariable [QPVAR(isSucking), true, true];


////////////////////////////////////////
// Ident current Pop and Type
////////////////////////////////////////
private _itemType = switch (true) do {
    case (getNumber (configFile >> "CfgGlasses" >> goggles _unit >> QPVAR(isSuckable)) == 1): { "GOGGLES" };
    case (getNumber (configFile >> "CfgWeapons" >>     hmd _unit >> QPVAR(isSuckable)) == 1): { "HMD" };
    default { "" };
};
if (_itemType == "") exitWith {};


////////////////////////////////////////
// Create Data Hashmap
////////////////////////////////////////
private _suckData = createHashMap;
_unit setVariable [QPVAR(suckData), _suckData];
_suckData set ["itemType", _itemType ];


////////////////////////////////////////
// Get Item Config
////////////////////////////////////////
private _itemConfig = switch (_itemType) do {
    case ("GOGGLES"):   { (configFile >> "CfgGlasses" >> goggles _unit ); };
    case ("HMD"):       { (configFile >> "CfgWeapons" >>     hmd _unit ); };
};

_suckData set ["currentConfig", _itemConfig ];
_suckData set ["currentClass",  configName _itemConfig ];


////////////////////////////////////////
// Identify suckable stages and current Sucks
////////////////////////////////////////
private _curStage = getNumber (_itemConfig >> QPVAR(curStage));
private _endStage = getNumber (_itemConfig >> QPVAR(endStage));


private _totalSucks = getNumber (_itemConfig >> QPVAR(totalSucks));

private _stages = createHashMap; 

for "_stage" from 0 to _endStage do {
    _stages set [
        _stage,
        switch (_stage) do {
            case 0: { 0 };
            case 1: { 1 };
            default { round ( _totalSucks / _endStage * (_stage - 1) ) };
        }
    ]
};

private _curSucks = _stages get _curStage;

_suckData set ["curStage",   _curStage   ];
_suckData set ["endStage",   _endStage   ];
_suckData set ["stages",     _stages     ];
_suckData set ["curSucks",   _curSucks   ];
_suckData set ["totalSucks", _totalSucks ];

////////////////////////////////////////
// Play Animation
////////////////////////////////////////
[_unit, QEGVAR(anim,cig_in), 3] call FUNC(anim);


////////////////////////////////////////
// Initial Sucking Sound
////////////////////////////////////////
private _sound = [(_itemConfig >> QPVAR(sounds))] call CBA_fnc_getCfgDataRandom;
[_unit, _sound, 25, true, true, true] call CBA_fnc_globalSay3D;


////////////////////////////////////////
// Flavour Notification
////////////////////////////////////////
private _flavour = [(_itemConfig >> QPVAR(flavour))] call CBA_fnc_getCfgDataRandom;
[ { [QGVAR(EH_notify), format [LLSTRING(taste_flavour), _this]] call CBA_fnc_localEvent; } , _flavour, 2 + random 30] call CBA_fnc_waitAndExecute;


////////////////////////////////////////
// Start Recursive Loop
////////////////////////////////////////
[ FUNC(sucking), [_unit, _suckData], 2] call CBA_fnc_waitAndExecute;

