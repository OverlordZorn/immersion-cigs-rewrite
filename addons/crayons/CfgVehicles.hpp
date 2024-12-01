class CfgVehicles
{
    class WeaponHolder_Single_limited_item_F;
    class GVAR(crayonpackItem): WeaponHolder_Single_limited_item_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(crayonpack);
        author = CSTRING(author);
        vehicleClass = "Magazines";

        class TransportMagazines {
            class GVAR(crayonpack) {
                magazine = QGVAR(crayonpack);
                count = 1;
            };
        };
    };
};