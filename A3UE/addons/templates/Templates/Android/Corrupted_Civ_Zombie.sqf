//////////////////////////////
//   Civilian Information   //
//////////////////////////////

["attributeCivNonHuman", true] call _fnc_saveToTemplate; // This is the main part that allows this template to act as "non-humans", e.g no civ rep loss

//////////////////////////
//       Vehicles       //
//////////////////////////

private _civCarsWithWeights = [
    "C_Quadbike_01_F", 0.3
];

["vehiclesCivCar", _civCarsWithWeights] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
    "C_Van_01_transport_F", 1.0,
    "C_Van_01_box_F", 0.8,
    "C_Truck_02_transport_F", 0.5,
    "C_Truck_02_covered_F", 0.5,
    "C_Tractor_01_F", 0.3
]] call _fnc_saveToTemplate;

["vehiclesCivBoat", [
    "C_Boat_Civil_01_rescue_F", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivRepair", [
    "C_Offroad_01_repair_F", 0.3
]] call _fnc_saveToTemplate;

["vehiclesCivMedical", ["C_Van_02_medevac_F", 0.1]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "C_Van_01_fuel_F", 0.2
]] call _fnc_saveToTemplate;

["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "U_C_Man_casual_1_F"
];

["uniforms", _civUniforms] call _fnc_saveToTemplate;

["headgear", []] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _civUniforms];
_loadoutData set ["workerUniforms", ["U_C_WorkerCoveralls", "U_C_Uniform_Farmer_01_F"]];
_loadoutData set ["pressVests", []];
_loadoutData set ["helmets", []];
_loadoutData set ["pressHelmets", []];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];

private _manTemplate = {
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["workerHelmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

// This array (and the weights one below it), defines units and stuff that get used in towns
private _specialUnits = [
    "Zombie_O_Walker_Civ",
    "Zombie_O_Shambler_Civ",
    "Zombie_O_RC_Civ",
    "Zombie_Special_OPFOR_Screamer",
    "Zombie_Special_OPFOR_Leaper_2"
];

private _specialUnitsWeights = [
    1.0,
    0.8,
    0.3,
    0.15,
    0.05
];

private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate], // to-do: allow press to spawn but make them special infected
    ["Worker", _workerTemplate], // needed to be normal for resources, factories, etc
    ["Man", _manTemplate],
    ["Special", _manTemplate, [["baseClass", [_specialUnits, _specialUnitsWeights], true]]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;