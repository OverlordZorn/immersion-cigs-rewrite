class CfgMagazines {
    class PVAR(lighter);
    class murshun_cigs_lighter : PVAR(lighter)
    {
        scope = 1;
        displayName = "DEPRECATED";
        PVAR(replacementItems) = QPVAR(lighter);
    };

    class PVAR(matches);
    class murshun_cigs_matches : PVAR(matches)
    {
        scope = 1;
        displayName = "DEPRECATED";
        PVAR(replacementItems) = QPVAR(matches);
    };

    class EGVAR(morley,cigpack);
    class murshun_cigs_cigpack : EGVAR(morley,cigpack)
    {
        scope = 1;
        displayName = "DEPRECATED";
        PVAR(replacementItems) = QEGVAR(morley,cigpack);
    };
};
