﻿-- $Id: Atlas-zhCN.lua 31 2016-06-23 07:30:35Z arith $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2016 - Arith Hsu, Atlas Team <atlas.addon@gmail.com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]
-- Atlas Localization Data (Simplified Chinese)
-- Initial translation by DiabloHu
-- Maintained by DiabloHu, arith, Ananhaid

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas", "zhCN", false);

if ( GetLocale() == "zhCN" ) then
-- Define the leading strings to be ignored while sorting
-- Ex: The Stockade
AtlasSortIgnore = {};

-- Syntax: ["real_zone_name"] = "localized map zone name"
AtlasZoneSubstitutions = {
	["Ahn'Qiraj"] = "安其拉神殿";
	["The Temple of Atal'Hakkar"] = "阿塔哈卡神庙";
};
end


if L then
L["Abandonded Mole Machine"] = "被弃用的挖掘机"
L["Abbendis"] = "阿比迪斯"
L["AC"] = "AC"
L["Acride <Scarshield Legion>"] = "阿克莱德 <裂盾军团>"
L["Adult"] = "成年"
L["Advance Scout Chadwick"] = "高级斥候卡德维克"
L["Aged Dalaran Wizard"] = "老迈的达拉然巫师"
L["Ahn'kahet Brazier"] = "安卡赫特火盆"
L["AKA"] = "亦作"
L["AK, Kahet"] = "AK, 安卡"
L["Alexi Barov <House of Barov>"] = "阿莱克斯·巴罗夫 <巴罗夫家族>"
L["Alexston Chrome <Tavern of Time>"] = "阿历克斯顿·克罗姆 <时间旅店>"
L["Alliance Base"] = "联盟基地"
L["Altar of Blood"] = "血之祭坛"
L["Altar of the Deeps"] = "玛塞斯特拉祭坛"
L["Alurmi"] = "艾鲁尔米"
L["Alurmi <Keepers of Time Quartermaster>"] = "艾鲁尔米 <时光守护者军需官>"
L["Aluyen <Reagents>"] = "奥鲁尤 <材料商>"
L["Alyson Antille"] = "阿莱松·安提雷"
L["\"Ambassador\" Dagg'thol"] = "“大使”达戈索尔"
L["Ambassador Pax'ivi"] = "帕克希维大使"
L["Ambrose Boltspark"] = "安布罗斯·雷钉"
L["Amnennar's Phylactery"] = "亚门纳尔的护命匣"
L["Anachronos <Keepers of Time>"] = "阿纳克洛斯 <时光守护者>"
L["Ancient Equine Spirit"] = "上古圣马之魂"
L["Ancient Treasure"] = "古代宝藏"
L["Andorgos <Brood of Malygos>"] = "安多葛斯 <玛里苟斯的后裔>"
L["Andormu <Keepers of Time>"] = "安多姆 <时光守护者>"
L["AN, Nerub"] = "AN, 艾卓"
L["Aoren Sunglow <The Reliquary>"] = "奥伦·日冕 <神圣遗物学会>"
L["Apoko"] = "埃波克"
L["Apothecary Baxter <Crown Chemical Co.>"] = "药剂师拜克斯特 <皇冠药剂公司>"
L["Apothecary Frye <Crown Chemical Co.>"] = "药剂师弗莱 <皇冠药剂公司>"
L["Apothecary Hummel <Crown Chemical Co.>"] = "药剂师汉摩尔 <皇冠药剂公司>"
L["Apothecary Trio"] = "药剂师三人组"
L["Apprentice Darius"] = "学徒达里乌斯"
L["AQ"] = "AQ"
L["AQ10"] = "AQ10"
L["AQ20"] = "AQ20"
L["AQ40"] = "AQ40"
L["Arazmodu <The Scale of Sands>"] = "阿拉兹姆多 <流沙之鳞>"
L["Arca"] = "Arca"
L["Arcane Container"] = "奥术容器"
L["Archivum Console"] = "档案馆控制台"
L["Archmage Alturus"] = "大法师奥图鲁斯"
L["Archmage Angela Dosantos <Brotherhood of the Light>"] = "大法师安吉拉·杜萨图斯 <圣光兄弟会>"
L["Archmage Elandra <Kirin Tor>"] = "大法师埃兰德拉 <肯瑞托>"
L["Archmage Koreln <Kirin Tor>"] = "大法师克雷林 <肯瑞托>"
L["Archmage Leryda"] = "大法师蕾尔达"
L["Archritualist Kelada"] = "大祭师克拉达"
L["Arinoth"] = "阿瑞诺思"
L["Armory"] = "Armory"
L["Arms Warrior"] = "武器战士"
L["Artificer Morphalius"] = "工匠莫法鲁斯"
L["Arygos"] = "亚雷戈斯"
L["Ashelan Northwood"] = "阿舍兰·北林"
L["ATLAS_BUTTON_CLOSE"] = "关闭"
L["ATLAS_BUTTON_TOOLTIP_HINT"] = [=[单击打开 Atlas。
中键单击打开 Atlas 选项。
右击可移动这个按钮。]=]
L["ATLAS_BUTTON_TOOLTIP_TITLE"] = "Atlas"
L["ATLAS_DDL_CONTINENT"] = "所属大陆"
L["ATLAS_DDL_CONTINENT_BROKENISLES"] = "破碎群岛副本"
L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "深岩之洲副本"
L["ATLAS_DDL_CONTINENT_DRAENOR"] = "德拉诺副本"
L["ATLAS_DDL_CONTINENT_EASTERN"] = "东部王国副本"
L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "卡利姆多副本"
L["ATLAS_DDL_CONTINENT_NORTHREND"] = "诺森德副本"
L["ATLAS_DDL_CONTINENT_OUTLAND"] = "外域副本"
L["ATLAS_DDL_CONTINENT_PANDARIA"] = "潘达利亚副本"
L["ATLAS_DDL_EXPANSION"] = "资料片"
L["ATLAS_DDL_EXPANSION_BC"] = "《燃烧的远征》副本"
L["ATLAS_DDL_EXPANSION_CATA"] = "《大地的裂变》副本"
L["ATLAS_DDL_EXPANSION_LEGION"] = "《军团再临》副本"
L["ATLAS_DDL_EXPANSION_MOP"] = "《熊猫人之谜》副本"
L["ATLAS_DDL_EXPANSION_OLD_AO"] = "旧世界副本（第一页）"
L["ATLAS_DDL_EXPANSION_OLD_PZ"] = "旧世界副本（第二页）"
L["ATLAS_DDL_EXPANSION_WOD"] = "《德拉诺之王》副本"
L["ATLAS_DDL_EXPANSION_WOTLK"] = "《巫妖王之怒》副本"
L["ATLAS_DDL_LEVEL"] = "等级"
L["ATLAS_DDL_LEVEL_100PLUS"] = "100 级以上副本"
L["ATLAS_DDL_LEVEL_100TO110"] = "100-110 级副本"
L["ATLAS_DDL_LEVEL_110PLUS"] = "110 级以上副本"
L["ATLAS_DDL_LEVEL_45TO60"] = "45-60 级副本"
L["ATLAS_DDL_LEVEL_60TO70"] = "60-70 级副本"
L["ATLAS_DDL_LEVEL_70TO80"] = "70-80 级副本"
L["ATLAS_DDL_LEVEL_80TO85"] = "80-85 级副本"
L["ATLAS_DDL_LEVEL_85PLUS"] = "85 级以上副本"
L["ATLAS_DDL_LEVEL_85TO90"] = "85-90 级以副本"
L["ATLAS_DDL_LEVEL_90TO100"] = "90-100 级以副本"
L["ATLAS_DDL_LEVEL_UNDER45"] = "45 级以下副本"
L["ATLAS_DDL_PARTYSIZE"] = "副本规模"
L["ATLAS_DDL_PARTYSIZE_10_AN"] = "10 人副本 1/2"
L["ATLAS_DDL_PARTYSIZE_10_OZ"] = "10 人副本 2/2"
L["ATLAS_DDL_PARTYSIZE_20TO40"] = "20-40 人副本"
L["ATLAS_DDL_PARTYSIZE_20TO40AH"] = "20-40 人副本 1/2"
L["ATLAS_DDL_PARTYSIZE_20TO40IZ"] = "20-40 人副本 2/2"
L["ATLAS_DDL_PARTYSIZE_5_AE"] = "5 人副本 1/3"
L["ATLAS_DDL_PARTYSIZE_5_FS"] = "5 人副本 2/3"
L["ATLAS_DDL_PARTYSIZE_5_TZ"] = "5 人副本 3/3"
L["ATLAS_DDL_TYPE"] = "类型"
L["ATLAS_DDL_TYPE_ENTRANCE"] = "入口"
L["ATLAS_DDL_TYPE_INSTANCE_AB"] = "副本 1/5"
L["ATLAS_DDL_TYPE_INSTANCE_AC"] = "副本（第一页）"
L["ATLAS_DDL_TYPE_INSTANCE_CF"] = "副本 2/5"
L["ATLAS_DDL_TYPE_INSTANCE_DR"] = "副本（第二页）"
L["ATLAS_DDL_TYPE_INSTANCE_GM"] = "副本 3/5"
L["ATLAS_DDL_TYPE_INSTANCE_NS"] = "副本 4/5"
L["ATLAS_DDL_TYPE_INSTANCE_SZ"] = "副本（第三页）"
L["ATLAS_DDL_TYPE_INSTANCE_TZ"] = "副本 5/5"
L["ATLAS_DEP_MSG1"] = "检测到过期的 Atlas 扩展插件。"
L["ATLAS_DEP_MSG2"] = "这些插件已经被禁用。"
L["ATLAS_DEP_MSG3"] = "请从插件目录（AddOns）中将其删除。"
L["ATLAS_DEP_OK"] = "确定"
L["ATLAS_ENTRANCE_BUTTON"] = "入口"
L["ATLAS_INFO"] = "Atlas 信息"
L["ATLAS_INFO_12200"] = [=[重要提示：

由于增加插件文件大小的关注，我们
移出部分地下城地图和内置插件到单
独模块。　　　　　　　　　　　　

用户可以从各大知名的游戏站点下载
我们的插件可能只包含了 Atlas 核心
功能以及大灾变地图。　　　　　　

用户如果想下载全部旧地下城地图和
全部我们制作的 Atlas 其他模块需要
单独下载。　　　　　　　　　　　

阅读更多信息在下面的论坛主题：
http://www.atlasmod.com/phpBB3/viewtopic.php?t=1522]=]
L["ATLAS_INFO_12201"] = [=[我们最近新增了一个新的 Atlas 插件 - |cff6666ffAtlas 情景战役|cffffffff，用以提供 WoW 5.0 
起新增的情景战役的地图。

请详见我们的网站以取得更详细的信息，并请记得分别下载并安装此插件。
|cff6666ffhttp://www.atlasmod.com/|cffffffff]=]
L["ATLAS_INSTANCE_BUTTON"] = "副本"
L["ATLAS_LDB_HINT"] = [=[单击打开 Atlas。
右击打开 Atlas 选项。]=]
L["ATLAS_MINIMAPLDB_HINT"] = [=[单击打开 Atlas。
右击打开 Atlas 选项。
单击並拖拉可移动这个按钮。]=]
L["ATLAS_MISSING_MODULE"] = "Atlas 已侦测到遗失的模块/插件："
L["ATLAS_OPTIONS_ACRONYMS"] = "显示简称"
L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "在地图的详尽叙述中显示副本的缩写。"
L["ATLAS_OPTIONS_AUTOSEL"] = "自动选择副本地图"
L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Atlas 可侦测您目前所在的副区域以判定您所在的副本，开启 Atlas 时将会自动选择到该副本地图。"
L["ATLAS_OPTIONS_BOSS_DESC"] = "当首领信息可获取时, 显示该信息"
L["ATLAS_OPTIONS_BOSS_DESC_SCALE"] = "首领信息提示窗口大小比率"
L["ATLAS_OPTIONS_BOSS_DESC_TIP"] = "当鼠标光标移动到地图上首领的标号时, 并且首领信息可获取时, 显示该首领的相关信息."
L["ATLAS_OPTIONS_BUTPOS"] = "图标位置"
L["ATLAS_OPTIONS_BUTRAD"] = "图标半径"
L["ATLAS_OPTIONS_BUTTON"] = "选项"
L["ATLAS_OPTIONS_CATDD"] = "副本地图排序方式："
L["ATLAS_OPTIONS_CHECKMODULE"] = "提醒我是否有遗失的模块或插件"
L["ATLAS_OPTIONS_CHECKMODULE_TIP"] = "勾选以在每次登入 WoW 时检查是否有遗失的 Atlas 模块或插件。"
L["ATLAS_OPTIONS_CLAMPED"] = "不超出游戏画面"
L["ATLAS_OPTIONS_CLAMPED_TIP"] = "使 Atlas 窗口被拖曳时不会超出游戏主画面的边界, 关闭此选项则可将 Atlas 窗口拖曳并超出游戏画面边界。"
L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "副本列表以难易度色彩显示"
L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "依据副本建议的最低进入等级、以及玩家现今等级的差异，将副本列表以难易度色彩显示。"
L["ATLAS_OPTIONS_CTRL"] = "按下 Ctrl 显示弹出工具说明"
L["ATLAS_OPTIONS_CTRL_TIP"] = "勾选后当鼠标移到地图信息字段时，按下 Ctrl 控制键，则会将信息的完整信息以提示型态显示。当信息过长而被截断时很有用。"
L["ATLAS_OPTIONS_DONTSHOWAGAIN"] = "不再显示相同信息。"
L["ATLAS_OPTIONS_LOCK"] = "锁定 Atlas 窗口"
L["ATLAS_OPTIONS_LOCK_TIP"] = "切换锁定/解锁 Atlas 窗口。"
L["ATLAS_OPTIONS_RCLICK"] = "右击打开世界地图"
L["ATLAS_OPTIONS_RCLICK_TIP"] = "在 Atlas 窗口中右击自动切换到魔兽的世界地图。"
L["ATLAS_OPTIONS_RESETPOS"] = "重置位置"
L["ATLAS_OPTIONS_SCALE"] = "缩放"
L["ATLAS_OPTIONS_SHOWBUT"] = "在小地图周围显示图标"
L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "在小地图旁显示 Atlas 按钮。"
L["ATLAS_OPTIONS_TRANS"] = "透明度"
L["ATLAS_SEARCH_UNAVAIL"] = "搜索不可用"
L["ATLAS_SLASH"] = "/atlas"
L["ATLAS_SLASH_OPTIONS"] = "options"
L["ATLAS_STRING_CLEAR"] = "重置"
L["ATLAS_STRING_LEVELRANGE"] = "等级跨度"
L["ATLAS_STRING_LOCATION"] = "区域"
L["ATLAS_STRING_MINLEVEL"] = "需要等级"
L["ATLAS_STRING_PLAYERLIMIT"] = "人数上限"
L["ATLAS_STRING_RECLEVELRANGE"] = "建议等级"
L["ATLAS_STRING_SEARCH"] = "搜索"
L["ATLAS_STRING_SELECT_CAT"] = "选择分类"
L["ATLAS_STRING_SELECT_MAP"] = "选择地图"
L["ATLAS_TITLE"] = "Atlas"
L["Attunement Required"] = "需要完成入口任务"
L["Auch"] = "Auch"
L["Augh"] = "奥弗"
L["Auld Stonespire"] = "奥尔德·石塔 "
L["Auntie Stormstout"] = "风暴烈酒大婶"
L["Avatar of the Martyred"] = "殉难者的化身"
L["Back"] = "后门"
L["Baelog's Chest"] = "巴尔洛戈的箱子"
L["Bakkalzu"] = "巴卡祖鲁"
L["Baleflame"] = "烽焰"
L["Ban Bearheart"] = "班·熊心"
L["Barkeep Kelly <Bartender>"] = "酒吧招待凯利 <调酒师>"
L["Barnes <The Stage Manager>"] = "巴内斯 <舞台管理员>"
L["Baroness Dorothea Millstipe"] = "杜萝希·米尔斯提女伯爵"
L["Baron Rafe Dreuger"] = "拉弗·杜格尔男爵"
L["Basement"] = "底层"
L["Battle for Mount Hyjal"] = "海加尔之战"
L["B.E Barechus <S.A.F.E.>"] = "“坏脾气”巴拉克斯 <S.A.F.E.>"
L["Belgaristrasz"] = "贝加里斯"
L["Belnistrasz"] = "奔尼斯特拉兹"
L["Bennett <The Sergeant at Arms>"] = "本内特 <警卫>"
L["Berinand's Research"] = "伯林纳德的研究笔记"
L["Berserking Boulder Roller"] = "狂暴滚石者"
L["Berthold <The Doorman>"] = "伯特霍德 <门卫>"
L["BF"] = "BF"
L["BFD"] = "BFD"
L["BH"] = "BH"
L["Bilger the Straight-laced"] = "古板的比格尔"
L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas 绑定"
L["BINDING_NAME_ATLAS_AUTOSEL"] = "自动选择"
L["BINDING_NAME_ATLAS_OPTIONS"] = "切换选项"
L["BINDING_NAME_ATLAS_TOGGLE"] = "切换 Atlas"
L["Black Dragonflight Chamber"] = "黑龙军团密室"
L["Blacksmithing Plans"] = "锻造设计图"
L["Blastmaster Emi Shortfuse"] = "爆破专家艾米·短线"
L["Blood Guard Hakkuz <Darkspear Elite>"] = "血卫士哈库佐 <暗矛精英>"
L["Blood of Innocents"] = "无辜者之血"
L["Bloodslayer T'ara <Darkspear Veteran>"] = "鲜血杀手塔莱 <暗矛老兵>"
L["Bloodslayer Vaena <Darkspear Veteran>"] = "鲜血杀手瓦伊纳 <暗矛老兵>"
L["Bloodslayer Zala <Darkspear Veteran>"] = "鲜血杀手扎拉 <暗矛老兵>"
L["Bodley"] = "伯德雷"
L["Bortega <Reagents & Poison Supplies>"] = "波特加 <材料与毒药商>"
L["BoT"] = "BoT"
L["Bota"] = "Bota"
L["Bovaal Whitehorn"] = "波瓦·白角"
L["Bowmistress Li <Guard Captain>"] = "女射手李琪薇 <守卫队长>"
L["Brann Bronzebeard"] = "布莱恩·铜须"
L["Brazen"] = "布拉森"
L["BRC"] = "BRC"
L["BRD"] = "BRD"
L["Brewfest"] = "美酒节"
L["BRF"] = "BRF"
L["Brigg Smallshanks"] = "布雷格"
L["Briney Boltcutter <Blackwater Financial Interests>"] = "布里尼·栓钳 <黑水金融>"
L["BRM"] = "BRM"
L["Broken Stairs"] = "破碎阶梯"
L["BSM"] = "BSM"
L["BT"] = "BT"
L["Bucket of Meaty Dog Food"] = "一桶多肉狗食"
L["BWD"] = "BWD"
L["BWL"] = "BWL"
L["Cache of Eregos"] = "埃雷苟斯的宝箱"
L["Caelestrasz"] = "凯雷斯特拉兹"
L["Calliard <The Nightman>"] = "卡利亚德 <清洁工>"
L["Captain Alina"] = "奥琳娜上尉"
L["Captain Boneshatter"] = "沙塔·碎骨上尉"
L["Captain Drenn"] = "德雷恩上尉"
L["Captain Edward Hanes"] = "爱德华·汉斯"
L["Captain Hadan"] = "哈丹队长"
L["\"Captain\" Kaftiz"] = "“上尉”卡弗提兹"
L["Captain Qeez"] = "奎兹上尉"
L["Captain Sanders"] = "杉德尔船长"
L["Captain Taylor"] = "泰勒上尉"
L["Captain Tuubid"] = "图比德上尉"
L["Captain Wyrmak"] = "维尔玛克将军"
L["Captain Xurrem"] = "库雷姆上尉"
L["Cath"] = "Cath"
L["Cathedral"] = "大教堂"
L["Cavern Entrance"] = "洞穴入口"
L["Caza'rez"] = "卡萨雷兹"
L["Celebras the Redeemed"] = "赎罪的塞雷布拉斯"
L["Centrifuge Construct"] = "离心构造体"
L["Champ"] = "Champ, 试炼"
L["Champions of the Alliance"] = "联盟冠军"
L["Champions of the Horde"] = "部落冠军"
L["Charred Bone Fragment"] = "焦骨碎块"
L["Chase Begins"] = "追捕开始"
L["Chase Ends"] = "追捕结束"
L["Chef Jessen <Speciality Meat & Slop>"] = "厨师杰森 <美食大师>"
L["Chen Stormstout"] = "陈·风暴烈酒"
L["Chester Copperpot <General & Trade Supplies>"] = "切斯特·考伯特 <杂货商>"
L["Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>"] = "首席工程师沙克斯·比格维兹 <加基森水业公司>"
L["Child"] = "幼年"
L["Chomper"] = "咀嚼者"
L["Chromie"] = "克罗米"
L["Chronicler Bah'Kini"] = "记载者拜基妮"
L["Clarissa"] = "克拉里萨"
L["Click to open Dungeon Journal window."] = "单击打开地下城手册窗口。"
L["Coffer of Forgotten Souls"] = "失落灵魂容器"
L["Colon"] = "："
L["Colonel Zerran"] = "泽兰上校"
L["Colosos"] = "克罗索斯"
L["Comma"] = "，"
L["Commander Bagran"] = "指挥官巴格兰"
L["Commander Lindon"] = "指挥官林顿"
L["Commander Mograine"] = "指挥官莫格莱尼"
L["Compendium of the Fallen"] = "堕落者纲要"
L["Connection"] = "通道"
L["Core Fragment"] = "熔火碎片"
L["CoT"] = "CoT"
L["CoT1"] = "CoT1"
L["CoT2"] = "CoT2"
L["CoT3"] = "CoT3"
L["CoT-DS"] = "CoT-DS"
L["CoT-ET"] = "CoT-ET"
L["CoT-HoT"] = "CoT-HoT"
L["CoT-Strat"] = "CoT-Strat"
L["CoT-WoE"] = "CoT-WoE"
L["CR"] = "CR"
L["Crus"] = "Crus"
L["Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>"] = "十字军指挥官埃里戈尔·黎明使者 <圣光兄弟会>"
L["Crusade Commander Korfax <Brotherhood of the Light>"] = "十字军指挥官科尔法克斯 <圣光兄弟会>"
L["Crusaders' Coliseum"] = "十字军大竞技场"
L["Crusaders' Square Postbox"] = "十字军广场邮箱"
L["Cryo-Engineer Sha'heen"] = "低温工程师沙赫恩"
L["Cursed Centaur"] = "被诅咒的半人马"
L["Darkheart"] = "黑心"
L["Dark Keeper Key"] = "黑暗守护者钥匙"
L["Dark Ranger Kalira"] = "黑暗游侠卡丽拉"
L["Dark Ranger Loralen"] = "黑暗游侠萝拉兰"
L["Dark Ranger Marrah"] = "黑暗游侠玛尔拉"
L["Dark Ranger Velonara"] = "黑暗游侠维罗娜拉"
L["Dasnurimi <Geologist & Conservator>"] = "达丝诺瑞米 <地质学家和保护人>"
L["Dealer Tariq <Shady Dealer>"] = "商人塔利基 <毒药商>"
L["Dealer Vijaad"] = "商人维嘉德"
L["Deathstalker Commander Belmont"] = "死亡猎手指挥官贝尔蒙特"
L["Defender Mordun"] = "防御者墨尔顿"
L["Dire Maul Arena"] = "厄运之槌竞技场"
L["Dire Pool"] = "厄运之池"
L["Divination Scryer"] = "预言水晶球"
L["DM"] = "DM"
L["Dominic"] = "多米尼克"
L["Don Carlos"] = "卡洛斯"
L["D'ore"] = "德欧里"
L["Draenei Spirit"] = "德莱尼灵魂"
L["Drakkisath's Brand"] = "达基萨斯的烙印"
L["Drakuru's Brazier"] = "达库鲁的火盆"
L["Drisella"] = "德雷希拉"
L["Druid of the Talon"] = "猛禽德鲁伊"
L["DTK"] = "DTK"
L["Earthbinder Rayge"] = "缚地者雷葛"
L["Earthwarden Yrsa <The Earthen Ring>"] = "大地看守者伊尔萨 <大地之环>"
L["East"] = "东"
L["EB"] = "EB"
L["Ebonlocke <The Noble>"] = "埃伯洛克 <贵族>"
L["Ebru <Disciple of Naralex>"] = "厄布鲁 <纳拉雷克斯的信徒>"
-- L["Echoing Horn of the Damned"] = ""
L["Echo of Medivh"] = "麦迪文的回音"
L["Elder Chogan'gada"] = "长者库甘达加"
L["Elder Farwhisper"] = "远风长者"
L["Elder Igasho"] = "长者伊加苏"
L["Elder Jarten"] = "长者亚尔特恩"
L["Elder Kilias"] = "长者基里亚斯"
L["Elder Mistwalker"] = "迷雾长者"
L["Elder Morndeep"] = "黎明长者"
L["Elder Nurgen"] = "长者努尔根"
L["Elder Ohanzee"] = "长者奥哈齐"
L["Elder Splitrock"] = "碎石长者"
L["Elders' Square Postbox"] = "长者广场邮箱"
L["Elder Starsong"] = "星歌长者"
L["Elder Stonefort"] = "石墙长者"
L["Elder Wildmane"] = "蛮鬃长者"
L["Elder Yurauk"] = "长者尤拉克"
L["Elevator"] = "升降梯"
L["Ellrys Duskhallow"] = "艾尔蕾丝"
L["End"] = "尾部"
L["Engineer"] = "工程师"
L["Entrance"] = "入口"
L["Eramas Brightblaze"] = "埃拉玛斯·炽光"
L["Erozion"] = "伊洛希恩"
L["Escape from Durnholde Keep"] = "逃出敦霍尔德城堡"
L["Estulan <The Highborne>"] = "埃斯图兰 <上层精灵>"
L["Eternos"] = "伊特努斯"
L["Ethereal Transporter Control Panel"] = "虚灵传送器控制台"
L["Eulinda <Reagents>"] = "尤琳达 <材料商>"
L["Eva Sarkhoff"] = "艾瓦·萨克霍夫"
L["Event"] = "事件"
L["Exalted"] = "崇拜"
L["Exarch Larethor"] = "主教拉雷索尔"
L["Exit"] = "出口"
L["Face <S.A.F.E.>"] = "费斯 <S.A.F.E.>"
L["Fairbanks"] = "法尔班克斯"
L["Falrin Treeshaper"] = "法尔林·树影"
L["Farmer Kent"] = "农夫肯特"
L["Farseer Tooranu <The Earthen Ring>"] = "先知图拉努 <大地之环>"
L["Father Flame"] = "烈焰之父"
L["Fathom Stone"] = "深渊之石"
L["Fel Crystals"] = "邪能水晶"
L["Fenstalker"] = "沼泽猎手"
L["Ferra"] = "费拉"
L["Festival Lane Postbox"] = "节日小道邮箱"
L["FH1"] = "FH1"
L["FH2"] = "FH2"
L["FH3"] = "FH3"
L["Field Commander Mahfuun"] = "战地指挥官玛弗恩"
L["Finkle Einhorn"] = "芬克·恩霍尔"
L["Fire of Aku'mai"] = "阿库麦尔之火"
L["First Fragment Guardian"] = "第一块碎片的守护者"
L["Fizzle"] = "菲兹尔"
L["FL"] = "FL"
L["Flaming Eradicator"] = "烈焰根除者"
L["Flesh'rok the Diseased <Primordial Saurok Horror>"] = "感染者弗赖什鲁克 <源生蜥蜴恐魔>"
L["Focused Eye"] = "聚焦之眼"
L["Forbidden Rites and other Rituals Necromantic"] = "禁忌咒文及其他死灵仪式"
L["Forest Frogs"] = "森林蛙"
L["FoS"] = "FoS"
L["Four Kaldorei Elites"] = "卡多雷四精英"
L["Fourth Stop"] = "第四次止步"
L["Frances Lin <Barmaid>"] = "弗兰斯·林 <招待员>"
L["Fras Siabi's Postbox"] = "弗拉斯·希亚比的邮箱"
L["From previous map"] = "到前一个地图"
L["Front"] = "前门"
L["Frostwyrm Lair"] = "萨菲隆之巢"
L["Furgus Warpwood"] = "费尔古斯·扭木"
L["Galamav the Marksman <Kargath Expeditionary Force>"] = "神射手贾拉玛弗 <卡加斯远征军>"
L["Galgrom <Provisioner>"] = "加尔戈罗姆 <供给商人>"
L["Garaxxas"] = "贾拉克萨斯"
L["Gazakroth"] = "卡扎克洛斯"
L["GB"] = "GB"
L["GD"] = "GD"
L["Ghost"] = "幽灵"
L["GL"] = "GL"
L["Gnome"] = "Gnome"
L["Gomora the Bloodletter"] = "放血者古穆拉"
L["Gorkun Ironskull"] = "戈库恩·铁颅"
L["Gradav <The Warlock>"] = "格拉达夫 <术士>"
L["Graveyard"] = "墓地"
L["Greatfather Aldrimus"] = "奥德里姆斯宗父"
L["GSS"] = "GSS"
L["Guardian of Time"] = "时光守护者"
L["Gub <Destroyer of Fish>"] = "伽布 <鲜鱼毁灭者>"
L["Guerrero"] = "古雷罗"
L["Gun"] = "Gun"
L["Gunny"] = "冈尼"
L["GY"] = "GY"
L["Ha'lei"] = "哈雷"
L["Ha'Lei"] = "哈雷"
L["Hallow's End"] = "万圣节"
L["Halls"] = "Halls"
L["Hal McAllister"] = "哈尔·马克奥里斯特"
L["Hann Ibal <S.A.F.E.>"] = "汉尼巴尔 <S.A.F.E.>"
L["Harald <Food Vendor>"] = "阿拉尔德 <食物商人>"
L["Hastings <The Caretaker>"] = "哈斯汀斯 <看管者>"
L["Haunted Stable Hand"] = "鬼怪马夫"
L["Hazlek"] = "哈兹莱克"
L["HC"] = "HC"
L["Helcular"] = "赫尔库拉"
L["Helpful Jungle Monkey"] = "有用的丛林猴子"
L["Herod the Bully"] = "赫洛德"
L["Heroic"] = "英雄模式"
-- L["Heroic_Symbol"] = ""
L["Heroic: Trial of the Grand Crusader"] = "英雄: 大十字军的试炼"
L["Hierophant Theodora Mulvadania <Kargath Expeditionary Force>"] = "塞朵拉·穆瓦丹尼 <卡加斯远征军>"
L["High Examiner Tae'thelan Bloodwatcher <The Reliquary>"] = "高阶考察者泰瑟兰·血望者 <神圣遗物学会>"
L["High Justice Grimstone"] = "裁决者格里斯通"
L["HM"] = "HM"
L["HoF"] = "HoF"
L["HoL"] = "HoL"
L["Holy Paladin"] = "神圣圣骑士"
L["Holy Priest"] = "神圣牧师"
L["HoO"] = "HoO"
L["Hooded Crusader"] = "蒙面的十字军战士"
L["HoR"] = "HoR"
L["Horde Encampment"] = "部落营地"
L["Horvon the Armorer <Armorsmith>"] = "铸甲匠霍尔冯 <护甲锻造师>"
L["HoS"] = "HoS"
L["Hunter"] = "猎人"
L["Hyphen"] = " - "
L["IC"] = "IC"
L["ID"] = "ID"
L["Image of Argent Confessor Paletress"] = "银色神官帕尔崔丝的影像"
L["Image of Drakuru"] = "达库鲁的影像"
L["Imp"] = "小鬼"
L["Indormi <Keeper of Ancient Gem Lore>"] = "因多米 <上古宝石保管者>"
L["Innkeeper Monica"] = "旅店老板莫妮卡"
L["Instructor Chillheart's Phylactery"] = "指导者寒心的护命匣"
L["In the Shadow of the Light"] = "光明下的阴影"
L["Investigator Fezzen Brasstacks"] = "调查员费岑·布莱斯塔克"
L["Invoker Xorenth"] = "祈求者克索伦斯"
L["Ironbark the Redeemed"] = "赎罪的埃隆巴克"
L["Isfar"] = "伊斯法尔"
L["Isillien"] = "伊森利恩"
L["Itesh"] = "伊特什"
L["Jaelyne Evensong"] = "娅琳·永歌"
L["Jalinda Sprig <Morgan's Militia>"] = "加琳达 <摩根民兵团>"
L["Jay Lemieux"] = "贾森·雷缪克斯"
L["J'eevee's Jar"] = "耶维尔的瓶子"
L["Je'neu Sancrea <The Earthen Ring>"] = "耶努萨克雷 <大地之环>"
L["Jerry Carter"] = "杰瑞·卡特尔"
L["Jonathan Revah"] = "乔纳森·雷瓦"
L["Joseph the Awakened"] = "醒悟的约瑟夫"
L["Joseph the Crazed"] = "发疯的约瑟夫"
L["Joseph the Insane <Scarlet Champion>"] = "癫狂的约瑟夫 <血色勇士>"
L["Julie Honeywell"] = "朱丽·哈尼维尔"
L["Kagani Nightstrike"] = "卡加尼·夜锋"
L["Kagtha"] = "卡格萨"
L["Kaldir Ironbane"] = "卡迪尔·斩铁"
L["Kaldrick"] = "卡尔德里克"
L["Kamsis <The Conjurer>"] = "卡姆希丝 <咒术师>"
L["Kandrostrasz <Brood of Alexstrasza>"] = "坎多斯特拉兹 <阿莱克丝塔萨的后裔>"
L["Kand Sandseeker <Explorer's League>"] = "坎德·沙寻者 <探险者协会>"
L["Kara"] = "Kara"
L["Kasha"] = "卡莎"
L["Kaulema the Mover"] = "搬运者伽乌里马"
L["Keanna's Log"] = "金娜的日记"
L["Kel'Thuzad's Deep Knowledge"] = "克尔苏加德的深层知识"
L["Kevin Dawson <Morgan's Militia>"] = "凯文·达森 <摩根民兵团>"
L["Key"] = "钥匙"
L["Kherrah"] = "柯尔拉"
-- L["King Bjorn"] = ""
-- L["King Haldor"] = ""
-- L["King Ranulf"] = ""
L["King's Square Postbox"] = "国王广场邮箱"
-- L["King Tor"] = ""
L["Knot Thimblejack"] = "诺特·希姆加克"
L["Koragg"] = "库拉格"
L["Korag Proudmane"] = "克拉格·傲鬃"
L["Koren <The Blacksmith>"] = "库雷恩 <铁匠>"
L["Koristrasza"] = "克莉丝塔萨"
L["Kurzel"] = "库塞尔"
L["Lady Catriona Von'Indi"] = "卡翠欧娜·冯因迪女伯爵"
L["Lady Jaina Proudmoore"] = "吉安娜·普罗德摩尔"
L["Lady Keira Berrybuck"] = "吉拉·拜瑞巴克女伯爵"
L["Lady Sylvanas Windrunner <Banshee Queen>"] = "希尔瓦娜斯·风行者 <女妖之王>"
L["Lakka"] = "拉卡"
L["Lana Stouthammer"] = "拉娜·硬锤"
L["Landing Spot"] = "着陆点"
L["Large Stone Obelisk"] = "巨石方尖碑"
L["LBRS"] = "LBRS"
L["LCoT"] = "LCoT"
L["L-DQuote"] = "“"
L["Lead Prospector Durdin <Explorer's League>"] = "首席勘探员杜尔林 <探险者协会>"
L["Legionnaire Nazgrim"] = "军团士兵纳兹戈林"
L["Lenzo"] = "雷恩佐"
L["Lexlort <Kargath Expeditionary Force>"] = "雷克斯洛特 <卡加斯远征军>"
L["Lib"] = "Lib"
L["Library"] = "图书馆"
L["Lidia Sunglow <The Reliquary>"] = "莉迪亚·日冕 <神圣遗物学会>"
L["Lieutenant Horatio Laine"] = "霍拉提奥·莱茵中尉"
L["Lieutenant Sinclari"] = "辛克莱尔中尉"
L["Little Jimmy Vishas"] = "吉米·维沙斯"
L["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = "罗克图斯·暗契 <瑟银兄弟会>"
L["Lord Afrasastrasz"] = "阿弗拉沙斯塔兹"
L["Lord Crispin Ference"] = "克里斯宾·费伦斯伯爵"
L["Lord Itharius"] = "伊萨里奥斯勋爵"
L["Lord Raadan"] = "兰尔丹"
L["Lord Robin Daris"] = "罗宾·达瑞斯伯爵"
L["Lorekeeper Javon"] = "博学者亚沃"
L["Lorekeeper Kildrath"] = "博学者基尔达斯"
L["Lorekeeper Lydros"] = "博学者莱德罗斯"
L["Lorekeeper Mykos"] = "博学者麦库斯"
L["Lorgalis Manuscript"] = "洛迦里斯手稿"
L["Lothos Riftwaker"] = "洛索斯·天痕"
L["Love is in the Air"] = "情人节"
L["Lower"] = "下层"
L["L-Parenthesis"] = "（"
L["L-SBracket"] = "["
L["Lucien Sarkhoff"] = "卢森·萨克霍夫"
L["Lumbering Oaf"] = "伐木场巨怪"
L["Lunar Festival"] = "春节庆典"
L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "鲁娜·怒藤 <火石结晶收集者>"
L["Madrigosa"] = "玛蒂苟萨"
L["Mag"] = "Mag"
L["Mage"] = "法师"
L["Magical Brazier"] = "魔法火盆"
L["Magistrate Henry Maleb"] = "赫尼·马雷布镇长"
L["Mail Box"] = "邮箱"
L["Main Chambers Access Panel"] = "主厅控制面板"
L["Major Pakkon"] = "帕库少校"
L["Major Yeggeth"] = "耶吉斯少校"
L["Mamdy the \"Ologist\""] = "“杂学家”玛姆迪"
L["MapA"] = " [1]"
L["MapB"] = " [2]"
L["MapC"] = " [3]"
L["MapD"] = " [4]"
L["MapE"] = " [5]"
L["MapF"] = " [6]"
L["MapG"] = " [7]"
L["MapH"] = " [8]"
L["MapI"] = " [9]"
L["MapJ"] = " [10]"
L["MapsNotFound"] = [=[当前选定的地下城没有 
与之相对应的地图图像。 

请确认已经安装 
相应的 Atlas 地图模块。]=]
L["Mara"] = "Mara"
L["Market Row Postbox"] = "市场邮箱"
L["Marshal Jacob Alerius"] = "雅克布·奥勒留斯元帅"
L["Marshal Maxwell <Morgan's Militia>"] = "麦克斯韦尔元帅 <摩根民兵团>"
L["Martin Victus"] = "马丁·维克图斯"
L["Master Craftsman Wilhelm <Brotherhood of the Light>"] = "工匠大师威尔海姆 <圣光兄弟会>"
L["Master Elemental Shaper Krixix"] = "大元素师克里希克"
L["Master Windstrong"] = "风涌大师"
L["MaT"] = "MT"
L["Mawago"] = "玛瓦戈"
L["Maxwort Uberglint"] = "麦克斯沃特·尤博格林"
L["Mayara Brightwing <Morgan's Militia>"] = "玛亚拉·布莱特文 <摩根民兵团>"
L["Mazoga's Spirit"] = "玛佐加的灵魂"
L["MC"] = "MC"
L["Mech"] = "Mech"
L["Meeting Stone"] = "集合石"
L["Meeting Stone of Hellfire Citadel"] = "集合石 - 地狱火堡垒"
L["Meeting Stone of Magtheridon's Lair"] = "集合石 - 玛瑟里顿的巢穴"
L["Melasong"] = "梅拉桑"
L["Melissa"] = "梅丽莎"
L["Merithra of the Dream"] = "梦境之龙麦琳瑟拉"
L["Micah"] = "米凯尔"
L["Middle"] = "中间"
L["Midsummer Festival"] = "仲夏火焰节"
L["Millhouse Manastorm"] = "米尔豪斯·法力风暴"
L["Miss Mayhem"] = "迈赫米小姐"
L["Mistress Nagmara"] = "娜玛拉小姐"
L["Monara <The Last Queen>"] = "莫纳拉 <末代皇后>"
L["Monk"] = "僧侣"
L["Moonwell"] = "月亮井"
L["Mor'Lek the Dismantler"] = "撕裂者莫尔雷克"
L["Mortaxx <The Tolling Bell>"] = "莫尔塔克斯 <死亡丧钟>"
L["Mortog Steamhead"] = "莫尔托格"
L["Mountaineer Orfus <Morgan's Militia>"] = "巡山人奥弗斯 <摩根民兵团>"
L["MP"] = "MP"
L["Mr. Bigglesworth"] = "比格沃斯"
L["MT"] = "MT"
L["Murd Doc <S.A.F.E.>"] = "莫多克 <S.A.F.E.>"
L["Muyoh <Disciple of Naralex>"] = "穆约 <纳拉雷克斯的信徒>"
L["MV"] = "MV"
L["Mysterious Bookshelf"] = "神秘的书架"
-- L["Mythic"] = ""
-- L["Mythic_Symbol"] = ""
L["Nahuud"] = "纳霍德"
L["Nalpak <Disciple of Naralex>"] = "纳尔帕克 <纳拉雷克斯的信徒>"
L["Naralex"] = "纳拉雷克斯"
L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "纳瑟尔·雷怒 <海加尔复仇者军需官>"
L["Nathanos Marris"] = "纳萨诺斯·玛瑞斯"
L["Nat Pagle"] = "纳特·帕格"
L["Naturalist Bite"] = "博学者拜特"
L["Nax"] = "Nax"
L["Neptulon"] = "耐普图隆"
L["Nex, Nexus"] = "Nex, Nexus"
L["Nexus-Prince Haramad"] = "节点亲王哈拉迈德"
L["Night Elf Village"] = "暗夜精灵村庄"
L["No'ku Stormsayer <Lord of Tempest>"] = "颂风者诺库 <狂风领主>"
L["Norkani"] = "洛尔卡尼"
L["North"] = "北"
L["Nozari <Keepers of Time>"] = "诺萨莉 <时光守护者>"
L["Nozdormu"] = "诺兹多姆"
L["Nurse Lillian"] = "护士莉莲"
L["Ocu"] = "Ocu"
L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "沃库诺 <灰舌死誓者军需官>"
L["Old Ironbark"] = "埃隆巴克"
L["Olga Runesworn <Explorer's League>"] = "奥尔达·符誓 <探险者协会>"
L["Ony"] = "Ony"
L["Opening of the Dark Portal"] = "开启黑暗之门"
L["Optional"] = "可跳过"
L["Oralius <Morgan's Militia>"] = "奥拉留斯 <摩根民兵团>"
L["Orange"] = "橙色"
L["Orb of Command"] = "命令宝珠"
L["Orb of Domination"] = "龙翼祭坛"
L["OS"] = "OS"
L["Outside"] = "室外"
L["Overcharged Manacell"] = "超载的魔法晶格"
L["Overseer Blingbang"] = "工头灵灵爆"
L["Overwatch Mark 0 <Protector>"] = "守候者零型 <保护者>"
L["Packleader Ivar Bloodfang"] = "狼群首领伊瓦·血牙"
L["Packmaster Stonebruiser <Brotherhood of the Light>"] = "马队管理者布鲁斯·石锤 <圣光兄弟会>"
L["Paladin"] = "圣骑士"
L["Path to the Broken Stairs"] = "通往破碎阶梯的通道"
L["Path to the Hellfire Ramparts and Shattered Halls"] = "通往地狱火城墙与破碎大厅的通道"
L["Period"] = "。"
L["Phin Odelic <The Kirin Tor>"] = "费恩·奥德利克 <肯瑞托>"
L["Polyformic Acid Potion"] = "蚁酸药水"
L["Portal"] = "传送"
L["PoS"] = "PoS"
L["PossibleMissingModule"] = "它们可能来自以下模块："
L["Precious"] = "小宝"
L["Priest"] = "牧师"
L["Priestess Summerpetal"] = "女牧师夏蕊"
L["Priestess Udum'bra"] = "女祭司乌达布拉"
L["Private Jacint"] = "列兵亚森特"
L["Private Rocknot"] = "罗克诺特下士"
L["Professor Slate"] = "斯雷特教授"
L["Prospector Doren"] = "勘探员多尔伦"
L["Prospector Seymour <Morgan's Militia>"] = "勘测员塞莫尔 <摩根民兵团>"
L["Protection Warrior"] = "防护战士"
L["Provisioner Tsaalt"] = "补给官塔萨尔特"
L["Pumpkin Shrine"] = "南瓜神龛"
L["Purple"] = "紫色"
L["Pylons"] = "水晶塔"
L["Quartermaster Lewis <Quartermaster>"] = "军需官刘易斯 <军需官>"
L["Raleigh the True"] = "虔诚的莱雷恩"
L["Ramdor the Mad"] = "疯狂的拉姆杜尔"
L["Ramp"] = "Ramp"
L["Ramp down to the Gamesman's Hall"] = "通往象棋大厅的斜坡"
L["Ramp to Guardian's Library"] = "通往守护者的图书馆的斜坡"
L["Ramp to Medivh's Chamber"] = "通往麦迪文房间的斜坡"
L["Ramp up to the Celestial Watch"] = "通往观星大厅的斜坡"
L["Random"] = "随机"
L["Randy Whizzlesprocket"] = "兰迪·维兹普罗克"
L["Rare"] = "稀有"
L["Raven"] = "拉文"
L["Razal'blade <Kargath Expeditionary Force>"] = "拉扎布雷德 <卡加斯远征军>"
L["Razorfen Spearhide"] = "剃刀沼泽刺鬃守卫"
L["R-DQuote"] = "”"
L["Reclaimer A'zak"] = "复国者阿扎克"
L["Red Dragonflight Chamber"] = "红龙军团密室"
L["Red Riding Hood"] = "小红帽"
L["Reinforced Archery Target"] = "强固箭靶"
L["Reinforced Fel Iron Chest"] = "强化魔铁箱"
L["Relic Coffer Key"] = "遗物宝箱钥匙"
L["Relissa"] = "蕾莉莎"
L["Relwyn Shadestar"] = "莱温·影星"
L["Renault Mograine"] = "雷诺·莫格莱尼"
L["Repair"] = "修理"
L["Reputation"] = "阵营"
L["Retribution Paladin"] = "惩戒圣骑士"
L["Rewards"] = "奖励"
L["RFC"] = "RFC"
L["RFD"] = "RFD"
L["RFK"] = "RFK"
L["Rifle Commander Coe"] = "火枪手指挥官柯伊"
L["Rifleman Brownbeard"] = "火枪手布隆恩·棕须"
L["Rimefang"] = "霜牙"
L["Rocky Horror"] = "岩石恐魔"
L["Rogue"] = "潜行者"
L["Rosa"] = "洛莎"
L["Roughshod Pike"] = "尖锐长矛"
L["R-Parenthesis"] = "）"
L["RS"] = "RS"
L["R-SBracket"] = "]"
L["Sa'at <Keepers of Time>"] = "萨艾特 <时光守护者>"
L["Safe Room"] = "安全房间"
L["Sally Whitemane"] = "萨莉·怀特迈恩"
L["SB"] = "SB"
L["SBG"] = "SBG"
L["SC"] = "SC"
L["Scarshield Quartermaster <Scarshield Legion>"] = "裂盾军需官 <裂盾军团>"
L["Schematic: Field Repair Bot 74A"] = "结构图：战地修理机器人74A型"
L["Scholo"] = "Scholo"
L["Scourge Invasion Points"] = "天灾入侵点"
L["Scout Cage"] = "斥候牢笼"
L["Scout Orgarr"] = "斥候奥贾尔"
L["Scout Thaelrid"] = "斥候塞尔瑞德"
L["Scrying Orb"] = "占卜宝珠"
L["Sebastian <The Organist>"] = "塞巴斯蒂安 <风琴手>"
L["Second Fragment Guardian"] = "第二块碎片的守护者"
L["Second Stop"] = "第二次止步"
L["Seer Ixit"] = "先知伊克塞特"
L["Seer Kanai"] = "先知坎奈"
L["Seer Olum"] = "先知奥鲁姆"
L["Semicolon"] = "；"
L["Sentinel Aluwyn"] = "哨兵阿露温"
L["Sentinel-trainee Issara"] = "受训哨兵伊莎娜"
L["Servant Quarters"] = "仆人区"
L["Seth"] = "Seth"
L["SFK"] = "SFK"
L["SH"] = "SH"
L["Shado-Master Chum Kiu"] = "影踪大师楚秋"
L["Shadowforge Brazier"] = "暗炉炭火"
L["Shadow Lord Xiraxis"] = "暗影领主希拉卡希斯"
L["Shadow Priest"] = "暗影牧师"
L["Shaman"] = "萨满祭司"
L["Shattered Hand Executioner"] = "碎手斩杀者"
L["Shavalius the Fancy <Flight Master>"] = "古怪的沙瓦留斯 <飞行管理员>"
L["Shen'dralar Ancient"] = "辛德拉古灵"
L["Shen'dralar Provisioner"] = "辛德拉圣职者"
L["Shen'dralar Watcher"] = "辛德拉观察者"
L["Shrine of Gelihast"] = "格里哈斯特神殿"
L["Sif"] = "西芙"
L["Sinan the Dreamer"] = "梦想家思南"
L["Sindragosa's Lair"] = "冰霜女王的巢穴"
L["Sister Svalna"] = "女武神席瓦娜"
L["Skar'this the Heretic"] = "异教徒斯卡希斯"
L["SL"] = "SL"
L["Slash"] = " / "
L["\"Slim\" <Shady Dealer>"] = "“瘦子” <毒药商>"
L["Slinky Sharpshiv"] = "史莉琪·剃刀"
L["Slither"] = "滑行者"
L["Sliver <Garaxxas' Pet>"] = "脆皮 <贾拉克萨斯的宠物>"
L["Slosh <Food & Drink>"] = "斯洛什 <食物与饮料>"
L["SM"] = "SM"
L["SNT"] = "SNT"
L["SoO"] = "SoO"
L["Soridormi <The Scale of Sands>"] = "索莉多米 <流沙之鳞>"
L["South"] = "南"
L["Southshore Inn"] = "南海镇旅馆"
L["SP"] = "SP"
L["Spawn Point"] = "刷新点"
L["Spinestalker"] = "猎脊冰龙"
L["Spiral Stairs to Netherspace"] = "通往虚空异界的楼梯"
L["Spirit of Agamaggan <Ancient>"] = "阿迦玛甘之魂 <远古半神>"
L["Spirit of Olum"] = "奥鲁姆之魂"
L["Spirit of Udalo"] = "乌达鲁之魂"
L["SPM"] = "SPM"
L["Spoils of Blackfathom"] = "黑暗深渊的战利品"
L["Spy Grik'tha"] = "间谍格利克萨"
L["Spy To'gun"] = "间谍托古恩"
L["SR"] = "SR"
L["SSC"] = "SSC"
L["ST"] = "ST"
L["Stairs to Underground Pond"] = "通往地下水池的楼梯"
L["Stairs to Underground Well"] = "通往地下水井的楼梯"
L["Stalvan Mistmantle"] = "斯塔文·密斯特曼托"
L["Start"] = "起始"
L["Steps and path to the Blood Furnace"] = "通往鲜血熔炉的阶梯与通道"
L["Steward of Time <Keepers of Time>"] = "时间管理者 <时光守护者>"
L["Stinky"] = "大臭"
L["Stocks"] = "Stocks"
L["Stone Guard Kurjack"] = "石头守卫库尔加克"
L["Stone Guard Stok'ton"] = "石头守卫斯托克顿"
L["Stonemaul Ogre"] = "石槌食人魔"
L["Stormherald Eljrrin"] = "风暴先驱埃尔林"
L["Strat"] = "Strat"
L["Stratholme Courier"] = "斯坦索姆信使"
L["Summon"] = "召唤"
L["Summoner's Tomb"] = "召唤者之墓"
L["SuP"] = "SP"
L["Suspicious Bookshelf"] = "奇怪的书架"
L["SV"] = "SV"
L["Taelan"] = "泰兰"
L["Talking Skull"] = "缚魂魔袋"
L["Taretha"] = "塔蕾莎"
L["Teleporter"] = "传送"
L["Teleporter destination"] = "传送目的地"
L["Teleporter to Middle"] = "传送到中间"
L["TEoE"] = "TEoE"
L["TES"] = "TES"
L["Thal'trak Proudtusk <Kargath Expeditionary Force>"] = "萨特拉克 <卡加斯远征军>"
L["The Behemoth"] = "贝哈默斯"
L["The Black Anvil"] = "黑铁砧"
L["The Black Forge"] = "黑熔炉"
L["The Captain's Chest"] = "船长的箱子"
L["The Codex of Blood"] = "鲜血法典"
L["The Culling of Stratholme"] = "净化斯坦索姆"
L["The Dark Grimoire"] = "黑暗法典"
L["The Dark Portal"] = "黑暗之门"
L["The Deed to Brill"] = "布瑞尔地契"
L["The Deed to Caer Darrow"] = "凯尔达隆地契"
L["The Deed to Southshore"] = "南海镇地契"
L["The Deed to Tarren Mill"] = "塔伦米尔地契"
L["The Discs of Norgannon"] = "诺甘农圆盘"
L["The Eye of Haramad"] = "哈拉迈德之眼"
L["The Keepers"] = "守护者"
L["The Map of Zul'Aman"] = "祖阿曼地图"
L["The Master's Terrace"] = "主宰的露台"
L["The Nameless Prophet"] = "无名预言者"
L["The Saga of Terokk"] = "泰罗克的传说"
L["The Shadowforge Lock"] = "暗炉之锁"
L["The Siege"] = "攻城区域"
L["The Sparklematic 5200"] = "超级清洁器5200型"
L["The Underspore"] = "幽暗孢子"
L["The Vault"] = "黑色宝库"
L["Third Fragment Guardian"] = "第三块碎片的守护者"
L["Third Stop"] = "第三次止步"
L["Thomas Yance <Travelling Salesman>"] = "托马斯·杨斯 <旅行商人>"
L["Thrall"] = "萨尔"
L["Thrall <Warchief>"] = "萨尔 <酋长>"
L["Thunderheart <Kargath Expeditionary Force>"] = "桑德哈特 <卡加斯远征军>"
L["Thurg"] = "索尔格"
L["Tiki Lord Mu'Loa"] = "蒂基面具之王姆罗亚"
L["Tiki Lord Zim'wae"] = "蒂基面具之王泽姆维"
L["Tinkee Steamboil"] = "丁奇·斯迪波尔"
L["Tink Sprocketwhistle <Engineering Supplies>"] = "丁克·铁哨 <工程学供应商>"
L["TJS"] = "TJS"
L["TK"] = "TK"
L["Tol'mar"] = "托玛尔"
L["Tol'vir Grave"] = "托维尔之墓"
L["To next map"] = "到下一个地图"
L["Top"] = "顶层"
L["Torben Zapblast <Teleportation Specialist>"] = "托尔本·光爆 <传送专家>"
L["Torch Lever"] = "火炬"
L["Tormented Soulpriest"] = "受折磨的灵魂牧师"
L["Tor-Tun <The Slumberer>"] = "托尔图恩 <沉睡者>"
L["ToT"] = "ToT"
L["ToTT"] = "ToTT"
L["Towards Illidan Stormrage"] = "通往伊利丹·怒风"
L["Towards Reliquary of Souls"] = "通往灵魂之匣"
L["Towards Teron Gorefiend"] = "通往塔隆·血魔"
L["Tower of Flame"] = "烈焰之塔"
L["Tower of Frost"] = "冰霜之塔"
L["Tower of Life"] = "生命之塔"
L["Tower of Storms"] = "风暴之塔"
L["Train Ride"] = "火车站"
L["Tran'rek"] = "特兰雷克"
L["Transport"] = "传送点"
L["Tribunal Chest"] = "远古法庭宝箱"
L["TSC"] = "TSC"
L["T'shu"] = "塔苏"
L["Tunnel"] = "通道"
L["TWT"] = "TWT"
L["Tydormu <Keeper of Lost Artifacts>"] = "泰多姆 <失落神器的保管者>"
L["Tyllan"] = "泰兰"
L["Tyrande Whisperwind <High Priestess of Elune>"] = "泰兰德·语风 <艾露恩的高阶女祭司>"
L["Tyrith"] = "塔雷斯"
L["UB"] = "UB"
L["UBRS"] = "UBRS"
L["Udalo"] = "先知乌达鲁"
L["UK, Keep"] = "UK, Keep"
L["Ulda"] = "Ulda"
L["Uldu"] = "Uldu"
L["Unblinking Eye"] = "不眠之眼"
L["Underwater"] = "水下"
L["Upper"] = "上层"
L["Upper Spire"] = "上层之塔"
L["UP, Pinn"] = "UP, Pinn"
L["Urok's Tribute Pile"] = "乌洛克的贡品堆"
L["Varies"] = "多个位置"
L["VC"] = "VC"
L["Vehini <Assault Provisions>"] = "维希尼 <前线供应商>"
L["Velastrasza"] = "瓦莱斯塔萨"
L["Vend-O-Tron D-Luxe"] = "售货机器人豪华版"
L["Venomancer Mauri <The Snake's Whisper>"] = "制毒师玛乌里 <蛇之呢喃>"
L["Venomancer T'Kulu <The Toxic Bite>"] = "制毒师提库鲁 <剧毒叮咬>"
L["Verdisa"] = "沃尔蒂萨"
L["Vethsera <Brood of Ysera>"] = "温瑟拉 <伊瑟拉的后裔>"
L["VH"] = "VH"
L["VoA"] = "VoA"
L["Vol'jin"] = "沃金"
L["Voodoo Pile"] = "巫毒堆"
L["Vorrel Sengutz"] = "沃瑞尔·森加斯"
L["VP"] = "VP"
L["Wanders"] = "游荡"
L["Warden Thelwater"] = "典狱官塞尔沃特"
L["Warlock"] = "术士"
L["Warlord Goretooth <Kargath Expeditionary Force>"] = "军官高图斯 <卡加斯远征军>"
L["Warlord Salaris"] = "督军沙拉利斯"
L["Warmage Kaitlyn"] = "战斗法师凯特琳"
L["Warrior"] = "战士"
L["Watcher Gashra"] = "看守者加什拉"
L["Watcher Jhang"] = "观察者杰哈恩"
L["Watcher Narjil"] = "看守者纳尔伊"
L["Watcher Silthik"] = "看守者希尔希克"
L["Watchman Doomgrip"] = "卫兵杜格瑞普"
L["Wave 10"] = "第10波"
L["Wave 12"] = "第12波"
L["Wave 18"] = "第18波"
L["Wave 5"] = "第5波"
L["Wave 6"] = "第6波"
L["WC"] = "WC"
L["Weeder Greenthumb"] = "除草者格林萨姆"
L["Weegli Blastfuse"] = "维格利"
L["Weldon Barov <House of Barov>"] = "维尔顿·巴罗夫 <巴罗夫家族>"
L["West"] = "西"
L["Willix the Importer"] = "进口商威利克斯"
L["Windcaller Claw"] = "唤风者克劳恩"
L["Witch Doctor Qu'in <Medicine Woman>"] = "巫医库因 <女药师>"
L["Witch Doctor T'wansi"] = "巫医提旺司"
L["Wizard of Oz"] = "绿野仙踪"
L["Wrath of the Lich King"] = "巫妖王之怒"
L["Wravien <The Mage>"] = "拉维恩 <法师>"
L["Yarley <Armorer>"] = "亚尔雷 <护甲商>"
L["Yazzai"] = "亚赛"
L["Young Blanchy"] = "小马布兰契"
L["Ythyar"] = "伊萨尔"
L["Yuka Screwspigot <Engineering Supplies>"] = "尤卡·斯库比格特 <工程学供应商>"
L["ZA"] = "ZA"
L["Zaladormu"] = "扎拉多姆"
L["Zanza the Restless"] = "无眠者赞扎"
L["Zanzil's Cauldron of Burning Blood"] = "赞吉尔的燃烧之血坩埚"
L["Zanzil's Cauldron of Frostburn Formula"] = "赞吉尔的霜灼药方坩埚"
L["Zanzil's Cauldron of Toxic Torment"] = "赞吉尔的剧毒折磨坩埚"
L["Zao'cho <The Emperor's Shield>"] = "曹卓 <皇帝之盾>"
L["Zelfan"] = "扎尔凡"
L["Zeya"] = "泽雅"
L["ZF"] = "ZF"
L["ZG"] = "ZG"
L["Zixil <Aspiring Merchant>"] = "吉克希尔 <有抱负的商人>"
L["Zungam"] = "苏加姆"
L["ToC/Description"] = "|cff00CC33副本地图浏览器|r"
L["ToC/Title"] = "Atlas |cFF0099FF[主程式]|r"

end
