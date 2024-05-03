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
    if player == nil then
        return
    end

    print("Mod Data (" .. player:getUsername() .. ")")
    print(dump(player:getModData()))
end

-- EveryOneMinutes Main Method to call others
function MDE_EveryOneMinuteMain()
    --print("MDE_EveryOneMinuteMain")
end
Events.EveryOneMinute.Add(MDE_EveryOneMinuteMain);

-- EveryTenMinutes Main Method to call others
function MDE_EveryTenMinutesMain()
    --print("MDE_EveryTenMinutesMain")
end
Events.EveryTenMinutes.Add(MDE_EveryTenMinutesMain);

-- EveryHours Main Method to call others
function MDE_EveryHoursMain()
    --print("MDE_EveryHoursMain")

    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);
        dumpModData(player)
    end
end
Events.EveryHours.Add(MDE_EveryHoursMain);

-- EveryDays Main Method to call others
function MDE_EveryDaysMain()
    --print("MDE_EveryDaysMain")
end
Events.EveryDays.Add(MDE_EveryDaysMain);
