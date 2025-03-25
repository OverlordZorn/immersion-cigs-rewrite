class CfgFunctions
{
    class ADDON
    {
        // tag = "cigs"; // the function will be named TAG_fnc_myOtherFunction
        class COMPONENT
        {
            file = PATH_TO_FUNC;

            class postInit { postInit = 1; };

            class cba_contextMenu { preInit = 1; };

            class arsenalTab {};
        };

        class smoking
        {
            file = PATH_TO_FUNC_SUB(smoking);

            class canStartSmoking {};
            class start_cig_your {};
            class start_cig_their {};
            class start_smoking {};

            class smoking {};

            class canKeepSmoking {};

            class canStopSmoking {};
            class stop_cig {};
        };

        class sucking
        {
            file = PATH_TO_FUNC_SUB(sucking);

            class canStartSucking {};
            class start_suck_self {};
            class start_sucking {};

            class sucking {};

            class canKeepSucking {};

            class canStopSucking {};
            class stop_sucking {};
        };

        class effects
        {
            file = PATH_TO_FUNC_SUB(effects);
            class sound {};
            class smoke {};
            class anim {};

            class refueling {};
        };

        class pack
        {
            file = PATH_TO_FUNC_SUB(pack);

            class canTakeFromPack {};
            class take_from_pack {};

            class removeItemFromMag {};

            class action_pack_children {};
        };

        class lighter
        {
            file = PATH_TO_FUNC_SUB(lighter);

            class hasLighter {};
            class getLighter {};
            class useLighter {};
        };

        class singleplayer
        {
            file = PATH_TO_FUNC_SUB(singleplayer);
            class addItemsInSP { postInit = 1; };
        };
        class config
        {
            file = PATH_TO_FUNC_SUB(config);
            class getCfgDataRandom {};
            class getAllItems {};
            class getCached {};
        };
        class eat_cig
        {
            file = PATH_TO_FUNC_SUB(eat_cig);
            class addEatAction { preInit = 1; };
            class canEat {};
        };
        class cigs_on_ai
        {
            file = PATH_TO_FUNC_SUB(cigs_on_ai);
            class preInit { preInit = 1; };

            class cbaSetting_addSetting {};
            class cbaSetting_perSide {};

            class hashmap {};

            class apply {};

            class queue {};
        };
    };
};