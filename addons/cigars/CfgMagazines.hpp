class CfgMagazines {
    class CA_Magazine;

    class GVAR(cigarbox_5): CA_Magazine {
        author = CSTRING(author_cigarbox_5);
        scope = 2;

        displayName = CSTRING(cigarbox_5);
        descriptionShort = CSTRING(cigarbox_5_desc);

        model = PATH_TO_ADDON_3(data,cigarbox_5,cigarbox_5.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigarbox_5_x_ca.paa);

        ammo = "";
        count = 5;
        initSpeed = 0;
        tracersEvery = 0;
        lastRoundsTracer = 0;
        mass = 2;

        ACE_asItem = 1;

        PVAR(isPack) = 1;
        PVAR(unpackSound) = QPVAR(unwrap_01);
        PVAR(item_glasses) = QGVAR(cigar0);
        PVAR(item_hmd) = QGVAR(cigar0_nv);
    };
};
