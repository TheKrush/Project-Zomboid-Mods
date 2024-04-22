local OnISEquippedItemInitialize = ISEquippedItem.initialise


function ISEquippedItem:initialise()

	local menu = OnISEquippedItemInitialize(self)

    local y = 0;
    for _,child in pairs(self:getChildren()) do
        child:setY(y)

        y += child:getBottom() + 5;
    end

	return menu
end
