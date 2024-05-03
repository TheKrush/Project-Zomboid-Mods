
local original_onClick = ISAddNonPvpZoneUI.onClick
ISAddNonPvpZoneUI.onClick = function(self, button)
    if button.internal == "OK" then
        local doneIt = true;
        if NonPvpZone.getZoneByTitle(self.titleEntry:getInternalText()) then
            doneIt = false;
            local modal = ISModalDialog:new(0,0, 350, 150, getText("IGUI_PvpZone_ZoneAlreadyExistTitle", self.selectedPlayer), false, nil, nil);
            modal:initialise()
            modal:addToUIManager()
            modal.moveWithMouse = true;
        end
        if doneIt then
            self:setVisible(false);
            self:removeFromUIManager();

            local title = self.titleEntry:getInternalText()
            local X1 = math.floor(math.min(self.startingX, self.player.getX()));
            local Y1 = math.floor(math.min(self.startingY, self.player.getY()));
            local X2 = math.floor(math.max(self.startingX, self.player.getX()) + 1);
            local Y2 = math.floor(math.max(self.startingY, self.player.getY()) + 1);

            NonPvpZone.addNonPvpZone(title, X1, Y1, X2, Y2)
        else
            return;
        end
    else
        -- call original for others
        original_onClick(self, button)
    end
end
