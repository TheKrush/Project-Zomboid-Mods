
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

            local title = self.titleEntry:getInternalText();
            local x1 = math.floor(math.min(self.startingX, self.player.getX()));
            local y1 = math.floor(math.min(self.startingY, self.player.getY()));
            local x2 = math.floor(math.max(self.startingX, self.player.getX()) + 1);
            local y2 = math.floor(math.max(self.startingY, self.player.getY()) + 1);

            NonPvpZone.addNonPvpZone(title, x1, y1, x2, y2);
        else
            return;
        end
    else
        -- call original for others
        original_onClick(self, button)
    end
end
