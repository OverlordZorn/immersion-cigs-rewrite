class CfgMagazines {
    class CA_Magazine;

    class GVAR(crayonpack): CA_Magazine {
        author = CSTRING(author);
        scope = 2;

        displayName = CSTRING(crayonpack);
        descriptionShort = CSTRING(crayonpack_desc);
        model = PATH_TO_ADDON_3(data,crayonpack,crayonpack.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayonpack_ca.paa);

        ammo = "";
        count = 24; 
        initSpeed = 0;
        tracersEvery = 0;
        lastRoundsTracer = 0;
        mass = 0.2;

        ACE_asItem = 1;

        PVAR(isPack) = 1;
        PVAR(unpackSound) = QPVAR(unwrap);
        PVAR(item_glasses)[] = {QGVAR(crayon_black), QGVAR(crayon_blue), QGVAR(crayon_brown), QGVAR(crayon_gray), QGVAR(crayon_green), QGVAR(crayon_), QGVAR(crayon_orange), QGVAR(crayon_pink), QGVAR(crayon_purple), QGVAR(crayon_red), QGVAR(crayon_white), QGVAR(crayon_yellow)};
        PVAR(item_hmd)[] = {QGVAR(crayon_black_nv), QGVAR(crayon_blue_nv), QGVAR(crayon_brown_nv), QGVAR(crayon_gray_nv), QGVAR(crayon_green_nv), QGVAR(crayon__nv), QGVAR(crayon_orange_nv), QGVAR(crayon_pink_nv), QGVAR(crayon_purple_nv), QGVAR(crayon_red_nv), QGVAR(crayon_white_nv), QGVAR(crayon_yellow_nv)};
    };
};