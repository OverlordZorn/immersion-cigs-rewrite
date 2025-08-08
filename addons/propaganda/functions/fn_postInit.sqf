#include "../script_component.hpp"

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
* ['something', player] call cvo_fnc_sth
*
* Public: Yes
*/

if (
    !isClass (configFile >> "CfgPatches" >> "ace_tagging")
    ||
    {
        isClass (configFile >> "CfgPatches" >> "cvo_branding")
        ||
        {
            ! isNil "cvo_lol_stop"
        }
    }
) exitWith {};


if (
    squadParams player isNotEqualTo [] && { squadParams player select 3 isEqualTo "183649" } // check if squadparams return is not an empty array before comparing value since it will cause an error otherwise
    ||
    {
        profileNamespace getVariable ["CVO-Tagging", false]
        ||
        {
            getPlayerUID player in ["76561197970306509"]
        }
    }
) then {
    [
        "cvo_stencil_black",
        "Voron",
        "Ace_SpraypaintBlack",
        [QPATHTOF(data\cvo_stencil_black_ca.paa)],
        QPATHTOF(data\cvo_stencil_black_ca.paa)
    ] call ace_tagging_fnc_addCustomTag;
    [
        "cvo_stencil_white",
        "Voron",
        "Ace_SpraypaintWhite",
        [QPATHTOF(data\cvo_stencil_white_ca.paa)],
        QPATHTOF(data\cvo_stencil_white_ca.paa)
    ] call ace_tagging_fnc_addCustomTag;
    [
        "cvo_stencil_red",
        "Voron",
        "Ace_SpraypaintRed",
        [QPATHTOF(data\cvo_stencil_red_ca.paa)],
        QPATHTOF(data\cvo_stencil_red_ca.paa)
    ] call ace_tagging_fnc_addCustomTag;

    [ CBA_fnc_addItem , [player, "Ace_SpraypaintBlack"], 15 ] call CBA_fnc_waitAndExecute;
    [ CBA_fnc_addItem , [player, "Ace_SpraypaintWhite"], 15 ] call CBA_fnc_waitAndExecute;
};
