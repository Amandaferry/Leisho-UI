local _,L = ...
local rematch = Rematch
local journal = RematchJournal
local settings

-- these are layouts for each numbered tab, with "left"/"right" in the index of a rematch.panel to show
-- from Main.lua panels are ordered: PetPanel, LoadoutPanel, TeamPanel, QueuePanel, OptionPanel
journal.layouts = {{"left","mid","right"},{"left","mid",nil,"right"},{"left","mid",nil,nil,"right"}}

journal.elements = {} -- table of frames/regions in the default journal to be hidden, indexed by the element and their original alpha

rematch:InitModule(function()
	rematch.Journal = journal
	settings = RematchSettings
	settings.JournalPanel = settings.JournalPanel or 1
	rematch:SetupPanelTabs(journal.PanelTabs,settings.JournalPanel,L["Teams"],L["Queue"],L["Options"])
	for i=1,3 do
		journal.PanelTabs.Tabs[i]:SetScript("OnClick",journal.PanelTabOnClick)
	end
	-- if Collections already loaded, run OnEvent as if it's loading now
	if IsAddOnLoaded("Blizzard_Collections") then
		journal:Blizzard_Collections()
	end
	journal:RegisterEvent("ADDON_LOADED")
	-- hook of the [Click to view in journal] button on default link "tooltip"
	FloatingBattlePetTooltip.JournalClick:HookScript("OnClick",function(self) rematch:SearchForSpecies(self:GetParent().speciesID) end)
	-- add mouse methods to pass mouse events down to CollectionsJournal
	for _,method in pairs({"OnMouseDown","OnMouseUp","OnDragStart","OnDragStop"}) do
		journal:SetScript(method,function()
			if CollectionsJournal then
				local handler = CollectionsJournal:GetScript(method)
				if handler then
					handler(CollectionsJournal)
				end
			end
		end)
	end
	journal:RegisterForDrag("LeftButton")
	hooksecurefunc("SetItemRef",journal.SetItemRef)
	SetPortraitToTexture(journal.portrait, "Interface\\Icons\\PetJournalPortrait")
end)

-- called in ADDON_LOADED of Blizzard_Collctions (or during startup if already loaded)
function journal:Blizzard_Collections()
	if not settings.UseDefaultJournal and not GetCVarBitfield("closedInfoFrames",LE_FRAME_TUTORIAL_PET_JOURNAL) then
		SetCVarBitfield("closedInfoFrames",LE_FRAME_TUTORIAL_PET_JOURNAL,true)
	end
	PetJournal:HookScript("OnShow",journal.ConfigureJournal)
	PetJournal:HookScript("OnHide",journal.DefaultJournalOnHide)
	journal.CloseButton:SetScript("OnClick",function() HideUIPanel(CollectionsJournal) end)
	C_Timer.After(0.1,journal.OtherAddonJournalStuff)
	if not rematch.nLEGION then
		local button = CreateFrame("CheckButton","UseRematchButton",PetJournal,"UICheckButtonTemplate,RematchTooltipScripts")
		button:SetSize(26,26)
		button:SetHitRectInsets(-2,-56,-2,-2)
		button.text:SetText(L["Rematch"])
		button.text:SetFontObject("GameFontNormal")
		button:SetPoint("LEFT",PetJournalSummonButton,"RIGHT",4,-1)
		button:SetScript("OnClick",function() settings.UseDefaultJournal=nil journal:ConfigureJournal() end)
		button:SetScript("OnEnter",function(self) if not rematch:UIJustChanged() then rematch.ShowTooltip(self) end end)
		button.tooltipTitle = L["Enable Rematch"]
		button.tooltipBody = L["Check this to use Rematch in the pet journal."]
	else
		local button = CreateFrame("Button",nil,PetJournal)
		button:SetSize(120,24)
		button.icon = button:CreateTexture(nil,"ARTWORK")
		button.icon:SetSize(28,28)
		button.icon:SetPoint("LEFT")
		button.icon:SetTexture("Interface\\Common\\help-i")
		button.text = button:CreateFontString(nil,"ARTWORK","GameFontHighlight")
		button.text:SetPoint("LEFT",button.icon,"RIGHT",-2,0)
		button.text:SetText("Legion Beta Note")
		button:SetPoint("LEFT",PetJournalSummonButton,"RIGHT",4,-1)
		button:SetScript("OnEnter",function(self) rematch.LegionChoiceTooltip(self,true) end)
		button:SetScript("OnLeave",rematch.HideTooltip)
	end


	hooksecurefunc("PetJournal_ShowPetCardBySpeciesID",function(speciesID) rematch:SearchForSpecies(speciesID) end)
end

-- this runs 0.1 seconds after journal:Blizzard_Collections to allow other addons to settle/do their thing
function journal:OtherAddonJournalStuff()
	-- CollectMe panel button along bottom
	if IsAddOnLoaded("CollectMe") and CollectMeOpen2Button then
		journal.CollectMeButton = CreateFrame("Button",nil,journal,"MagicButtonTemplate")
		local button = journal.CollectMeButton
		button:SetPoint("RIGHT",rematch.BottomPanel.SaveButton,"LEFT",-2,0)
		button:SetSize(100,22)
		button:SetText("CollectMe")
		button:SetScript("OnClick",function() CollectMeOpen2Button:Click() end)
	end
	-- PetTracker "Zone Tracker" checkbutton along bottom
	if IsAddOnLoaded("PetTracker_Journal") and PetTrackerTrackToggle then
		journal.PetTrackerJournalButton = CreateFrame("CheckButton",nil,journal,"UICheckButtonTemplate")
		local button = journal.PetTrackerJournalButton
		button:SetSize(26,26)
		button:SetHitRectInsets(-2,-80,-2,-2)
		button.text:SetFontObject("GameFontHighlight")
		button.text:SetText("Zone Tracker")
		button:SetPoint("RIGHT",journal.CollectMeButton or rematch.BottomPanel.SaveButton,"LEFT",-88,-1)
		button:SetScript("OnClick",function(self) PetTrackerTrackToggle:Click() end)
		hooksecurefunc(PetTrackerTrackToggle,"SetChecked",function(self,checked)
			button:SetChecked(checked) -- follow checked state of the button
		end)
		button:SetChecked(PetTrackerTrackToggle:GetChecked()) -- but need to manually set first state
	end
	-- PBT does screwy stuff with framelevels, reasserting after it's had time to load
	if IsAddOnLoaded("PetBattleTeams") then
		if journal:IsVisible() then
			journal:ConfigureJournal()
		end
	end
end

function journal:HideElement(element)
	if element then
		journal.elements[element] = element:GetAlpha()
		element:SetAlpha(0)
	end
end

function journal:ShowElement(element)
	if element then
		element:SetAlpha(journal.elements[element] or 1)
	end
end

function journal:OnShow()
	journal:HideElement(PetJournal)
	journal:HideElement(CollectionsJournalCloseButton)
	for _,region in pairs({CollectionsJournal:GetRegions()}) do
		journal:HideElement(region)
	end
end

function journal:OnHide()
	rematch:HideWidgets()
	rematch:HideDialog()
	rematch.timeUIChanged = GetTime()
	journal:ShowElement(PetJournal)
	journal:ShowElement(CollectionsJournalCloseButton)
  for _,region in pairs({CollectionsJournal:GetRegions()}) do
		journal:ShowElement(region)
  end
end

-- this returns the standalone frame when the journal hides
function journal:DefaultJournalOnHide()
	if journal.showStandaloneOnHide then
		journal.showStandaloneOnHide = nil
		-- wait a frame to let UISpecialFrames go through everything (otherwise standalone frame can be next frame to hide)
		C_Timer.After(0,function() rematch.Frame:Show() end)
	end
end

-- this is called in the PetJournal's OnShow and when journal tabs clicked; to set up the journal
-- hide is true when the journal needs hidden (typically due to it being on screen and in combat)
function journal:ConfigureJournal(hide)

	if rematch.Frame:IsVisible() then
		journal.showStandaloneOnHide = true
		rematch.Frame:Hide() -- hide standalone Frame (Frame and Journal can't coexist)
	end

	rematch:HideWidgets()
	rematch:HideDialog()
	rematch:HideNotes(settings.NotesNoESC)
	rematch.MiniPanel:Hide()
	rematch.MiniQueue:Hide()

	if UseRematchButton then
		UseRematchButton:Show()
		UseRematchButton:SetChecked(not settings.UseDefaultJournal)
	end

	-- if UseDefaultJournal set, then hide our journal and leave
	if settings.UseDefaultJournal or hide or InCombatLockdown() then
		if not InCombatLockdown() then
			journal:SetParent(nil)
			journal:ClearAllPoints()
			journal:Hide()
			journal:SetShownExtras(true)
		else
			rematch:print("You are in combat. Try again when out of combat.")
			UseRematchButton:Hide()
		end
		return
	end

	rematch.timeUIChanged = GetTime()

	-- reparent our journal to the real one and set its level +1 higher than it to hide everything beneath
	journal:SetParent(PetJournal)
	journal:SetPoint("TOPLEFT")
	-- SetFrameLevel does not make huge jumps; make at most 10 attempts to set a higher frame level
	local highestLevel = rematch:FindHighestFrameLevel(PetJournal)+1
	local raiseTimeout = 10
	while journal:GetFrameLevel()<highestLevel and raiseTimeout>0 do
		journal:SetFrameLevel(highestLevel)
		raiseTimeout = raiseTimeout - 1
	end
--	journal:SetFrameLevel(rematch:FindHighestFrameLevel(PetJournal)+1)

	journal:SetShownExtras(false) -- hide tutorial button and other stuff that stick out the edges

	rematch:Reparent(rematch.BottomPanel,journal,"BOTTOMLEFT")
	rematch.BottomPanel:SetPoint("BOTTOMRIGHT")
	rematch.BottomPanel:Resize(journal:GetWidth(),true,true)

	rematch:Reparent(rematch.Toolbar,journal,"TOPRIGHT",-7,-26)
	rematch.Toolbar:Resize(journal:GetWidth()-64)

	rematch.TeamTabs:Configure(journal)
	rematch.TeamTabs:SetShown(settings.JournalPanel==1 or settings.AlwaysTeamTabs)

	-- show/hide panels as defined in layout table
	local layout = journal.layouts[settings.JournalPanel]
	for i=1,5 do -- only checking first 5 panels
		local panel = _G[rematch.panels[i]]
		if layout[i] and panel then
			panel:SetParent(journal)
			panel:ClearAllPoints()
			panel:SetHeight(520)
			if panel.Resize then
				panel:Resize(280)
			end
			panel:SetPoint("BOTTOMLEFT",layout[i]=="left" and 4 or layout[i]=="mid" and 286 or 568,26)
			panel:Show()
		elseif panel then
			panel:Hide()
		end
	end

	rematch:Reparent(rematch.LoadedTeamPanel,journal,"BOTTOMLEFT",rematch.LoadoutPanel.Loadouts[1],"TOPLEFT",0,2)
	rematch.LoadedTeamPanel.maxWidth = 280

	rematch:UpdatePanelTabs(journal.PanelTabs)

	-- if PBT enabled, and team list is shown, minimize it
	if PetBattleTeams and not PetBattleTeams:GetModule("GUI"):GetIsMinimized() then
		PetBattleTeams:GetModule("GUI"):ToggleMinimize(true)
	end

	settings.JournalUsed = true
	journal:Show()
	rematch:UpdateUI()
end

-- this hides/shows extras that stick out of the edges of the journal
function journal:SetShownExtras(show)
	PetJournalTutorialButton:SetShown(show)
	if PetBattleTeambuttonButtonIcon then
		PetBattleTeambuttonButtonIcon:GetParent():SetShown(show)
	end
end

-- one of the tabs (Teams, Queue, Options) clicked
function journal:PanelTabOnClick()
	settings.JournalPanel = self:GetID()
	rematch:SelectPanelTab(journal.PanelTabs,settings.JournalPanel)
	journal:ConfigureJournal()
end

-- hook of the function that calls SetItemRef to show the FloatingBattlePetTooltip
-- note the dot notation! (SetItemRef doesn't pass a parent frame)
function journal.SetItemRef(link,text,button)
	if settings.PetCardForLinks and not IsModifiedClick("CHATLINK") then
	  local battlepet,speciesID,level,rarity,health,power,speed,petID = link:match("(battlepet):(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.+)")
	  if battlepet and speciesID then
			speciesID=tonumber(speciesID)
			level=tonumber(level)
			rarity=tonumber(rarity)+1
			health=tonumber(health)
			power=tonumber(power)
			speed=tonumber(speed)
			local breed = rematch:GetBreedByStats(speciesID,level,rarity,health,power,speed)
			FloatingBattlePetTooltip:Hide()
			if rematch:GetIDType(petID)~="pet" or not C_PetJournal.GetPetInfoByPetID(petID) then
				petID = {speciesID=speciesID,level=level,rarity=rarity,health=health,power=power,speed=speed,breed=breed}
			end
			if rematch.PetCard:CurrentPetIDIsDifferent(petID) then
				rematch.PetCard.locked = true
				rematch:ShowPetCard(FloatingBattlePetTooltip,petID,true)
			else
				rematch:HidePetCard()
			end
		end
	end
end