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

    print("Mod Data ("..username.."): ", dump(player:getModData()));

    if (player:getAccessLevel() == "admin") then
        if getActivatedMods():contains("DynamicTraits") then
            player:getModData().DTisMelancholic = false;
            player:getModData().DTisNervousWreck = false;
        end
    end
end

Events.OnGameTimeLoaded.Add(dumpModData)
