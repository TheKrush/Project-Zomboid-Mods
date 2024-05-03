
-- EveryOneMinutes Main Method to call others
function KST_EveryOneMinuteMain()
    --print("KST_EveryOneMinuteMain")
end
Events.EveryOneMinute.Add(KST_EveryOneMinuteMain);

-- EveryTenMinutes Main Method to call others
function KST_EveryTenMinutesMain()
    --print("KST_EveryTenMinutesMain")

    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);
        if player ~= nil then
            if player:getAccessLevel() == "admin" or player:getAccessLevel() == "Admin" then
                if getActivatedMods():contains("DynamicTraits") and player:getModData().DTisMelancholic == true then
                    print(player:getUsername() .. ": removing Melancholic dynamic trait")

                    player:getTraits():remove("Melancholic");
                    player:getModData().DTisMelancholic = false;
                end

                if getActivatedMods():contains("DynamicTraits") and player:getModData().DTisNervousWreck == true then
                    print(player:getUsername() .. ": removing NervousWreck dynamic trait")

                    player:getTraits():remove("NervousWreck");
                    player:getModData().DTisNervousWreck = false;
                end
            end
        end
    end
end
Events.EveryTenMinutes.Add(KST_EveryTenMinutesMain);

-- EveryHours Main Method to call others
function KST_EveryHoursMain()
    --print("KST_EveryHoursMain")
end
Events.EveryHours.Add(KST_EveryHoursMain);

-- EveryDays Main Method to call others
function KST_EveryDaysMain()
    --print("KST_EveryDaysMain")
end
Events.EveryDays.Add(KST_EveryDaysMain);
