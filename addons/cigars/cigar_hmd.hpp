class CfgWeapons {

    class EGVAR(base,cigBase_nv);

    class GVAR(cigar0_nv): EGVAR(base,cigBase_nv) {

        scope = 2;
        author = CSTRING(author);
        mass = 0.1;

        displayName = CSTRING(cigar);
        descriptionShort = ECSTRING(core,hmd_stage0);

        model = QPATHTOF(data\cigars\cigar0.p3d);
        picture = QPATHTOF(data\ui\gear_cigar0_x_ca.paa);

        // Texture paths for the hiddenSelections are defined in an array in the same order as listed in hiddenSelections:
        hiddenSelections[]={ };
        hiddenSelectionsTextures[] = { };
        hiddenSelectionsMaterials[] = { };

        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;
        PVAR(nextState) = QGVAR(cigar1_nv);

        class ItemInfo {
            type = 616;
            hmdType = 0;
            uniformModel = QPATHTOF(data\cigars\cigar0.p3d);
            modelOff = QPATHTOF(data\cigars\cigar0.p3d);
            mass = 0.1;
        };
    };

    class GVAR(cigar1_nv): GVAR(cigar0_nv) {
        scope = _DEBUG_SCOPE_;

        descriptionShort = ECSTRING(core,hmd_stage1);

        model = QPATHTOF(data\cigars\cigar1.p3d);
        picture = QPATHTOF(data\ui\gear_cigar1_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_1;
        PVAR(nextState) = QGVAR(cigar2_nv);


        class ItemInfo: ItemInfo {
    		uniformModel = QPATHTOF(data\cigars\cigar1.p3d);
	    	modelOff = QPATHTOF(data\cigars\cigar1.p3d);
        };
    };

    class GVAR(cigar2_nv): GVAR(cigar1_nv) {

        descriptionShort = ECSTRING(core,hmd_stage2);

        model = QPATHTOF(data\cigars\cigar2.p3d);
        picture = QPATHTOF(data\ui\gear_cigar2_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_2;
        PVAR(nextState) = QGVAR(cigar3_nv);


        class ItemInfo: ItemInfo {
    		uniformModel = QPATHTOF(data\cigars\cigar2.p3d);
	    	modelOff = QPATHTOF(data\cigars\cigar2.p3d);
        };
    };

    class GVAR(cigar3_nv): GVAR(cigar1_nv) {

        descriptionShort = ECSTRING(core,hmd_stage3);

        model = QPATHTOF(data\cigars\cigar3.p3d);
        picture = QPATHTOF(data\ui\gear_cigar3_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_3;
        PVAR(nextState) = QGVAR(cigar4_nv);

        class ItemInfo: ItemInfo {
    		uniformModel = QPATHTOF(data\cigars\cigar3.p3d);
	    	modelOff = QPATHTOF(data\cigars\cigar3.p3d);
        };
    };

    class GVAR(cigar4_nv): GVAR(cigar1_nv) {

        descriptionShort = ECSTRING(core,hmd_stage4);

        model = QPATHTOF(data\cigars\cigar4.p3d);
        picture = QPATHTOF(data\ui\gear_cigar4_x_ca.paa);

        PVAR(initStateTime) = INITSTATETIME_VARIANT_4;
        PVAR(nextState) = "";

        class ItemInfo: ItemInfo {
    		uniformModel = QPATHTOF(data\cigars\cigar4.p3d);
	    	modelOff = QPATHTOF(data\cigars\cigar4.p3d);
        };
    };
};
