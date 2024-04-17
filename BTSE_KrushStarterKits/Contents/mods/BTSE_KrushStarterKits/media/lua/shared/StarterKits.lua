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
    ["unemployed"] = {
        ["Base.Garbagebag"] = 1,
        ["Base.WaterBottleFull"] = 1,
        ["Base.Crisps"] = 1,
        ["Base.Bag_FannyPackFront"] = 1,
        ["Base.Duffelbag"] = 1,
    },
    ["fireofficer"] = {
        ["Base.Axe"] = 1,
        ["Base.Hat_Fireman"] = 1,
        ["Base.Hat_DustMask"] = 1,
        ["Base.Bag_SatchelPolice"] = 1,
    },
    ["policeofficer"] = {
        ["Base.M9"] = 1,
        ["Base.9mmClip"] = 1,
        ["Base.Bullets9mmBox"] = 1,
        ["Base.Hat_Police"] = 1,
        ["Base.Glasses_Aviators"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["parkranger"] = {
        ["Base.WaterBottleFull"] = 1,
        ["Base.Hat_Ranger"] = 1,
        ["Base.Bag_NormalHikingBag"] = 1,
    },
    ["constructionworker"] = {
        ["Base.MetalPipe"] = 1,
        ["Base.Lunchbox"] = 1,
        ["Base.Hat_HardHat"] = 1,
        ["Base.Glasses_SafetyGoggles"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["securityguard"] = {
        ["Base.Nightstick"] = 1,
        ["Base.HandTorch"] = 1,
        ["Base.Battery"] = 1,
        ["Base.Bag_FannyPackFront"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["carpenter"] = {
        ["Base.Hammer"] = 1,
        ["Base.Saw"] = 1,
        ["Base.NailsBox"] = 1,
        ["Base.Glasses_SafetyGoggles"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["burglar"] = {
        ["Base.Crowbar"] = 1,
        ["Hat_BalaclavaFull"] = 1,
        ["Base.Bag_Schoolbag"] = 1,
    },
    ["chef"] = {
        ["Base.Pan"] = 1,
        ["Base.KitchenKnife"] = 1,
        ["Base.TinOpener"] = 1,
        ["Hat_ChefHat"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["repairman"] = {
        ["Base.Hammer"] = 1,
        ["Base.Glue"] = 1,
        ["Base.DuctTape"] = 1,
        ["Base.Toolbox"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["farmer"] = {
        ["Base.Shovel"] = 1,
        ["Base.TomatoBagSeed"] = 1,
        ["Base.Dirtbag"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["fisherman"] = {
        ["Base.FishingRod"] = 1,
        ["Base.FishingNet"] = 1,
        ["Base.FishingTackle"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["doctor"] = {
        ["Base.Scalpel"] = 1,
        ["Base.SutureNeedle"] = 1,
        ["Base.SutureNeedleHolder"] = 1,
        ["Base.Tweezers"] = 1,
        ["Base.Gloves_Surgical"] = 1,
        ["Base.Hat_SurgicalMask_Blue"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["veteran"] = {
        ["Base.Ithaca37"] = 1,
        ["Base.ShotgunShellsBox"] = 1,
        ["Base.Hat_BonnieHat_CamoGreen"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["nurse"] = {
        ["Base.Scissors"] = 1,
        ["Base.Bandaid"] = 1,
        ["Base.AlcoholWipes"] = 1,
        ["Base.Pills"] = 1,
        ["Base.Hat_SurgicalCap_Blue"] = 1,
        ["Base.FirstAidKit"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["lumberjack"] = {
        ["Base.Axe"] = 1,
        ["Base.Hat_Raccoon"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["fitnessInstructor"] = {
        ["Base.PillsVitamins"] = 1,
        ["Base.Hat_Sweatband"] = 1,
        ["Base.Earbuds"] = 1,
        ["Base.BathTowel"] = 1,
        ["Base.Hat_VisorRed"] = 1,
        ["Base.Duffelbag"] = 1,
    },
    ["burgerflipper"] = {
        ["Base.GriddlePan"] = 1,
        ["Base.MeatCleaver"] = 1,
        ["Base.Burger"] = 1,
        ["Base.Hat_FastFood_Spiffo"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["electrician"] = {
        ["Base.Screwdriver"] = 1,
        ["Base.Battery"] = 1,
        ["Base.Glue"] = 1,
        ["Base.Gloves_LeatherGloves"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["engineer"] = {
        ["Base.MetalPipe"] = 1,
        ["Base.Saw"] = 1,
        ["Base.Twine"] = 1,
        ["Base.Glasses_SafetyGoggles"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["metalworker"] = {
        ["Base.WeldingMask"] = 1,
        ["Base.BlowTorch"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
    ["mechanics"] = {
        ["Base.Spanner"] = 1,
        ["Base.LugWrench"] = 1,
        ["Base.TirePump"] = 1,
        ["Base.Jack"] = 1,
        ["Base.Glasses_SafetyGoggles"] = 1,
        ["Base.Bag_Satchel"] = 1,
    },
};

-- add a vehicle to kits if wanted and/or needed

PARP.Chat.Compensation["kitVehicles"] = PARP.Chat.Compensation["kitVehicles"] or {
    -- if you want a car to be spawned (with key, condition according to sandbox settings, and half a tank of gas), you can link the kit name to a vehicle id here.
    -- use the kit names you defined above as the key on the left and add the full vehicle id as value
    --["carpenter"] = "Base.Van",
};
