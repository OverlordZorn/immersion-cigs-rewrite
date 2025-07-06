class CfgGlasses {
    class None;

    class GVAR(crayon_black): None {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_black_ca.paa);
        identityTypes[] = {};
        
        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_black_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "existential anguish"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_blue): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_blue_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_blue_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "blue on blue"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_brown): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_brown_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_brown_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "flesh"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_gray): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_gray_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_gray_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "moral ambiguity gray"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_green): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_green_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_green_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "gan green"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_orange): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_orange_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_orange_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "agent orange"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_pink): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_pink_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_pink_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "pink mist"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_purple): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_purple_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_purple_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "purple heart"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_red): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_red_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_red_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "danger close"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_white): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_white_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_white_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "white phosphorus"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_yellow): GVAR(crayon_black) {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,crayon,crayon.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_crayon_yellow_ca.paa);
        identityTypes[] = {};

        // Textures
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {PATH_TO_ADDON_3(data,crayon,crayon_yellow_CO.paa)};

        // Commmon Data
        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour) = "hazard pay"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0.1;
    };
};
