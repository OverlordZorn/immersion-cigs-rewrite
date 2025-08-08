// NVG's are defined within CfgWeapons
// The Facewear Version is defined in CfgGlasses

class CfgGlasses {
    class EGVAR(base,cigBase);

    class GVAR(cig0): EGVAR(base,cigBase) {
        scope = 2;
        author = CSTRING(author);

        displayName = CSTRING(cigarette);
        descriptionShort = ECSTRING(core,glasses_stage0);

        model = QPATHTOF(data\cigs\cig0.p3d);
        picture = QPATHTOF(data\ui\gear_cig0_x_ca.paa); // From Addon

        hiddenSelections[]={ };
        hiddenSelectionsTextures[] = { };
        hiddenSelectionsMaterials[] = { };

        PVAR(totalPuffs) = TOTALPUFFS;
        PVAR(curStage) = 0;
        
    };

    class GVAR(cig1): GVAR(cig0) {
        scope = _DEBUG_SCOPE_;
        descriptionShort = ECSTRING(core,glasses_stage1);

        model = QPATHTOF(data\cigs\cig1.p3d);
        picture = QPATHTOF(data\ui\gear_cig1_x_ca.paa);

        PVAR(curStage) = 1;
        
    };

    class GVAR(cig2): GVAR(cig1) {

        descriptionShort = ECSTRING(core,glasses_stage2);

        model = QPATHTOF(data\cigs\cig2.p3d);
        picture = QPATHTOF(data\ui\gear_cig2_x_ca.paa);

        PVAR(curStage) = 2;
        
    };

    class GVAR(cig3): GVAR(cig1) {
        descriptionShort = ECSTRING(core,glasses_stage3);

        model = QPATHTOF(data\cigs\cig3.p3d);
        picture = QPATHTOF(data\ui\gear_cig3_x_ca.paa);

        PVAR(curStage) = 3;
        
    };

    class GVAR(cig4): GVAR(cig1) {
        descriptionShort = ECSTRING(core,glasses_stage4);

        model = QPATHTOF(data\cigs\cig4.p3d);
        picture = QPATHTOF(data\ui\gear_cig4_x_ca.paa);

        PVAR(curStage) = 4;
        
    };
};
