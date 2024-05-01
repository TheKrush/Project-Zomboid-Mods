
local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium)

local original_initialise = ISPvpZonePanel.initialise
ISPvpZonePanel.initialise = function(self)
    original_initialise(self);

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

local original_populateList = ISPvpZonePanel.populateList
ISPvpZonePanel.populateList = function(self)
    original_populateList(self)

    table.sort(self.nonPvpList.items, function(left, right)
        if not right or not right.item then return false; end
        if not left or not left.item then return false; end

        if left.item.title < right.item.title then return true; end

        return false;
    end)
end

local original_onClick = ISPvpZonePanel.onClick
ISPvpZonePanel.onClick = function(self, button)
    original_onClick(button) -- call the original one
    if button.internal == "CHANGETITLE" then
        local modal = ISTextBox:new(self.x + 200, 200, 280, 180, getText("IGUI_PvpZone_ChangeTitle"), self.selectedZone:getTitle(), nil, ISPvpZonePanel.onChangeTitle);
        modal.ui = self;
        modal.selectedZone = self.selectedZone;
        modal:initialise();
        modal:addToUIManager();
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
