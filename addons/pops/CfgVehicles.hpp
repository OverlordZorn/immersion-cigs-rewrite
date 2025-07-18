class CfgVehicles
{
    class WeaponHolder_Single_limited_item_F;
    class GVAR(poppackItem): WeaponHolder_Single_limited_item_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(poppack);
        author = CSTRING(author);
        vehicleClass = "Magazines";

        class TransportMagazines {
            class GVAR(poppack) {
                magazine = QGVAR(poppack);
                count = 1;
            };
        };
    };
};
