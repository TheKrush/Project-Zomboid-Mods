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

function dumpModData()
    -- Attempt to resolve the player using the helper method.
    local player = getPlayer();

    print("Mod Data ("..username..")")
    print(dump(player:getModData()))

    if (player:getAccessLevel() == "admin") then
        if getActivatedMods():contains("DynamicTraits") then
            player:getModData().MDE_isMelancholic = false;
            player:getModData().MDE_isNervousWreck = false;
        end
    end
end

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
    dumpModData()
end
Events.EveryHours.Add(MDE_EveryHoursMain);

-- EveryDays Main Method to call others
function MDE_EveryDaysMain()
end
Events.EveryDays.Add(MDE_EveryDaysMain);