function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function dumpModData(player)
    print("Mod Data (" .. player:getUsername() .. ")")
    print(dump(player:getModData()))
end

function MDE_OnGameTimeLoadedMain()
    print("MDE_OnGameTimeLoadedMain")

    -- Attempt to resolve the player using the helper method.
    local player = getPlayer();
    dumpModData(player)
end
Events.OnGameTimeLoaded.Add(dumpModData)

-- OnPlayerUpdate Main Method to call others
function MDE_OnPlayerUpdateMain(player)
end
Events.OnPlayerUpdate.Add(MDE_OnPlayerUpdateMain);

-- EveryOneMinutes Main Method to call others
function MDE_EveryOneMinuteMain()
end
Events.EveryOneMinute.Add(MDE_EveryOneMinuteMain);

-- EveryTenMinutes Main Method to call others
function MDE_EveryTenMinutesMain()
end
Events.EveryTenMinutes.Add(MDE_EveryTenMinutesMain);

-- EveryHours Main Method to call others
function MDE_EveryHoursMain()
    print("MDE_EveryHoursMain")

    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);

        if (player:getAccessLevel() == "admin") then
            if getActivatedMods():contains("DynamicTraits") then
                print(player:getUsername() .. ": removing permanent dynamic traits")

                player:getTraits():remove("Melancholic");
                player:getModData().DTisMelancholic = false;

                player:getTraits():remove("NervousWreck");
                player:getModData().DTisNervousWreck = false;
            end
        end

        dumpModData(player)
    end
end
Events.EveryHours.Add(MDE_EveryHoursMain);

-- EveryDays Main Method to call others
function MDE_EveryDaysMain()
end
Events.EveryDays.Add(MDE_EveryDaysMain);
