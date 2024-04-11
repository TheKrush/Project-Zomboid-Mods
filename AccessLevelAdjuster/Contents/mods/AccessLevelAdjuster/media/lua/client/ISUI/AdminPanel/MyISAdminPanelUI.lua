require "client/ISUI/AdminPanel/ISAdminPanelUI"
require "AccessLevelCheck"

-- 1 observer
-- 2 gm
-- 3 overseer
-- 4 moderator
-- 5 admin

local original_create = ISAdminPanelUI:create

function ISAdminPanelUI:create()

    local btnWid = 150
    local btnHgt = math.max(25, FONT_HGT_SMALL + 3 * 2)
    local btnGapY = 5
    local padBottom = 10

    local y = 70;

    if isCoopHost() then
        self.beAdmin = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_EnableAdminPower"), self, ISAdminPanelUI.onOptionMouseDown);
        self.beAdmin.internal = "BEADMIN";
        self.beAdmin:initialise();
        self.beAdmin:instantiate();
        self.beAdmin.borderColor = self.buttonBorderColor;
        if getAccessLevel() == "admin" then
            self.beAdmin.title = getText("IGUI_AdminPanel_DisableAdminPower");
        end
        self:addChild(self.beAdmin);
        self.beAdmin.tooltip = getText("IGUI_AdminPanel_TooltipAdminPower");
        y = y + btnHgt + btnGapY;
    end

    self.dbBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_SeeDB"), self, ISAdminPanelUI.onOptionMouseDown);
    self.dbBtn.internal = "WHITELIST";
    self.dbBtn:initialise();
    self.dbBtn:instantiate();
    self.dbBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.dbBtn);
    y = y + btnHgt + btnGapY

    self.checkStatsBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_CheckYourStats"), self, ISAdminPanelUI.onOptionMouseDown);
    self.checkStatsBtn.internal = "CHECKSTATS";
    self.checkStatsBtn:initialise();
    self.checkStatsBtn:instantiate();
    self.checkStatsBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.checkStatsBtn);
    y = y + btnHgt + btnGapY

    local title = getText("IGUI_AdminPanel_AdminPower")
    self.adminPowerBtn = ISButton:new(10, y, btnWid, btnHgt, title, self, ISAdminPanelUI.onOptionMouseDown);
    self.adminPowerBtn.internal = "ADMINPOWER";
    self.adminPowerBtn:initialise();
    self.adminPowerBtn:instantiate();
    self.adminPowerBtn.borderColor = self.buttonBorderColor;
    self.adminPowerBtn.tooltip = getText("IGUI_AdminPanel_TooltipEditAdminPower");
    self:addChild(self.adminPowerBtn);
    y = y + btnHgt + btnGapY

    local title = getText("IGUI_AdminPanel_ItemList")
    self.itemListBtn = ISButton:new(10, y, btnWid, btnHgt, title, self, ISAdminPanelUI.onOptionMouseDown);
    self.itemListBtn.internal = "ITEMLIST";
    self.itemListBtn:initialise();
    self.itemListBtn:instantiate();
    self.itemListBtn.borderColor = self.buttonBorderColor;
--    self.itemListBtn.tooltip = getText("IGUI_AdminPanel_TooltipEditAdminPower");
    self:addChild(self.itemListBtn);
    y = y + btnHgt + btnGapY

    self.seeOptionsBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_SeeServerOptions"), self, ISAdminPanelUI.onOptionMouseDown);
    self.seeOptionsBtn.internal = "SEEOPTIONS";
    self.seeOptionsBtn:initialise();
    self.seeOptionsBtn:instantiate();
    self.seeOptionsBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.seeOptionsBtn);
    y = y + btnHgt + btnGapY

    self.nonpvpzoneBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_NonPvpZone"), self, ISAdminPanelUI.onOptionMouseDown);
    self.nonpvpzoneBtn.internal = "NONPVPZONE";
    self.nonpvpzoneBtn:initialise();
    self.nonpvpzoneBtn:instantiate();
    self.nonpvpzoneBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.nonpvpzoneBtn);
    y = y + btnHgt + btnGapY

    self.seeFactionBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_SeeFaction") .. " (" .. Faction.getFactions():size() ..")", self, ISAdminPanelUI.onOptionMouseDown);
    self.seeFactionBtn.internal = "SEEFACTIONS";
    self.seeFactionBtn:initialise();
    self.seeFactionBtn:instantiate();
    self.seeFactionBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.seeFactionBtn);

    y = y + btnHgt + btnGapY

    self.seeSafehousesBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_SeeSafehouses") .. " (".. SafeHouse.getSafehouseList():size() .. ")", self, ISAdminPanelUI.onOptionMouseDown);
    self.seeSafehousesBtn.internal = "SEESAFEHOUSES";
    self.seeSafehousesBtn:initialise();
    self.seeSafehousesBtn:instantiate();
    self.seeSafehousesBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.seeSafehousesBtn);
    y = y + btnHgt + btnGapY

    self.safezoneBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_Safezone"), self, ISAdminPanelUI.onOptionMouseDown);
    self.safezoneBtn.internal = "SAFEZONE";
    self.safezoneBtn:initialise();
    self.safezoneBtn:instantiate();
    self.safezoneBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.safezoneBtn);
    y = y + btnHgt + btnGapY

    self.seeTicketsBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_SeeTickets"), self, ISAdminPanelUI.onOptionMouseDown);
    self.seeTicketsBtn.internal = "SEETICKETS";
    self.seeTicketsBtn:initialise();
    self.seeTicketsBtn:instantiate();
    self.seeTicketsBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.seeTicketsBtn);
    y = y + btnHgt + btnGapY

    self.miniScoreboardBtn = ISButton:new(10, y, btnWid, btnHgt, getText("IGUI_AdminPanel_MiniScoreboard"), self, ISAdminPanelUI.onOptionMouseDown);
    self.miniScoreboardBtn.internal = "MINISCOREBOARD";
    self.miniScoreboardBtn:initialise();
    self.miniScoreboardBtn:instantiate();
    self.miniScoreboardBtn.borderColor = self.buttonBorderColor;
    self:addChild(self.miniScoreboardBtn);
    self.miniScoreboardBtn.tooltip = getText("IGUI_AdminPanel_TooltipMiniScoreboard");
    y = y + btnHgt + btnGapY

    y = 70
    self.packetCountsBtn = ISButton:new(10 + btnWid + 20, y, btnWid, btnHgt, getText("IGUI_AdminPanel_PacketCounts"), self, ISAdminPanelUI.onOptionMouseDown)
    self.packetCountsBtn.internal = "PACKETCOUNTS"
    self.packetCountsBtn:initialise()
    self.packetCountsBtn:instantiate()
    self.packetCountsBtn.borderColor = self.buttonBorderColor
    self:addChild(self.packetCountsBtn)
    self.packetCountsBtn.tooltip = getText("IGUI_AdminPanel_TooltipPacketCounts")
    y = y + btnHgt + btnGapY

    self.sandboxOptionsBtn = ISButton:new(10 + btnWid + 20, y, btnWid, btnHgt, getText("IGUI_AdminPanel_SandboxOptions"), self, ISAdminPanelUI.onOptionMouseDown)
    self.sandboxOptionsBtn.internal = "SANDBOX"
    self.sandboxOptionsBtn:initialise()
    self.sandboxOptionsBtn:instantiate()
    self.sandboxOptionsBtn.borderColor = self.buttonBorderColor
    self:addChild(self.sandboxOptionsBtn)
    self.sandboxOptionsBtn.tooltip = getTextOrNull("IGUI_AdminPanel_TooltipSandboxOptions")
    y = y + btnHgt + btnGapY

    self.climateOptionsBtn = ISButton:new(10 + btnWid + 20, y, btnWid, btnHgt, getText("IGUI_Adm_Weather_ClimateControl"), self, ISAdminPanelUI.onOptionMouseDown)
    self.climateOptionsBtn.internal = "CLIMATE"
    self.climateOptionsBtn:initialise()
    self.climateOptionsBtn:instantiate()
    self.climateOptionsBtn.borderColor = self.buttonBorderColor
    self:addChild(self.climateOptionsBtn)
    self.climateOptionsBtn.tooltip = getTextOrNull("IGUI_AdminPanel_TooltipClimateOptions")
    y = y + btnHgt + btnGapY

    self.showStatisticsBtn = ISButton:new(10 + btnWid + 20, y, btnWid, btnHgt, getText("IGUI_AdminPanel_ShowStatistics"), self, ISAdminPanelUI.onOptionMouseDown)
    self.showStatisticsBtn.internal = "STATISTICS"
    self.showStatisticsBtn:initialise()
    self.showStatisticsBtn:instantiate()
    self.showStatisticsBtn.borderColor = self.buttonBorderColor
    self:addChild(self.showStatisticsBtn)
    self.showStatisticsBtn.tooltip = getTextOrNull("IGUI_AdminPanel_TooltipShowStatistics")
    y = y + btnHgt + btnGapY

    local width = 0
    local bottom = 0
    for _,child in pairs(self:getChildren()) do
        width = math.max(width, child:getWidth())
        bottom = math.max(bottom, child:getBottom())
    end
    for _,child in pairs(self:getChildren()) do
        if child:getX() > 10 then
            child:setX(10 + width + 20)
        end
        child:setWidth(width)
    end

    self:setWidth(10 + width + 20 + width + 10)

    self.cancel = ISButton:new((self:getWidth() - btnWid) / 2, bottom + btnGapY, btnWid, btnHgt, getText("UI_btn_close"), self, ISAdminPanelUI.onOptionMouseDown);
    self.cancel.internal = "CANCEL";
    self.cancel:initialise();
    self.cancel:instantiate();
    self.cancel.borderColor = self.buttonBorderColor;
    self:addChild(self.cancel);

    self:setHeight(self.cancel:getBottom() + btnGapY)

    self:updateButtons();
end

local original_updateButtons = ISAdminPanelUI:updateButtons

function ISAdminPanelUI:updateButtons()
    local enabled = false;
    if getAccessLevel() ~= "" then
        enabled = true;
    else
        self:close();
    end;

    self.dbBtn.enable = false;
    if checkAccessLevel("gm") then
        self.dbBtn.enable = enabled;
    end

    self.checkStatsBtn.enable = enabled;
    self.seeOptionsBtn.enable = enabled;
    self.seeFactionBtn.enable = enabled;
    self.seeSafehousesBtn.enable = enabled;
    self.seeTicketsBtn.enable = enabled;
    self.miniScoreboardBtn.enable = enabled;
    self.packetCountsBtn.enable = enabled;
    self.sandboxOptionsBtn.enable = enabled;
    self.adminPowerBtn.enable = enabled;
    self.itemListBtn.enable = enabled;
    self.climateOptionsBtn.enable = enabled;
    self.showStatisticsBtn.enable = enabled;

    self.nonpvpzoneBtn.enable = false;
    if checkAccessLevel("moderator") then
        self.safezoneBtn.enable = enabled;
    end

    self.safezoneBtn.enable = false;
    if checkAccessLevel("moderator") then
        self.safezoneBtn.enable = enabled;
    end
end
