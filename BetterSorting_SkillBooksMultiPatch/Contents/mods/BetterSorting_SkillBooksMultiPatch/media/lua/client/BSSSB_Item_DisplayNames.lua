if getActivatedMods():contains("ItemTweakerAPI") then
	require("ItemTweaker_Core");
else return end

if getActivatedMods():contains("DrivingSkill") then
	TweakItem("DrivingSkill.DrivingSkill_BookDriving1","DisplayName","Driving Vol.1 Beginner");
	TweakItem("DrivingSkill.DrivingSkill_BookDriving2","DisplayName","Driving Vol.2 Intermediate");
	TweakItem("DrivingSkill.DrivingSkill_BookDriving3","DisplayName","Driving Vol.3 Advanced");
	TweakItem("DrivingSkill.DrivingSkill_BookDriving4","DisplayName","Driving Vol.4 Expert");
	TweakItem("DrivingSkill.DrivingSkill_BookDriving5","DisplayName","Driving Vol.5 Master");
end

if getActivatedMods():contains("ScavengingSkillFixed") then
	TweakItem("ScavengerSkill.ScavengerSkill_BookScavenging1","DisplayName","Scavenging Vol.1 Beginner");
	TweakItem("ScavengerSkill.ScavengerSkill_BookScavenging2","DisplayName","Scavenging Vol.2 Intermediate");
	TweakItem("ScavengerSkill.ScavengerSkill_BookScavenging3","DisplayName","Scavenging Vol.3 Advanced");
	TweakItem("ScavengerSkill.ScavengerSkill_BookScavenging4","DisplayName","Scavenging Vol.4 Expert");
	TweakItem("ScavengerSkill.ScavengerSkill_BookScavenging5","DisplayName","Scavenging Vol.5 Master");
end
