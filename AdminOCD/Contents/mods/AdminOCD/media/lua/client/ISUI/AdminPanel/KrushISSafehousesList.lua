
local original_populateList = ISSafehousesList.populateList
ISSafehousesList.populateList = function(self)
    original_populateList(self)

    table.sort(self.datas.items, function(left, right)
        if not right or not right.item then return false; end
        if not left or not left.item then return false; end

        if left.item:getTitle() < right.item:getTitle() then return true; end

        return false;
    end)
end
