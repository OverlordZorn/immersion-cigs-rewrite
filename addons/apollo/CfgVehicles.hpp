class CfgVehicles
{
    class WeaponHolder_Single_limited_item_F;

    class GVAR(cigpackItem): WeaponHolder_Single_limited_item_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(cigpack);
        author = CSTRING(author);
        vehicleClass = "Magazines";

        class TransportMagazines {
            class GVAR(cigpack) {
                magazine = QGVAR(cigpack);
                count = 1;
            };
        };
    };
};