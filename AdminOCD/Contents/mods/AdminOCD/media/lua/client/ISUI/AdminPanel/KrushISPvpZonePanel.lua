require "client/ISUI/AdminPanel/ISPvpZonePanel"

AdminOCD.ISPvpZonePanel_initialise = function()
    local original_initialise = ISPvpZonePanel["initialise"]
    ISPvpZonePanel["initialise"] = function()
        original_initialise();

        local btnWid = 100
        local btnHgt = math.max(25, FONT_HGT_SMALL + 3 * 2)
        local btnHgt2 = FONT_HGT_SMALL + 2 * 2
        local padBottom = 10

        self.changeTitle = ISButton:new(self.nonPvpList.x + self.addZone.width + 5, self.addZone.y, 70, btnHgt2, getText("IGUI_PlayerStats_ChangeTitle"), self, ISPvpZonePanel.onClick);
        self.changeTitle.internal = "CHANGETITLE";
        self.changeTitle:initialise();
        self.changeTitle:instantiate();
        self.changeTitle.borderColor = self.buttonBorderColor;
        self:addChild(self.changeTitle);
        self.changeTitle.enable = false;

        self:setHeight(self.no:getBottom() + padBottom)

        self:populateList();
    end
end

AdminOCD.ISPvpZonePanel_populateList = function()
    local original_populateList = ISPvpZonePanel["populateList"]
    ISPvpZonePanel["populateList"] = function()
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
end

AdminOCD.ISPvpZonePanel_onClick = function()
    local original_onClick = ISPvpZonePanel["onClick"]
    ISPvpZonePanel["onClick"] = function(button)
        original_onClick(button) -- call the original one
        if button.internal == "CHANGETITLE" then
            local modal = ISTextBox:new(self.x + 200, 200, 280, 180, getText("IGUI_PvpZone_ChangeTitle"), self.selectedZone:getTitle(), nil, ISPvpZonePanel.onChangeTitle);
            modal.ui = self;
            modal.selectedZone = self.selectedZone;
            modal:initialise();
            modal:addToUIManager();
        end
    end
end

-- new function
function ISPvpZonePanel:onChangeTitle(button)
    if button.internal == "OK" then
        button.parent.selectedZone:setTitle(button.parent.entry:getText());
        button.parent.selectedZone:syncNonPvpZone(false);
        button.parent.ui:populateList();
    end
end

-- OnGameStart adds callback for OnGameStart global event.
AdminOCD.ISPvpZonePanelOnGameStart = function()
    AdminOCD.ISPvpZonePanel_initialise()
    AdminOCD.ISPvpZonePanel_populateList()
    AdminOCD.ISPvpZonePanel_onClick()
end

Events.OnGameStart.Add(AdminOCD.ISPvpZonePanelOnGameStart);
