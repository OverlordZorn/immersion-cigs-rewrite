#define SOUND(name,volume,pitch,distance)\
class PVAR(name) {\
    sound[] = {PATH_TO_ADDON_3(data,sounds,name##.ogg), volume, pitch, distance};\
    titles[] = {};\
}


class CfgSounds {
    sounds[] = {};

    SOUND(unwrap_01,4,1,30);

    SOUND(matches_01,4,1,30);
    SOUND(matches_02,4,1,30);

    SOUND(lighter_01,4,1,30);
    SOUND(lighter_02,4,1,30);

    SOUND(eat_01,4,1,30);
    SOUND(eat_02,4,1,30);
    SOUND(eat_03,4,1,30);
    SOUND(eat_04,4,1,30);
    SOUND(eat_05,4,1,30);
    SOUND(eat_06,4,1,30);
    SOUND(eat_07,4,1,30);

    SOUND(eat_bread_1,4,1,30);
    SOUND(eat_bread_2,4,1,30);
    SOUND(eat_bread_3,4,1,30);
    SOUND(eat_bread_4,4,1,30);
    SOUND(eat_bread_5,4,1,30);
};
