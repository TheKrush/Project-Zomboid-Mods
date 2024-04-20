require("Krush_ItemTweaker_Core");

if getActivatedMods():contains("BB_FirstAidOverhaul") or getActivatedMods():contains("BB_FirstAidOverhaul_Alt") then
	TweakItem("Base.AdrenalineSyringe","DisplayCategory","Med");
	TweakItem("Base.AlcoholBandage2","DisplayCategory","Med");
	TweakItem("Base.AlcoholBandage2Dirty","DisplayCategory","Med");
	TweakItem("Base.Cologne","DisplayCategory","Med");
	TweakItem("Base.EmptySyringe","DisplayCategory","Med");
	TweakItem("Base.Syringe1","DisplayCategory","Med");
	TweakItem("Base.Syringe2","DisplayCategory","Med");
end
