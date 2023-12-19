class Templates {
    class Vanilla_Base; //import Vanilla_Base from A3A to use with defining a new vanilla template

    class Vanilla_AAF { // overwrite existing template
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        file = "Vanilla_AI_AAF";
    };

    class Vanilla_AAF2 : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Riv, Civ
        flagTexture = "a3\data_f\flags\flag_aaf_co.paa"; //path to an icon to be displayed in the selector
        name = "A3 AAF 2"; //the name shown in the selector
        file = "Vanilla_AI_AAF2"; //the template file name
        maps[] = {}; //if this template should be prioritized on any maps (case sensetive to worldName)
        climate[] = {"arid", "arctic"}; //climate that the template is meant for
    };
};
