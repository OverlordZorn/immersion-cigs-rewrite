class CfgMagazines {
    class PVAR(lighter);
    class PVAR(matches);
    class EGVAR(morley,cigpack);

    class murshun_cigs_lighter : PVAR(lighter)
    {
        scope = 1;
        displayName = "DEPRICATED";
    };

    class murshun_cigs_matches : PVAR(matches)
    {
        scope = 1;
        displayName = "DEPRICATED";
    };

    class murshun_cigs_cigpack : EGVAR(morley,cigpack)
    {
        scope = 1;
        displayName = "DEPRICATED";
    };
};
