// NVG's are defined within CfgWeapons
// The Facewear Version is defined in CfgGoggles

class CfgWeapons {
	class NVGoggles;

    class GVAR(cig0_nv): NVGoggles {
        visionMode[] = {"Normal"};
		thermalMode[] = {0};
		modelOptics[] = {};
		opticsPPEffects[] = {};

        scope = 2;
        author = CSTRING(author);
        mass = 0.02;

        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,hmd_stage0);

        model = PATH_TO_ADDON_3(data,cigs,cig0.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig0_x_ca.paa);

        PVAR(maxTime) = 330;
        PVAR(initStateTime) = 0;
        PVAR(nextState) = QGVAR(cig1_nv);

        PVAR(isSmokable) = 1;
        PVAR(smokeMultiplier) = 1;

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigs,cig0.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigs,cig0.p3d);
            mass = 0.02;
        };

        KJW_Imposters_SuspicionAmount = 0;
    };

    class GVAR(cig1_nv): GVAR(cig0_nv) {
        scope = _DEBUG_SCOPE_;

        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,hmd_stage1);

        model = PATH_TO_ADDON_3(data,cigs,cig1.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig1_x_ca.paa);

        PVAR(initStateTime) = 6;
        PVAR(nextState) = QGVAR(cig2_nv);

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigs,cig1.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigs,cig1.p3d);
        };
    };

    class GVAR(cig2_nv): GVAR(cig0_nv) {
        scope = _DEBUG_SCOPE_;

        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,hmd_stage2);

        model = PATH_TO_ADDON_3(data,cigs,cig2.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig2_x_ca.paa);

        PVAR(initStateTime) = 66;
        PVAR(nextState) = QGVAR(cig3_nv);

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigs,cig2.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigs,cig2.p3d);
        };
    };

    class GVAR(cig3_nv): GVAR(cig0_nv) {
        scope = _DEBUG_SCOPE_;

        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,hmd_stage3);

        model = PATH_TO_ADDON_3(data,cigs,cig3.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig3_x_ca.paa);

        PVAR(initStateTime) = 126;
        PVAR(nextState) = QGVAR(cig4_nv);

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigs,cig3.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigs,cig3.p3d);
        };
    };

    class GVAR(cig4_nv): GVAR(cig0_nv) {
        scope = _DEBUG_SCOPE_;

        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,hmd_stage4);

        model = PATH_TO_ADDON_3(data,cigs,cig4.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cig4_x_ca.paa);

        PVAR(initStateTime) = 306;
        PVAR(nextState) = "";

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigs,cig4.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigs,cig4.p3d);
        };
    };
};