#include "../script_component.hpp"

/*
* Author: Zorn
* This function creates an Custom ACE Arsenal Tab for the Userfacing Items (Packages and Lighters) of the Mod.
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
    ["_value",        true,         [true]       ]
];


if (_value) then {
    private _isEnabled = missionNamespace getVariable [QPVAR(isEstablished_aceTab), false];

    if (!_isEnabled) then {
        missionNamespace setVariable [QPVAR(isEstablished_aceTab), true];

        private _lighters = Q(getNumber (_x >> QQPVAR(isPack)) == 1 && {getNumber (_x >> QQ(scope)) == 2}) configClasses (configFile >> "CfgMagazines") apply {configName _x};
        private _packs = Q(getNumber (_x >> QQPVAR(isLighter)) == 1 && {getNumber (_x >> QQ(scope)) == 2}) configClasses (configFile >> "CfgMagazines") apply {configName _x};

        [
            _lighters + _packs,
            "Immersion Cigs",
            PATH_TO_ADDON_3(data,ui,light_cig.paa) // Image Path
        ] call ace_arsenal_fnc_addRightPanelButton

    };
};