class Templates 
{
    class Vanilla_Civ_Zombie; // import from Misc\templates.hpp in main ultimate mod

    class Corrupted_Civ_Zombie_Base : Vanilla_Civ_Zombie
    {
        requiredAddons[] = {"WBK_ZombieCreatures", "SSV_Android_Zombies"};
        logo = QPATHTOFOLDER(Pictures\antistasi_ultimate_logo.paa);
        flagTexture = "a3\ui_f\data\logos\arma3_white_ca.paa";
    };

    class Corrupted_Civ_Zombie : Corrupted_Civ_Zombie_Base
    {
        name = "Corrupted";
        file = "Corrupted_Civ_Zombie";
        description = "All android life was wiped out, being replaced by Corrupted. Corrupted are android shells, stripped down to their onboard programming.";
    };
};