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

params [ "_unit", ["_currentItem", ""], ["_itemType", ""], ["_remove", false], ["_skipAnimation", false] ];

if (_currentItem == "" || { _itemType == "" } ) then {

    _itemType = switch (true) do {
        case (getNumber (configFile >> "CfgGlasses" >> goggles _unit >> QPVAR(isSmokable)) == 1): { "GOGGLES" };
        case (getNumber (configFile >> "CfgWeapons" >>     hmd _unit >> QPVAR(isSmokable)) == 1): { "HMD" };
        default { "" };
    };
    if (_itemType == "") exitWith {};
    _currentItem = switch (_itemType) do {
        case ("GOGGLES"):   { goggles _unit };
        case ("HMD"):       { hmd _unit };
    };
};

switch (_itemType) do {
    case ("GOGGLES"): { removeGoggles _unit; };
    case ("HMD"):     { _unit removeWeapon (hmd _unit); };
};

if ( !_skipAnimation && (lifeState _unit in ["HEALTHY", "INJURED"]) ) then { [_unit, QEGVAR(anim,cig_out), 1] call FUNC(anim) };

if (_remove) exitWith {};

// Put Cigarette on the floor
private _weaponHolder = nearestObject [_unit, "WeaponHolder"];

if (isNull _weaponHolder || {_unit distance _weaponHolder > 2}) then {
    _weaponHolder = createVehicle ["GroundWeaponHolder", [0,0,0], [], 0, "NONE"];
    _weaponHolder setPosASL getPosASL _unit;
};

_weaponHolder addItemCargoGlobal [_currentItem, 1];
