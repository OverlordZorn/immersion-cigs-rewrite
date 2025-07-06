class CfgVehicles
{
    class WeaponHolder_Single_limited_item_F;

    class GVAR(cigarbox_5Item): WeaponHolder_Single_limited_item_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(cigarbox_5);
        author = CSTRING(author_cigarbox_5);
        vehicleClass = "Magazines";

        class TransportMagazines {
            class GVAR(cigarbox_5) {
                magazine = QGVAR(cigarbox_5);
                count = 1;
            };
        };
    };
};
