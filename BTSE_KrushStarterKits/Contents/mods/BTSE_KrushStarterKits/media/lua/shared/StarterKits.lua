-- #####################################
-- THIS REQUIRES BTSE_Chat to be enabled
-- #####################################

-- place this file, under the same name and path (lua/shared/StarterKits.lua) inside your own server mod and load that mod after BTSE, if possible

-- init namespaces in case of load order snafu

PARP = PARP or {};
PARP.Chat = PARP.Chat or {};
PARP.Chat.Compensation = PARP.Chat.Compensation or {};

-- every kit gets these items

PARP.Chat.Compensation["kitBasics"] = PARP.Chat.Compensation["kitBasics"] or {
    -- the items listed here will automatically be included with every kit. if a specialized kit sets different numbers with the same item id they are overridden
    -- always use the full type, like here:
    --["Base.Cigarettes"] = 20,
    --["Base.Lighter"] = 1,
};

-- specific kits in addition to basic stuff

PARP.Chat.Compensation["kits"] = PARP.Chat.Compensation["kits"] or {
    -- you can add as many kits as you like just by adding them below
    -- this is a special kit the player can choose
};

-- add a vehicle to kits if wanted and/or needed

PARP.Chat.Compensation["kitVehicles"] = PARP.Chat.Compensation["kitVehicles"] or {
    -- if you want a car to be spawned (with key, condition according to sandbox settings, and half a tank of gas), you can link the kit name to a vehicle id here.
    -- use the kit names you defined above as the key on the left and add the full vehicle id as value
    --["carpenter"] = "Base.Van",
};

-- below I manually set each kit incase we want to support multiple mods all adding kits

PARP.Chat.Compensation["kits"]["unemployed"] = {
    ["Base.Bag_DuffelBag"] = 1,
    ["Base.Bag_FannyPackFront"] = 1,
    ["Base.Crisps"] = 1,
    ["Base.Garbagebag"] = 1,
    ["Base.WaterBottleFull"] = 1,
};

PARP.Chat.Compensation["kits"]["fireofficer"] = {
    ["Base.Axe"] = 1,
    ["Base.Bag_DuffelBag"] = 1,
    ["Base.Hat_DustMask"] = 1,
    ["Base.Hat_Fireman"] = 1,
};

PARP.Chat.Compensation["kits"]["policeofficer"] = {
    ["Base.9mmClip"] = 1,
    ["Base.Bag_DuffelBag"] = 1,
    ["Base.Bullets9mmBox"] = 1,
    ["Base.Glasses_Aviators"] = 1,
    ["Base.Hat_Police"] = 1,
    ["Base.M9"] = 1,
};

PARP.Chat.Compensation["kits"]["parkranger"] = {
    ["Base.Bag_NormalHikingBag"] = 1,
    ["Base.Hat_Ranger"] = 1,
    ["Base.WaterBottleFull"] = 1,
    ["Base.WoodenStick"] = 1,
};

PARP.Chat.Compensation["kits"]["constructionworker"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Glasses_SafetyGoggles"] = 1,
    ["Base.Hat_HardHat"] = 1,
    ["Base.Lunchbox"] = 1,
    ["Base.MetalPipe"] = 1,
};

PARP.Chat.Compensation["kits"]["securityguard"] = {
    ["Base.Bag_FannyPackFront"] = 1,
    ["Base.Bag_Satchel"] = 1,
    ["Base.Battery"] = 1,
    ["Base.HandTorch"] = 1,
    ["Base.Nightstick"] = 1,
};

PARP.Chat.Compensation["kits"]["carpenter"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Glasses_SafetyGoggles"] = 1,
    ["Base.Hammer"] = 1,
    ["Base.NailsBox"] = 1,
    ["Base.Saw"] = 1,
    ["Base.Toolbox"] = 1,
};

PARP.Chat.Compensation["kits"]["burglar"] = {
    ["Base.Bag_Schoolbag"] = 1,
    ["Base.Crowbar"] = 1,
    ["Base.Hat_BalaclavaFull"] = 1,
};

PARP.Chat.Compensation["kits"]["chef"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Hat_ChefHat"] = 1,
    ["Base.KitchenKnife"] = 1,
    ["Base.Pan"] = 1,
    ["Base.TinOpener"] = 1,
};

PARP.Chat.Compensation["kits"]["repairman"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.DuctTape"] = 1,
    ["Base.Glue"] = 1,
    ["Base.Hammer"] = 1,
    ["Base.Toolbox"] = 1,
}

PARP.Chat.Compensation["kits"]["farmer"] = {
    ["farming.CarrotBagSeed"] = 1,
    ["farming.TomatoBagSeed"] = 1,
    ["Base.Bag_Satchel"] = 1,
    ["Base.Dirtbag"] = 1,
    ["Base.Shovel"] = 1,
};

PARP.Chat.Compensation["kits"]["fisherman"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.FishingNet"] = 1,
    ["Base.FishingRod"] = 1,
    ["Base.FishingTackle"] = 1,
};

PARP.Chat.Compensation["kits"]["doctor"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Gloves_Surgical"] = 1,
    ["Base.Hat_SurgicalMask_Blue"] = 1,
    ["Base.Scalpel"] = 1,
    ["Base.SutureNeedle"] = 1,
    ["Base.SutureNeedleHolder"] = 1,
    ["Base.Tweezers"] = 1,
};

PARP.Chat.Compensation["kits"]["veteran"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Hat_BonnieHat_CamoGreen"] = 1,
    ["Base.Ithaca_M37"] = 1,
    ["Base.ShotgunShellsBox"] = 1,
};

PARP.Chat.Compensation["kits"]["nurse"] = {
    ["Base.AlcoholWipes"] = 1,
    ["Base.Bag_Satchel"] = 1,
    ["Base.Bandaid"] = 1,
    ["Base.FirstAidKit"] = 1,
    ["Base.Hat_SurgicalCap_Blue"] = 1,
    ["Base.Pills"] = 1,
    ["Base.Scissors"] = 1,
};

PARP.Chat.Compensation["kits"]["lumberjack"] = {
    ["Base.WoodAxe"] = 1,
    ["Base.Bag_Satchel"] = 1,
    ["Base.Hat_Raccoon"] = 1,
};

PARP.Chat.Compensation["kits"]["fitnessInstructor"] = {
    ["Base.Bag_DuffelBag"] = 1,
    ["Base.BathTowel"] = 1,
    ["Base.Earbuds"] = 1,
    ["Base.Hat_Sweatband"] = 1,
    ["Base.Hat_VisorRed"] = 1,
    ["Base.PillsVitamins"] = 1,
};

PARP.Chat.Compensation["kits"]["burgerflipper"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Burger"] = 1,
    ["Base.GridlePan"] = 1,
    ["Base.Hat_FastFood_Spiffo"] = 1,
    ["Base.MeatCleaver"] = 1,
};

PARP.Chat.Compensation["kits"]["electrician"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Battery"] = 1,
    ["Base.Gloves_LeatherGloves"] = 1,
    ["Base.Glue"] = 1,
    ["Base.Screwdriver"] = 1,
};

PARP.Chat.Compensation["kits"]["engineer"] = {
    ["Base.Bag_Satchel"] = 1,
    ["Base.Glasses_SafetyGoggles"] = 1,
    ["Base.MetalPipe"] = 1,
    ["Base.Saw"] = 1,
    ["Base.Twine"] = 1,
};

PARP.Chat.Compensation["kits"]["metalworker"] = {
    ["Base.BlowTorch"] = 1,
    ["Base.SheetMetal"] = 1,
    ["Base.Toolbox"] = 1,
    ["Base.WeldingMask"] = 1,
};

PARP.Chat.Compensation["kits"]["mechanics"] = {
    ["Base.Glasses_SafetyGoggles"] = 1,
    ["Base.Jack"] = 1,
    ["Base.LugWrench"] = 1,
    ["Base.TirePump"] = 1,
    ["Base.Toolbox"] = 1,
    ["Base.Wrench"] = 1,
};
