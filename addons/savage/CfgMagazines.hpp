class CfgMagazines {

    class vn_prop_base;

    // Convert to CigPack
    class vn_b_item_cigs_01: vn_prop_base {

        displayName = CSTRING(cigpack);
        descriptionShort = CSTRING(cigpack_desc);

        count = 16;

        PVAR(isPack) = 1;
        PVAR(unpackSound) = QPVAR(unwrap);
        PVAR(item_glasses) = QGVAR(cig0); // Can be replaced with sog specific cig texture and model later
        PVAR(item_hmd) = QGVAR(cig0_nv); // Can be replaced with sog specific cig texture and model later

        ACE_asItem = 1;
    };

    // Convert to Lighter
    class vn_b_item_lighter_01: vn_prop_base {

        count = 100;

        PVAR(isLighter) = 1;
        PVAR(LighterSound) = QPVAR(lighter_01);     // CfgSounds Class

        ACE_asItem = 1;
    };

    // Modded Item
    class CA_Magazine;
    class GVAR(cigpack): CA_Magazine {
        author = CSTRING(author);
        scope = 2;

        displayName = CSTRING(cigpack);
        descriptionShort = CSTRING(cigpack_desc);
        model = "vn\characters_f_vietnam\BLUFOR\headgear\items\vn_b_item_cigs_01.p3d";
        picture = "\vn\weapons_f_vietnam\ui\icon_vn_b_item_cigs_01_ca.paa";

        ammo = "";
        count = 16;
        initSpeed = 0;
        tracersEvery = 0;
        lastRoundsTracer = 0;
        mass = 2;

        ACE_asItem = 1;

        PVAR(isPack) = 1;
        PVAR(unpackSound) = QPVAR(unwrap);
        PVAR(item_glasses) = QGVAR(cig0);
        PVAR(item_hmd) = QGVAR(cig0_nv);
    };
};