class CfgMagazines {
    class CA_Magazine;

    class GVAR(poppack): CA_Magazine {
        author = CSTRING(author);
        scope = 2;

        displayName = CSTRING(poppack);
        descriptionShort = CSTRING(poppack_desc);
        model = PATH_TO_ADDON_3(data,poppack,poppack.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_poppack_x_ca.paa);

        ammo = "";
        count = 1;
        initSpeed = 0;
        tracersEvery = 0;
        lastRoundsTracer = 0;
        mass = 0.2;

        ACE_asItem = 1;

        PVAR(isPack) = 1;
        PVAR(unpackSound) = QPVAR(unwrap_01);
        PVAR(item_glasses) = QGVAR(pop0);
        PVAR(item_hmd) = QGVAR(pop0_nv);
    };
};