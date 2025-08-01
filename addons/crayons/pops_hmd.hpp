// NVG's are defined within CfgWeapons
// The Facewear Version is defined in CfgGoggles

class CfgWeapons {
	class EGVAR(pops,popBase_nv);

    class GVAR(crayon_black_nv): EGVAR(pops,popBase_nv) {
        //Meta Data
        scope = 2;
        author = CSTRING(author);

        displayName = CSTRING(crayon);
        descriptionShort = ECSTRING(core,hmd_stage0);

        // Model/Textures
        model = QPATHTOF(data\crayon\crayon.p3d);
        picture = QPATHTOF(data\ui\gear_crayon_black_ca.paa);
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_black_CO.paa)};

        mass = 0.02;

        PVAR(maxTime) = MAXTIME;
        PVAR(initStateTime) = INITSTATETIME_VARIANT_0;

        PVAR(flavour) =  "existential anguish"; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        class ItemInfo
        {
            type = 616;
            hmdType = 0;
    		uniformModel = QPATHTOF(data\crayon\crayon.p3d);
	    	modelOff = QPATHTOF(data\crayon\crayon.p3d);
            mass = 0.02;
            hiddenSelections[] = {"camo"};
        };
        KJW_Imposters_SuspicionAmount = 0.1;
    };

    class GVAR(crayon_blue_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_blue_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_blue_ca.paa);
        PVAR(flavour) =  "blue on blue";
    };

    class GVAR(crayon_brown_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_brown_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_brown_ca.paa);
        PVAR(flavour) =  "flesh";
    };

    class GVAR(crayon_gray_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_gray_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_gray_ca.paa);
        PVAR(flavour) =  "moral ambiguity gray"; 
    };

    class GVAR(crayon_green_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_green_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_green_ca.paa);
        PVAR(flavour) =  "gan green"; 
    };

    class GVAR(crayon_orange_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_orange_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_orange_ca.paa);
        PVAR(flavour) =  "agent orange"; 
    };

    class GVAR(crayon_pink_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_pink_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_pink_ca.paa);
        PVAR(flavour) =  "pink mist"; 
    };

    class GVAR(crayon_purple_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_purple_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_purple_ca.paa);
        PVAR(flavour) =  "purple heart"; 
    };

    class GVAR(crayon_red_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_red_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_red_ca.paa);
        PVAR(flavour) =  "danger close"; 
    };

    class GVAR(crayon_white_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_white_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_white_ca.paa);
        PVAR(flavour) =  "white phosphorus"; 
    };

    class GVAR(crayon_yellow_nv): GVAR(crayon_black_nv) {
        hiddenSelectionsTextures[] = {QPATHTOF(data\crayon\crayon_yellow_CO.paa)};
        picture = QPATHTOF(data\ui\gear_crayon_yellow_ca.paa);
        PVAR(flavour) =  "hazard pay"; 
    };
};
