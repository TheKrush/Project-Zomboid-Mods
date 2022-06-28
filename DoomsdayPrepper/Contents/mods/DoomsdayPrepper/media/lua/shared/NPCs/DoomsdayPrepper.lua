require("MainCreationMethods");

BaseGameCharacterDetails.DoDoomsdayProfession = function()

    local doomsdayprepper = ProfessionFactory.addProfession("doomsdayprepper", "Doomsday Prepper", "profession_doomsdayprepper2", 100);

    -- ???
    doomsdayprepper:addFreeTrait("Marksman");

    -- XP Boosts
    doomsdayprepper:addXPBoost(Perks.Strength, 5)
    doomsdayprepper:addXPBoost(Perks.Fitness, 5)

    doomsdayprepper:addXPBoost(Perks.Sprinting, 5)
    doomsdayprepper:addXPBoost(Perks.Nimble, 5)
    doomsdayprepper:addXPBoost(Perks.Lightfoot, 5)
    doomsdayprepper:addXPBoost(Perks.Sneak, 5)

    doomsdayprepper:addXPBoost(Perks.Axe, 2)
    doomsdayprepper:addXPBoost(Perks.Maintenance, 5)
    doomsdayprepper:addXPBoost(Perks.SmallBlunt, 3)
    doomsdayprepper:addXPBoost(Perks.SmallBlade, 3)
    doomsdayprepper:addXPBoost(Perks.Aiming, 3)
    doomsdayprepper:addXPBoost(Perks.Reloading, 2)

    doomsdayprepper:addXPBoost(Perks.Cooking, 3)
    doomsdayprepper:addXPBoost(Perks.Doctor, 3)
    doomsdayprepper:addXPBoost(Perks.Electricity, 3)
    doomsdayprepper:addXPBoost(Perks.Farming, 3)
    doomsdayprepper:addXPBoost(Perks.Fishing, 3)
    doomsdayprepper:addXPBoost(Perks.Mechanics, 3)
    doomsdayprepper:addXPBoost(Perks.MetalWelding, 3)
    doomsdayprepper:addXPBoost(Perks.PlantScavenging, 2)
    doomsdayprepper:addXPBoost(Perks.Tailoring, 1)
    doomsdayprepper:addXPBoost(Perks.Trapping, 2)
    doomsdayprepper:addXPBoost(Perks.Woodwork, 3)

    -- Park Ranger
    doomsdayprepper:getFreeRecipes():add("Make Stick Trap");
    doomsdayprepper:getFreeRecipes():add("Make Snare Trap");
    doomsdayprepper:getFreeRecipes():add("Make Wooden Cage Trap");
    doomsdayprepper:getFreeRecipes():add("Make Trap Box");
    doomsdayprepper:getFreeRecipes():add("Make Cage Trap");

    --  Security Guard
    doomsdayprepper:addFreeTrait("NightOwl");

    -- Burglar
    doomsdayprepper:addFreeTrait("Burglar");

    -- Chef
    doomsdayprepper:getFreeRecipes():add("Make Cake Batter");
    doomsdayprepper:getFreeRecipes():add("Make Pie Dough");
    doomsdayprepper:getFreeRecipes():add("Make Bread Dough");
    doomsdayprepper:addFreeTrait("Cook2");

    -- Farmer
    doomsdayprepper:getFreeRecipes():add("Make Mildew Cure");
    doomsdayprepper:getFreeRecipes():add("Make Flies Cure");

    -- Fisherman Recipes
    doomsdayprepper:getFreeRecipes():add("Make Fishing Rod");
    doomsdayprepper:getFreeRecipes():add("Fix Fishing Rod");
    doomsdayprepper:getFreeRecipes():add("Get Wire Back");

    -- Veteran
    doomsdayprepper:addFreeTrait("Desensitized");

    -- Lumberjack
    doomsdayprepper:addFreeTrait("Axeman");

    -- Fitness Instructor
    doomsdayprepper:addFreeTrait("Nutritionist2");

    -- Electrician
    doomsdayprepper:getFreeRecipes():add("Generator");
    doomsdayprepper:getFreeRecipes():add("Make Remote Controller V1");
    doomsdayprepper:getFreeRecipes():add("Make Remote Controller V2");
    doomsdayprepper:getFreeRecipes():add("Make Remote Controller V3");
    doomsdayprepper:getFreeRecipes():add("Make Remote Trigger");
    doomsdayprepper:getFreeRecipes():add("Make Timer");
    doomsdayprepper:getFreeRecipes():add("Craft Makeshift Radio");
    doomsdayprepper:getFreeRecipes():add("Craft Makeshift HAM Radio");
    doomsdayprepper:getFreeRecipes():add("Craft Makeshift Walkie Talkie");
    doomsdayprepper:getFreeRecipes():add("Make Fishing Net");

    -- Engineer
    doomsdayprepper:getFreeRecipes():add("Make Aerosol bomb");
    doomsdayprepper:getFreeRecipes():add("Make Flame bomb");
    doomsdayprepper:getFreeRecipes():add("Make Pipe bomb");
    doomsdayprepper:getFreeRecipes():add("Make Noise generator");
    doomsdayprepper:getFreeRecipes():add("Make Smoke Bomb");

    -- Metal Worker
    doomsdayprepper:getFreeRecipes():add("Make Metal Walls");
    doomsdayprepper:getFreeRecipes():add("Make Metal Fences");
    doomsdayprepper:getFreeRecipes():add("Make Metal Containers");
    doomsdayprepper:getFreeRecipes():add("Make Metal Sheet");
    doomsdayprepper:getFreeRecipes():add("Make Small Metal Sheet");
    doomsdayprepper:getFreeRecipes():add("Make Metal Roof");

    -- Mechanics
    doomsdayprepper:addFreeTrait("Mechanics2");
    doomsdayprepper:getFreeRecipes():add("Basic Mechanics");
    doomsdayprepper:getFreeRecipes():add("Intermediate Mechanics");
    doomsdayprepper:getFreeRecipes():add("Advanced Mechanics");

    local profList = ProfessionFactory.getProfessions()
    for i=1,profList:size() do
        local prof = profList:get(i-1)
        BaseGameCharacterDetails.SetProfessionDescription(prof)
    end
end

Events.OnGameBoot.Add(BaseGameCharacterDetails.DoDoomsdayProfession);
