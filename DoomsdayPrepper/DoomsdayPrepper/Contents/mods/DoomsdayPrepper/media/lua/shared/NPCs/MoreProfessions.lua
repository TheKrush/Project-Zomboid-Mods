require("MainCreationMethods");

BaseGameCharacterDetails.DoMoreProfessions = function()

	local doomsday_prepper = ProfessionFactory.addProfession("doomsday_prepper", "Doomsday Prepper", "profession_policeofficer2", 8);

	-- my additional traits
	doomsday_prepper:addFreeTrait("Dextrous");
	doomsday_prepper:addFreeTrait("EagleEyed");
	doomsday_prepper:addFreeTrait("FastLearner");
	doomsday_prepper:addFreeTrait("FastReader");
	doomsday_prepper:addFreeTrait("Graceful");
	doomsday_prepper:addFreeTrait("KeenHearing");
	doomsday_prepper:addFreeTrait("Lucky");
	doomsday_prepper:addFreeTrait("Marksman");
	doomsday_prepper:addFreeTrait("NightVision");
	doomsday_prepper:addFreeTrait("Organized");
	doomsday_prepper:addFreeTrait("Outdoorsman");
	
	-- XP Boosts
	doomsday_prepper:addXPBoost(Perks.Strength, 1)
    doomsday_prepper:addXPBoost(Perks.Fitness, 3)
	
	doomsday_prepper:addXPBoost(Perks.Sprinting, 2)
    doomsday_prepper:addXPBoost(Perks.Nimble, 2)
	doomsday_prepper:addXPBoost(Perks.Lightfoot, 2)
	doomsday_prepper:addXPBoost(Perks.Sneak, 2)
	
	doomsday_prepper:addXPBoost(Perks.Axe, 2)
	doomsday_prepper:addXPBoost(Perks.Maintenance, 2)
	doomsday_prepper:addXPBoost(Perks.SmallBlunt, 3)
	doomsday_prepper:addXPBoost(Perks.SmallBlade, 3)
	doomsday_prepper:addXPBoost(Perks.Aiming, 3)
	doomsday_prepper:addXPBoost(Perks.Reloading, 2)
	
	doomsday_prepper:addXPBoost(Perks.Doctor, 3)
	doomsday_prepper:addXPBoost(Perks.Farming, 3)
	doomsday_prepper:addXPBoost(Perks.Cooking, 3)
	doomsday_prepper:addXPBoost(Perks.Woodwork, 3)
	doomsday_prepper:addXPBoost(Perks.Electricity, 3)
	doomsday_prepper:addXPBoost(Perks.Fishing, 3)
	doomsday_prepper:addXPBoost(Perks.Trapping, 2)
	doomsday_prepper:addXPBoost(Perks.PlantScavenging, 2)
	doomsday_prepper:addXPBoost(Perks.MetalWelding, 3)
	doomsday_prepper:addXPBoost(Perks.Mechanics, 3)
	-- doomsday_prepper:addXPBoost(Perks.Blacksmith, 3)
	-- doomsday_prepper:addXPBoost(Perks.Melting, 2)
	
	-- Park Ranger
    doomsday_prepper:getFreeRecipes():add("Make Stick Trap");
    doomsday_prepper:getFreeRecipes():add("Make Snare Trap");
    doomsday_prepper:getFreeRecipes():add("Make Wooden Cage Trap");
    doomsday_prepper:getFreeRecipes():add("Make Trap Box");
    doomsday_prepper:getFreeRecipes():add("Make Cage Trap");

    --  Security Guard
	doomsday_prepper:addFreeTrait("NightOwl");

	-- Burglar
	doomsday_prepper:addFreeTrait("Burglar");

	-- Chef
    doomsday_prepper:getFreeRecipes():add("Make Cake Batter");
    doomsday_prepper:getFreeRecipes():add("Make Pie Dough");
    doomsday_prepper:getFreeRecipes():add("Make Bread Dough");
    doomsday_prepper:addFreeTrait("Cook2");

	-- Farmer
	doomsday_prepper:getFreeRecipes():add("Make Mildew Cure");
    doomsday_prepper:getFreeRecipes():add("Make Flies Cure");

	-- Fisherman Recipes
	doomsday_prepper:getFreeRecipes():add("Make Fishing Rod");
    doomsday_prepper:getFreeRecipes():add("Fix Fishing Rod");
    doomsday_prepper:getFreeRecipes():add("Get Wire Back");

    -- Veteran
	doomsday_prepper:addFreeTrait("Desensitized");

	-- Lumberjack
	doomsday_prepper:addFreeTrait("Axeman");

	-- Fitness Instructor
	doomsday_prepper:addFreeTrait("Nutritionist2");

	-- Electrician
    doomsday_prepper:getFreeRecipes():add("Generator");
    doomsday_prepper:getFreeRecipes():add("Make Remote Controller V1");
    doomsday_prepper:getFreeRecipes():add("Make Remote Controller V2");
    doomsday_prepper:getFreeRecipes():add("Make Remote Controller V3");
    doomsday_prepper:getFreeRecipes():add("Make Remote Trigger");
    doomsday_prepper:getFreeRecipes():add("Make Timer");
	doomsday_prepper:getFreeRecipes():add("Craft Makeshift Radio");
	doomsday_prepper:getFreeRecipes():add("Craft Makeshift HAM Radio");
	doomsday_prepper:getFreeRecipes():add("Craft Makeshift Walkie Talkie");
    doomsday_prepper:getFreeRecipes():add("Make Fishing Net");

	-- Engineer
	doomsday_prepper:getFreeRecipes():add("Make Aerosol bomb");
    doomsday_prepper:getFreeRecipes():add("Make Flame bomb");
    doomsday_prepper:getFreeRecipes():add("Make Pipe bomb");
    doomsday_prepper:getFreeRecipes():add("Make Noise generator");
    doomsday_prepper:getFreeRecipes():add("Make Smoke Bomb");

	-- Metal Worker
	doomsday_prepper:getFreeRecipes():add("Make Metal Walls");
	doomsday_prepper:getFreeRecipes():add("Make Metal Fences");
	doomsday_prepper:getFreeRecipes():add("Make Metal Containers");
	doomsday_prepper:getFreeRecipes():add("Make Metal Sheet");
	doomsday_prepper:getFreeRecipes():add("Make Small Metal Sheet");
	doomsday_prepper:getFreeRecipes():add("Make Metal Roof");

	-- Mechanics
	doomsday_prepper:addFreeTrait("Mechanics2");
	doomsday_prepper:getFreeRecipes():add("Basic Mechanics");
	doomsday_prepper:getFreeRecipes():add("Intermediate Mechanics");
	doomsday_prepper:getFreeRecipes():add("Advanced Mechanics");
end

Events.OnGameBoot.Add(BaseGameCharacterDetails.DoMoreProfessions);
