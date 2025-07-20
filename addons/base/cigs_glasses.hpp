// This file handles the default values

    class None;

    class PVAR(cigBase_glasses): None {
        scope = 0;
        author = "";
        mass = 0.02;
        displayName = "";
        descriptionShort = "";

        model = "";
        picture = "";
        identityTypes[] = {};

        // Camo is cigarette body, CamoB is lit portion. Defined in p3d. These names are in OFP2_ManSkeleton, no model.cfg change is needed.
        hiddenSelections[] = { "Camo", "CamoB" };

    	// Texture paths for the hiddenSelections are defined in an array in the same order as listed in hiddenSelections:
		hiddenSelectionsTextures[] = {  QPATHTOF(data\cigs\cigs.paa), QPATHTOF(data\cigs\cigs.paa) };
		hiddenSelectionsMaterials[] = {  QPATHTOF(data\cigs\cigs.rvmat), QPATHTOF(data\cigs\cigs_lit.rvmat) };

        PVAR(maxTime) = 0;
        PVAR(initStateTime) = 0;
        PVAR(nextState) = "";

        PVAR(isSmokable) = 1;
        PVAR(smokeMultiplier) = 1;

        PVAR(smokeSound)[] = {QPVAR(smoke_3),QPVAR(smoke_4)};

        KJW_Imposters_SuspicionAmount = 0;
    };

    class GVAR(cig0): GVAR(cigBase_glasses) {

        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,cigs,cig0.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig0_x_ca.paa);

        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = QGVAR(cig1);

        PVAR(isSmokable) = 1;
        PVAR(smokeMultiplier) = 1;
    };


    class GVAR(cig1): GVAR(cig0) {

        descriptionShort = ECSTRING(core,face_stage1);

        model = PATH_TO_ADDON_3(data,cigs,cig1.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig1_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_1;
        PVAR(nextState) = QGVAR(cig2);
    };

    class GVAR(cig2): GVAR(cig0) {
        descriptionShort = ECSTRING(core,face_stage2);

        model = PATH_TO_ADDON_3(data,cigs,cig2.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig2_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_2;
        PVAR(nextState) = QGVAR(cig3);
    };

    class GVAR(cig3): GVAR(cig0) {
        scope = 0;
        author = CSTRING(author);
        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,face_stage3);

        model = PATH_TO_ADDON_3(data,cigs,cig3.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig3_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_3;
        PVAR(nextState) = QGVAR(cig4);
    };

    class GVAR(cig4): GVAR(cig0) {
        scope = 0;
        author = CSTRING(author);
        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,face_stage4);

        model = PATH_TO_ADDON_3(data,cigs,cig4.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig4_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_4;
        PVAR(nextState) = "";
    };