local SLE, T, E, L, V, P, G = unpack(select(2, ...))
local DT = E:GetModule('DataTexts')
local DTP = SLE:GetModule('Datatexts')

local abs, mod = abs, mod
local GetMoney, GetCurrencyInfo, GetNumWatchedTokens, GetBackpackCurrencyInfo, GetCurrencyListInfo = GetMoney, GetCurrencyInfo, GetNumWatchedTokens, GetBackpackCurrencyInfo, GetCurrencyListInfo

local defaultColor = { 1, 1, 1 }
local Profit = 0
local Spent	= 0
local copperFormatter = T.join("", "%d", L.copperabbrev)
local silverFormatter = T.join("", "%d", L.silverabbrev, " %.2d", L.copperabbrev)
local goldFormatter =  T.join("", "%s", L.goldabbrev, " %.2d", L.silverabbrev, " %.2d", L.copperabbrev)
local resetInfoFormatter = T.join("", "|cffaaaaaa", L["Reset Data: Hold Shift + Right Click"], "|r")
local JEWELCRAFTING, COOKING, ARCHAEOLOGY
--Strings and shit
local SHOW_CONQUEST_LEVEL = SHOW_CONQUEST_LEVEL
local FACTION_HORDE = FACTION_HORDE
local FACTION_ALLIANCE = FACTION_ALLIANCE
local ARCHAEOLOGY_RUNE_STONES = ARCHAEOLOGY_RUNE_STONES
local CALENDAR_TYPE_DUNGEON = CALENDAR_TYPE_DUNGEON
local CALENDAR_TYPE_RAID = CALENDAR_TYPE_RAID
local PLAYER_V_PLAYER = PLAYER_V_PLAYER
local MISCELLANEOUS = MISCELLANEOUS
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local IsLoggedIn = IsLoggedIn
local BreakUpLargeNumbers = BreakUpLargeNumbers
local IsShiftKeyDown = IsShiftKeyDown
local ToggleAllBags = ToggleAllBags

local ArchaeologyFragments = {
	398, -- Draenei
	384, -- Dwarf
	393, -- Fossil
	677, -- Mogu
	400, -- Nerubian
	394, -- Night Elf
	828, -- Ogre
	397, -- Orc
	676, -- Pandaren
	401, -- Tol'vir
	385, -- Troll
	399, -- Vrykul
	754, -- Mantid
	829, -- Arakkoa
	821, -- Draenor Clans
	1174, --Demonic
	1172, --Highborn
	1173, --Highmountain tauren
}

local CookingAwards = {
	81, -- Epicurean
	402 -- Ironpaw
}

local JewelcraftingTokens = {
	61, -- Dalaran
	361, -- Illustrious
}

local DungeonRaid = {
	776, -- Warforged Seal
	752, -- Mogu Rune of Fate
	697, -- Elder Charm
	738, -- Lesser Charm
	615, -- Essence of Corrupted Deathwing
	614, -- Mote of Darkness
	994, -- Seal of Tempered Fate
	1129, -- Seal of Inavitable Fate
	1166, --Timewarped Badge
	1191, -- Valor
	1273, --Seal of Broken Fate
}

local PvPPoints = {
	391, -- Tol Barad
	1149, --Sightless Eye
}

local MiscellaneousCurrency = {
	241, -- Champion Seals
	416, -- Mark of the World Tree
	515, -- Darkmoon Prize Ticket
	777, -- Timeless Coins
	944, -- Artifact Fragment?
	789, -- Bloody Coin
	823, -- Apexis Crystal
	980, -- Dingy Iron Coins
	824, -- Garrison
	1101, -- Oil
	1220, --Order resousces
	1226, --Nethershard
	1275, --Curious Coin
	1155, --Ancient Mana
	1154, --Shadowy Coins
	1268, --Timeworn Artifact
}

local HordeColor = RAID_CLASS_COLORS["DEATHKNIGHT"]
local AllianceColor = RAID_CLASS_COLORS["SHAMAN"]

local function OrderedPairs(t, f)
	local function orderednext(t, n)
		local key = t[t.__next]
		if not key then return end
		t.__next = t.__next + 1
		return key, t.__source[key]
	end

	local keys, kn = {__source = t, __next = 1}, 1
	for k in T.pairs(t) do
		keys[kn], kn = k, kn + 1
	end
	T.sort(keys, f)
	return orderednext, keys
end

local function ToggleOption(name)
	if E.db.sle.dt.currency[name] then
		E.db.sle.dt.currency[name] = false
	else
		E.db.sle.dt.currency[name] = true
	end
end

local function GetOption(name)
	return E.db.sle.dt.currency[name]
end

local HiddenCurrency = {}

local function UnusedCheck()
	if GetOption('Unused') then HiddenCurrency = {}; return end
	for i = 1, T.GetCurrencyListSize() do
		local name, _, _, isUnused = GetCurrencyListInfo(i)
		if isUnused then
			if not SLE:SimpleTable(HiddenCurrency, name) then
				T.tinsert(HiddenCurrency,#(HiddenCurrency)+1, name)
			end
		else
			if SLE:SimpleTable(HiddenCurrency, name) then
				HiddenCurrency[i] = nil
			end
		end
	end
end

local function GetCurrency(CurrencyTable, Text)
	local Seperator = false
	UnusedCheck()
	for key, id in T.pairs(CurrencyTable) do
		local name, amount, texture, week, weekmax, maxed, discovered = GetCurrencyInfo(id)
		local LeftString = GetOption('Icons') and T.format('%s %s', T.format('|T%s:14:14:0:0:64:64:4:60:4:60|t', texture), name) or name
		local RightString = amount
		local unused = SLE:SimpleTable(HiddenCurrency, name) or nil

		if maxed > 0 then
			RightString = T.format('%s / %s', amount, maxed)
		end

		local r1, g1, b1 = 1, 1, 1
		for i = 1, GetNumWatchedTokens() do
			local _, _, _, itemID = GetBackpackCurrencyInfo(i)
			if id == itemID then
				r1, g1, b1 = .24, .54, .78
			end
		end
		local r2, g2, b2 = r1, g1, b1
		if maxed > 0 and (amount == maxed) or weekmax > 0 and (week == weekmax) then r2, g2, b2 = .77, .12, .23 end
		if not (amount == 0 and not GetOption('Zero') and r1 == 1) and discovered and not unused then
			if not Seperator then
				DT.tooltip:AddLine(' ')
				DT.tooltip:AddLine(Text)
				Seperator = true
			end
			DT.tooltip:AddDoubleLine(LeftString, RightString, r1, g1, b1, r2, g2, b2)
		end
	end
end

local function FormatMoney(money)
	local gold, silver, copper = T.floor(abs(money / 10000)), abs(mod(money / 100, 100)), abs(mod(money, 100))
	if gold ~= 0 then
		return T.format(goldFormatter, BreakUpLargeNumbers(gold), silver, copper)
	elseif silver ~= 0 then
		return T.format(silverFormatter, silver, copper)
	else
		return T.format(copperFormatter, copper)
	end
end

local function FormatTooltipMoney(money)
	if not money then return end
	local gold, silver, copper = T.floor(abs(money / 10000)), abs(mod(money / 100, 100)), abs(mod(money, 100))
	return T.format(goldFormatter, BreakUpLargeNumbers(gold), silver, copper)
end

local function OnEvent(self, event, ...)
	if not IsLoggedIn() then return end
	local NewMoney = GetMoney();
	ElvDB = ElvDB or { };
	ElvDB["gold"] = ElvDB["gold"] or {};
	ElvDB["gold"][E.myrealm] = ElvDB["gold"][E.myrealm] or {};
	ElvDB["gold"][E.myrealm][E.myname] = ElvDB["gold"][E.myrealm][E.myname] or NewMoney;
	ElvDB["class"] = ElvDB["class"] or {};
	ElvDB["class"][E.myrealm] = ElvDB["class"][E.myrealm] or {};
	ElvDB["class"][E.myrealm][E.myname] = T.select(2, T.UnitClass('player'))
	ElvDB["faction"] = ElvDB["faction"] or {};
	ElvDB["faction"][E.myrealm] = ElvDB["faction"][E.myrealm] or {};
	ElvDB["faction"][E.myrealm]["Horde"] = ElvDB["faction"][E.myrealm]["Horde"] or {};
	ElvDB["faction"][E.myrealm]["Alliance"] = ElvDB["faction"][E.myrealm]["Alliance"] or {};

	local OldMoney = ElvDB["gold"][E.myrealm][E.myname] or NewMoney

	local calculateChange = false;
	
	if (NewMoney == 0) then
		if (self.seenZeroAlready) then
			calculateChange = true
			self.seenZeroAlready = false
		else
			self.seenZeroAlready = true
		end
	else
		self.seenZeroAlready = false
		calculateChange = true
	end

	if (calculateChange) then
		local Change = NewMoney - OldMoney

		if OldMoney > NewMoney then
			Spent = Spent - Change
		else
			Profit = Profit + Change
		end

		self.text:SetText(FormatMoney(NewMoney))

		local FactionToken, Faction = T.UnitFactionGroup('player')

		ElvDB["gold"][E.myrealm][E.myname] = NewMoney
		if (FactionToken ~= "Neutral") then
			ElvDB["faction"][E.myrealm][FactionToken][E.myname] = NewMoney
		end
	end

	if event == 'PLAYER_ENTERING_WORLD' or event == 'SPELLS_CHANGED' then
		JEWELCRAFTING = nil
		for k, v in T.pairs({T.GetProfessions()}) do
			if v then
				local name, _, _, _, _, _, skillid = T.GetProfessionInfo(v)
				if skillid == 755 then
					JEWELCRAFTING = name
				elseif skillid == 185 then
					COOKING = name
				elseif skillid == 794 then
					ARCHAEOLOGY = name
				end
			end
		end
	end
end

local function Click(self, btn)
	if btn == "RightButton" then
		if IsShiftKeyDown() then
			ElvDB.gold = nil;
			OnEvent(self)
			DT.tooltip:Hide();
		end
	else
		ToggleAllBags()
	end
end

local function OnEnter(self)
	DT:SetupTooltip(self)

	DT.tooltip:AddLine(L["Session:"])
	DT.tooltip:AddDoubleLine(L["Earned:"], FormatMoney(Profit), 1, 1, 1, 1, 1, 1)
	DT.tooltip:AddDoubleLine(L["Spent:"], FormatMoney(Spent), 1, 1, 1, 1, 1, 1)
	if Profit < Spent then
		DT.tooltip:AddDoubleLine(L["Deficit:"], FormatMoney(Profit-Spent), 1, 0, 0, 1, 1, 1)
	elseif (Profit-Spent)>0 then
		DT.tooltip:AddDoubleLine(L["Profit:"], FormatMoney(Profit-Spent), 0, 1, 0, 1, 1, 1)
	end
	DT.tooltip:AddLine' '

	local totalGold, AllianceGold, HordeGold = 0, 0, 0
	DT.tooltip:AddLine(L["Character: "])
	for k,_ in OrderedPairs(ElvDB["gold"][E.myrealm]) do
		if ElvDB["gold"][E.myrealm][k] then
			local class = ElvDB["class"][E.myrealm][k]
			local color = RAID_CLASS_COLORS[class or "PRIEST"]
			DT.tooltip:AddDoubleLine(k, FormatTooltipMoney(ElvDB["gold"][E.myrealm][k]), color.r, color.g, color.b, 1, 1, 1)
			if ElvDB["faction"][E.myrealm]["Alliance"][k] then
				AllianceGold = AllianceGold + ElvDB["gold"][E.myrealm][k]
			end
			if ElvDB["faction"][E.myrealm]["Horde"][k] then
				HordeGold = HordeGold + ElvDB["gold"][E.myrealm][k]
			end
			totalGold = totalGold + ElvDB["gold"][E.myrealm][k]
		end
	end

	DT.tooltip:AddLine' '
	DT.tooltip:AddLine(L["Server: "])
	if GetOption('Faction') then
		DT.tooltip:AddDoubleLine(T.format('%s: ', FACTION_HORDE), FormatTooltipMoney(HordeGold), HordeColor.r, HordeColor.g, HordeColor.b, 1, 1, 1)
		DT.tooltip:AddDoubleLine(T.format('%s: ', FACTION_ALLIANCE), FormatTooltipMoney(AllianceGold), AllianceColor.r, AllianceColor.g, AllianceColor.b, 1, 1, 1)
	end
	DT.tooltip:AddDoubleLine(L["Total: "], FormatTooltipMoney(totalGold), 1, 1, 1, 1, 1, 1)

	if ARCHAEOLOGY ~= nil and GetOption('Archaeology') then
		GetCurrency(ArchaeologyFragments, T.format('%s %s:', ARCHAEOLOGY, ARCHAEOLOGY_RUNE_STONES))
	end
	if COOKING ~= nil and GetOption('Cooking') then
		GetCurrency(CookingAwards, T.format("%s:", COOKING))
	end
	if JEWELCRAFTING ~= nil and GetOption('Jewelcrafting') then
		GetCurrency(JewelcraftingTokens, T.format("%s:", JEWELCRAFTING))
	end
	if GetOption('Raid') then
		GetCurrency(DungeonRaid, T.format('%s & %s:', CALENDAR_TYPE_DUNGEON, CALENDAR_TYPE_RAID))
	end
	if GetOption('PvP') then
		GetCurrency(PvPPoints, T.format("%s:", PLAYER_V_PLAYER))
	end
	if GetOption('Miscellaneous') then
		GetCurrency(MiscellaneousCurrency, T.format("%s:", MISCELLANEOUS))
	end

	DT.tooltip:AddLine' '
	DT.tooltip:AddLine(resetInfoFormatter)

	DT.tooltip:Show()
end

function DTP:CreateCurrencyDT()
	DT:RegisterDatatext('S&L Currency', {'PLAYER_ENTERING_WORLD', 'PLAYER_MONEY', 'SEND_MAIL_MONEY_CHANGED', 'SEND_MAIL_COD_CHANGED', 'PLAYER_TRADE_MONEY', 'TRADE_MONEY_CHANGED', 'SPELLS_CHANGED'}, OnEvent, nil, Click, OnEnter)
end