// NVG's are defined within CfgWeapons
// The Facewear Version is defined in CfgGlasses

class CfgGlasses {

    class None;
    
    class GVAR(cigar0): None {
        scope = 2;
        author = CSTRING(author);
        mass = 0.1;
  
        identityTypes[] = {};

        displayName = "Cigar";
        model = PATH_TO_ADDON_3(data,cigars,cigar0.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar0_x_ca);

        PVAR(maxTime) = 660;

        PVAR(initStateTime) = 0;
        PVAR(nextState) = QPVAR(cigar1);

        PVAR(isSmokable) = 1;
        PVAR(smokeMultiplier) = 2;

        KJW_Imposters_SuspicionAmount = 0;
    };

    class GVAR(cigar1): GVAR(cigar0) {
        scope = 1;

        displayName = "Cigar (Stage 1)";
        model = PATH_TO_ADDON_3(data,cigars,cigar1.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar1_x_ca);

        PVAR(initStateTime) = 12;
        PVAR(nextState) = QPVAR(cigar2);
    };

    class GVAR(cigar2): GVAR(cigar0) {
        scope = 1;

        displayName = "Cigar (Stage 2)";
        model = PATH_TO_ADDON_3(data,cigars,cigar2.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar2_x_ca);

        PVAR(initStateTime) = 132;
        PVAR(nextState) = QPVAR(cigar3);
    };

    class GVAR(cigar3): GVAR(cigar0) {
        scope = 1;

        displayName = "Cigar (Stage 3)";
        model = PATH_TO_ADDON_3(data,cigars,cigar3.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar3_x_ca);

        PVAR(initStateTime) = 252;
        PVAR(nextState) = QPVAR(cigar4);
    };

    class GVAR(cigar4): GVAR(cigar0) {
        scope = 1;

        displayName = "Cigar (Stage 4)";
        model = PATH_TO_ADDON_3(data,cigars,cigar4.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_cigar4_x_ca);

        PVAR(initStateTime) = 612;
        PVAR(nextState) = "";
    };
};