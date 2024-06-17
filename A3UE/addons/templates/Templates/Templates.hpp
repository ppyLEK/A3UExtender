class Templates 
{
    class Vanilla_Base; //import Vanilla_Base from A3A to use with defining a new vanilla template

    class Vanilla_AAF
    { // overwrite existing template
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        name = "A3 AAF (OVERWRITTEN)"; // Name shown in the select menu. If this is removed, it will use the name of the template you are overwriting. Remove this for "silent" changes
        file = "Vanilla_AI_AAF";
    };

    class Vanilla_AAF_New : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa); // Path to an icon to be displayed in the select menu.
        name = "A3 AAF (NEW)"; // Name shown in the select menu.
        file = "Vanilla_AI_AAF_New"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "This is a new template, called the New AAF!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};

/*
    Climates:
    {"arid", "arctic", "temperate", "tropical"}
*/