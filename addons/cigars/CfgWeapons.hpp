// NVG's are defined within CfgWeapons
// The Facewear Version is defined in CfgGoggles

class CfgWeapons {
	class NVGoggles;

    class GVAR(cigar0_nv): NVGoggles {

        visionMode[] = {"Normal"};
		thermalMode[] = {0};
		modelOptics[] = {};
		opticsPPEffects[] = {};

        scope = 2;
        author = CSTRING(author);
        mass = 0.1;

        displayName = CSTRING(cigar);
        descriptionShort = ECSTRING(core,hmd_stage0);

        model = PATH_TO_ADDON_3(data,cigars,cigar0.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar0_x_ca.paa);

        PVAR(isSmokable) = 1;
        PVAR(smokeMultiplier) = 2;

        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = QGVAR(cigar1_nv);


        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigars,cigar0.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigars,cigar0.p3d);
        };

        KJW_Imposters_SuspicionAmount = 0;
    };

    class GVAR(cigar1_nv): GVAR(cigar0_nv) {
        scope = _DEBUG_SCOPE_;

        descriptionShort = ECSTRING(core,hmd_stage1);

        model = PATH_TO_ADDON_3(data,cigars,cigar1.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar1_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_1;
        PVAR(nextState) = QGVAR(cigar2_nv);

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigars,cigar1.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigars,cigar1.p3d);
        };
    };

    class GVAR(cigar2_nv): GVAR(cigar0_nv) {
        descriptionShort = ECSTRING(core,hmd_stage2);

        model = PATH_TO_ADDON_3(data,cigars,cigar2.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar2_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_2;
        PVAR(nextState) = QGVAR(cigar3_nv);

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigars,cigar2.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigars,cigar2.p3d);
        };
    };

    class GVAR(cigar3_nv): GVAR(cigar0_nv) {
        descriptionShort = ECSTRING(core,hmd_stage3);

        model = PATH_TO_ADDON_3(data,cigars,cigar3.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar3_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_3;
        PVAR(nextState) = QGVAR(cigar4_nv);

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigars,cigar3.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigars,cigar3.p3d);
        };
    };

    class GVAR(cigar4_nv): GVAR(cigar0_nv) {

        descriptionShort = ECSTRING(core,hmd_stage4);

        model = PATH_TO_ADDON_3(data,cigars,cigar4.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar4_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_4;
        PVAR(nextState) = "";

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = PATH_TO_ADDON_3(data,cigars,cigar4.p3d);
	    	modelOff = PATH_TO_ADDON_3(data,cigars,cigar4.p3d);
        };
    };
};
