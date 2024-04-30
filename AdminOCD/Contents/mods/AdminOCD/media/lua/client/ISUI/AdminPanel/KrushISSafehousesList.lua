require "client/ISUI/AdminPanel/ISSafehousesList"

AdminOCD.ISSafehousesList_populateList = function()
    local original_populateList = ISSafehousesList:populateList
    ISSafehousesList.populateList = function()
        self.datas:clear();

        -- copy then sort the list
        local safeHouses=SafeHouse.getSafehouseList()
        table.sort(safeHouses, function(a,b)
            if a.getTitle() < b.getTitle() then return true end
        end)

        -- now add each item
        for i=0,safeHouses:size()-1 do
            local safeHouse = safeHouses:get(i);
            self.datas:addItem(safeHouse:getTitle(), safeHouse);
        end
    end
end

-- OnGameStart adds callback for OnGameStart global event.
AdminOCD.ISSafehousesListOnGameStart = function()
    AdminOCD.ISSafehousesList_populateList()
end

Events.OnGameStart.Add(AdminOCD.ISSafehousesListOnGameStart);
