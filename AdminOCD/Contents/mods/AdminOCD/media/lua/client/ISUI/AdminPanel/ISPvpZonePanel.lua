require "client/ISUI/AdminPanel/ISPvpZonePanel"

local original_populateList = ISPvpZonePanel:populateList

function ISPvpZonePanel:populateList()
    self.nonPvpList:clear();

    -- copy then sort the list
    local nonPvpZones=NonPvpZone.getAllZones()
    table.sort(nonPvpZones, function(a,b)
        if a.getTitle() < b.getTitle() then return true end
    end)

    -- now add each item
    for i=0,nonPvpZones:size()-1 do
        local zone = nonPvpZones:get(i);
        self.nonPvpList:addItem(zone:getTitle(), zone);
    end
end
