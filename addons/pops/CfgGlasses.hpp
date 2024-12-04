class CfgGlasses {
    class None;

    class GVAR(pop0): None {
        // Vanilla Data
        scope = 2;
        author = CSTRING(author);
        mass = 0.2;

        displayName = CSTRING(pop);
        descriptionShort = ECSTRING(core,face_stage0);

        model = PATH_TO_ADDON_3(data,pop,pop.p3d);
        picture = PATH_TO_ADDON_3(data,ui,gear_pop0_x_ca.paa);
        identityTypes[] = {};

        // Commmon Data
        PVAR(maxTime) = 330;
        PVAR(initStateTime) = 0;
        PVAR(nextState) = "";

        // Specific Data
        PVAR(isSuckable) = 1;

        PVAR(flavour)[] = {"banana", "cherry", "strawberry", "raspberry", "bacon", "nicotine", "tomato", "chocolate", "lemon", "cola"}; 
        PVAR(sounds)[] = {QPVAR(eat_01), QPVAR(eat_02), QPVAR(eat_03), QPVAR(eat_04), QPVAR(eat_05), QPVAR(eat_06), QPVAR(eat_07)};

        // Compat Data
        KJW_Imposters_SuspicionAmount = 0;
    };
};