if not(GetLocale() == "deDE") then
    return;
end

local L = WeakAuras.L

-- Options translation
L["<"] = "< (Kleiner)"
L["<="] = "<= (Kleinergleich)"
L["="] = "= (Gleich)"
L[">"] = "> (Größer)"
L[">="] = ">= (Größergleich)"
L["!="] = "!= (Ungleich)"
L["10 Man Raid"] = "10-Mann-Schlachtzug"
-- L["20 Man Raid"] = ""
L["25 Man Raid"] = "25-Mann-Schlachtzug"
L["40 Man Raid"] = "40-Mann-Schlachtzug"
L["5 Man Dungeon"] = "5-Mann-Dungeon"
L["Absorb"] = "Absorbieren"
L["Absorbed"] = "Absorbiert"
L["Action Usable"] = "Aktion nutzbar"
-- L["Additional Trigger Replacements"] = ""
L["Affected"] = "Betroffen"
-- L["Aggro"] = ""
L["Alive"] = "Am Leben"
L["Alliance"] = "Allianz"
-- L["Allow partial matches"] = ""
L["All Triggers"] = "Alle Auslöser (UND)"
L["Alternate Power"] = "Alternative Energie"
-- L["Always"] = ""
L["Always active trigger"] = "Immer aktiver Auslöser"
L["Ambience"] = "Umgebung"
L["Amount"] = "Anzahl"
L["Anticlockwise"] = "Im Gegenuhrzeigersinn"
L["Any Triggers"] = "Ein Auslöser (ODER)"
L["Arena"] = "Arena"
L["Ascending"] = "Aufsteigend"
-- L["Assist"] = ""
L["At Least One Enemy"] = "Zumindest ein Feind"
L["Attackable"] = "Angreifbar"
L["Aura"] = "Aura (Buff/Debuff)"
L["Aura:"] = "Aura:"
L["Aura Applied"] = "Aura angewandt (AURA_APPLIED)"
L["Aura Applied Dose"] = "Aura angewandt, Stapel erhöht (AURA_APPLIED_DOSE)"
L["Aura Broken"] = "Aura gebrochen, Nahkampf (AURA_BROKEN)"
L["Aura Broken Spell"] = "Aura gebrochen, Zauber (AURA_BROKEN_SPELL)"
L["Aura Name"] = "Auraname oder -ID"
L["Aura Refresh"] = "Aura erneuert (AURA_REFRESH)"
L["Aura Removed"] = "Aura entfernt (AURA_REMOVED)"
L["Aura Removed Dose"] = "Aura entfernt, Stack verringert (AURA_REMOVED_DOSE)"
L["Auras:"] = "Auren:"
L["Aura Stack"] = "Aurastapel"
L["Aura Type"] = "Auratyp"
L["Automatic"] = "Automatisch"
-- L["Automatic Rotation"] = ""
L["Back and Forth"] = "Vor und zurück"
L["Battleground"] = "Schlachtfeld"
L["Battle.net Whisper"] = "Battle.net-Flüster"
L["BG>Raid>Party>Say"] = "Schlachtfeld>Schlachtzug>Gruppe>Sagen"
L["BG-System Alliance"] = "BG-System Allianz"
L["BG-System Horde"] = "BG-System Horde"
L["BG-System Neutral"] = "BG-System Neutral"
L["BigWigs Addon"] = "BigWigs-Addon"
-- L["BigWigs Message"] = ""
L["BigWigs Timer"] = "BigWigs-Timer"
L["Blizzard Combat Text"] = "Kampflog"
L["Block"] = "Blocken"
L["Blocked"] = "Geblockt"
L["Boss Emote"] = "Bossemote"
L["Bottom"] = "Unten"
L["Bottom Left"] = "Unten Links"
L["Bottom Right"] = "Unten Rechts"
L["Bottom to Top"] = "Von unten nach oben"
L["Bounce"] = "Hüpfen"
L["Bounce with Decay"] = "Abklingendes Hüpfen"
L["Buff"] = "Stärkungszauber"
L["Cast"] = "Zaubern"
-- L["Caster"] = ""
L["Cast Failed"] = "Zauber fehlgeschlagen (CAST_FAILED)"
L["Cast Start"] = "Zauber gestartet (CAST_START)"
L["Cast Success"] = "Zauber gelungen (CAST_SUCCESS)"
L["Cast Type"] = "Zaubertyp"
L["Center"] = "Mitte"
L["Centered Horizontal"] = "Horizontal-Zentriert"
L["Centered Vertical"] = "Vertikal zentriert"
-- L["Challenge"] = ""
L["Channel"] = "Chatkanal"
L["Channel (Spell)"] = "Kanalisieren (Zauber)"
L["Character Type"] = "Charaktertyp"
L["Charges"] = "Aufladungen"
L["Chat Frame"] = "Chatfenster"
L["Chat Message"] = "Chatnachricht"
L["Children:"] = "Kinder:"
L["Circle"] = "Kreis"
L["Circular"] = "Kreisförmig"
L["Class"] = "Klasse"
L["Click to close configuration"] = "|cFF8080FF(Klick)|r, um die Konfiguration zu schließen"
L["Click to open configuration"] = "|cFF8080FF(Klick)|r, um die Konfiguration zu öffnen"
L["Clockwise"] = "Im Uhrzeigersinn"
-- L["Clone per Event"] = ""
-- L["Clone per Match"] = ""
L["Combat Log"] = "Kampflog"
L["Conditions"] = "Bedingungen"
L["Contains"] = "Enthält"
L["Cooldown Progress (Item)"] = "Abklingzeit (Gegenstand)"
L["Cooldown Progress (Spell)"] = "Abklingzeit (Zauber)"
L["Cooldown Ready (Item)"] = "Abklingzeit vorbei (Gegenstand)"
L["Cooldown Ready (Spell)"] = "Abklingzeit vorbei (Zauber)"
L["Create"] = "Erstellen"
L["Critical"] = "Kritisch"
L["Crowd Controlled"] = "Kontrollverlust"
L["Crushing"] = "Zerschmettern"
L["Curse"] = "Fluch"
L["Custom"] = "Benutzerdefiniert"
L["Custom Function"] = "Benutzerdefinierte Funktion"
L["Damage"] = "Schaden (DAMAGE)"
L["Damager"] = "Schadensverursacher"
L["Damage Shield"] = "Schadensschild (DAMAGE_SHIELD)"
L["Damage Shield Missed"] = "Schadensschild verfehlt (DAMAGE_SHIELD_MISSED)"
L["Damage Split"] = "Schadensteilung (DAMAGE_SPLIT)"
L["DBM Announce"] = "DBM Ansage" -- Needs review
L["DBM Timer"] = "DBM-Timer"
L["Death Knight Rune"] = "Todesritter-Rune"
L["Debuff"] = "Schwächungszauber"
L["Defensive"] = "Defensiv"
L["Deflect"] = "Umlenken"
L["Descending"] = "Absteigend"
L["Destination Name"] = "Zielname"
L["Destination Unit"] = "Zieleinheit"
L["Dialog"] = "Dialog"
L["Disease"] = "Krankheit"
L["Dispel"] = "Bannen (DISPEL)"
L["Dispel Failed"] = "Bannen fehlgeschlagen (DISPEL_FAILED)"
L["Dodge"] = "Ausweichen (DODGE)"
L["Done"] = "Fertiggestellt"
L["Down"] = "Runter"
L["Drain"] = "Saugen (DRAIN)"
L["Drowning"] = "Ertrinken (DROWNING)"
L["Dungeon Difficulty"] = "Instanzschwierigkeit"
L["Durability Damage"] = "Haltbarkeitsschaden (DURABILITY_DAMAGE)"
L["Durability Damage All"] = "Haltbarkeitsschaden, Alle (DURABILITY_DAMAGE_ALL)"
L["Emote"] = "Emote"
L["Empty"] = "Leer"
L["Encounter ID"] = "Boss-ID"
L["Energize"] = "Aufladen (ENERGIZE)"
L["Enrage"] = "Wut"
L["Environmental"] = "Umgebung (ENVIRONMENTAL)"
L["Environment Type"] = "Umgebungstyp"
L["Evade"] = "Entkommen (EVADE)"
L["Event"] = "Ereignis"
L["Event(s)"] = "Ereignis(se)"
L["Every Frame"] = "Bei jedem OnUpdate"
L["Extra Amount"] = "Extrabetrag"
L["Extra Attacks"] = "Extraangriffe (EXTRA_ATTACKS)"
L["Extra Spell Name"] = "Extra-Zaubername"
L["Fade In"] = "Einblenden"
L["Fade Out"] = "Ausblenden"
L["Fail Alert"] = "Warnung für Fehlschlag"
L["Falling"] = "Fallen (FALLING)"
L["Fatigue"] = "Erschöpfung (FATIGUE)"
L["Fire"] = "Feuer"
-- L["Fishing Lure / Weapon Enchant (Old)"] = ""
L["Flash"] = "Aufblitzen"
L["Flex Raid"] = "Flexibler Schlachtzug"
L["Flip"] = "Umdrehen"
L["Focus"] = "Fokus"
L["Form"] = "Form"
L["Friendly"] = "Freundlich"
L["Friendly Fire"] = "Eigenbeschuss"
L["From"] = "Von"
L["Full"] = "Voll"
L["Full/Empty"] = "Leer/Voll"
L["Glancing"] = "Gestreift (GLANCING)"
L["Global Cooldown"] = "Globale Abklingzeit"
L["Glow"] = "Leuchten"
L["Gradient"] = "Gradient"
L["Gradient Pulse"] = "Gradient Pulse"
L["Group"] = "Gruppe"
L["Group %s"] = "Gruppe %s"
L["Grow"] = "Wachsen"
L["GTFO Alert"] = "GTFO-Warnung"
L["Guild"] = "Gilde"
L["HasPet"] = "Begleiter aktiv"
L["Has Vehicle UI"] = "Hat Fahrzeug-UI"
L["Heal"] = "Heilen"
L["Healer"] = "Heiler"
L["Health"] = "Lebenspunkte"
L["Health (%)"] = "Lebenspunkte (%)"
L["Heroic"] = "Heroisch"
L["Hide"] = "Verbergen"
L["High Damage"] = "Hoher Schaden"
L["Higher Than Tank"] = "Höher als der Tank"
L["Horde"] = "Horde"
L["Hostile"] = "Feindlich"
L["Hostility"] = "Gesinnung"
L["Humanoid"] = "Humanoid"
-- L["Hybrid"] = ""
L["Icon"] = "Symbol"
-- L["Id"] = ""
L["Ignore Rune CD"] = "Runen-CD ignorieren"
L["Immune"] = "Immun (IMMUNE)"
L["Include Bank"] = "Bank einbeziehen"
L["Include Charges"] = "Aufladungen einbeziehen"
L["In Combat"] = "Im Kampf"
L["Inherited"] = "Vererbt"
L["In Pet Battle"] = "Im Haustierkampf"
L["Inside"] = "Innerhalb"
L["Instakill"] = "Sofortiger Tod (INSTAKILL)"
-- L["Instance"] = ""
L["Instance Type"] = "Instanztyp"
L["Interrupt"] = "Unterbrechen (INTERRUPT)"
L["Interruptible"] = "Unterbrechbar"
L["In Vehicle"] = "Im Fahrzeug"
L["Inverse"] = "Invertieren"
L["Is Exactly"] = "Strikter Vergleich"
L["Is Moving"] = "Bewegt sich"
-- L["Is Off Hand"] = ""
L["Item"] = "Gegenstand"
L["Item Count"] = "Gegenstandsanzahl"
L["Item Equipped"] = "Gegenstand angelegt"
-- L["Item Set"] = ""
-- L["Item Set Equipped"] = ""
L["Lava"] = "Lava"
L["Leech"] = "Saugen (LEECH)"
L["Left"] = "Links"
L["Left to Right"] = "Links -> Rechts"
L["Level"] = "Stufe"
-- L["Looking for Raid"] = ""
L["Low Damage"] = "Niedriger Schaden"
L["Lower Than Tank"] = "Niedriger als der Tank"
L["Magic"] = "Magie"
L["Main Hand"] = "Haupthand"
-- L["Manual Rotation"] = ""
L["Master"] = "Master"
L["Matches (Pattern)"] = "Abgleichen (Muster)"
L["Message"] = "Nachricht"
L["Message type:"] = "Nachrichtentyp:"
L["Message Type"] = "Nachrichtentyp"
L["Miss"] = "Verfehlen"
L["Missed"] = "Verfehlt (MISSED)"
L["Missing"] = "Fehlend"
L["Miss Type"] = "Verfehlengrund"
L["Monochrome Outline"] = "Graustufenkontur"
L["Monochrome Thick Outline"] = "Einfarbige dicke Kontur"
L["Monster Yell"] = "NPC-Schrei"
L["Mounted"] = "Reiten"
-- L["Multistrike"] = ""
L["Multi-target"] = "Mehrfachziel"
L["Music"] = "Musik"
-- L["Mythic"] = ""
L["Name"] = "Name"
L["Neutral"] = "Neutral"
L["Never"] = "Nie"
L["Next"] = "Weiter"
L["No Children:"] = "Keine Kinder:"
L["No Instance"] = "Keine Instanz"
L["None"] = "Keine(r)"
L["Non-player Character"] = "Nicht-Spieler-Charakter (NPC)"
L["Normal"] = "Normal"
-- L["Not on cooldown"] = ""
L["Not On Threat Table"] = "Nicht auf der Bedrohungsliste"
L["Number"] = "Nummer"
L["Number Affected"] = "Betroffene Anzahl"
L["Off Hand"] = "Nebenhand"
L["Officer"] = "Offizier"
-- L["On cooldown"] = ""
L["Opaque"] = "Deckend"
L["Orbit"] = "Orbit"
L["Outline"] = "Kontur"
L["Outside"] = "Außerhalb"
L["Overhealing"] = "Überheilung"
L["Overkill"] = "Overkill"
L["Parry"] = "Parieren"
L["Party"] = "Gruppe"
L["Party Kill"] = "Gruppen Tod (PARTY_KILL)"
L["Passive"] = "Passiv"
L["Paused"] = "Pausiert"
L["Periodic Spell"] = "Periodischer Zauber (PERIODIC_SPELL)"
L["Pet"] = "Begleiter"
L["Pet Behavior"] = "Begleiterverhalten"
L["Player"] = "Spieler (Selbst)"
L["Player Character"] = "Spieler-Charakter (PC)"
L["Player Class"] = "Spielerklasse"
L["Player Dungeon Role"] = "Spielergruppenrolle"
L["Player Faction"] = "Spielerfraktion"
L["Player Level"] = "Spielerstufe"
L["Player Name"] = "Spielername"
L["Player Race"] = "Spielervolk"
L["Player(s) Affected"] = "Beeinträchtigte Spieler"
L["Player(s) Not Affected"] = "Nicht betroffene Spieler"
L["Poison"] = "Gift"
L["Power"] = "Ressource"
L["Power (%)"] = "Ressource (%)"
L["Power Type"] = "Ressourcentyp"
L["Preset"] = "Standard"
L["Progress"] = "Fortschritt"
L["Pulse"] = "Pulsieren"
L["PvP Flagged"] = "PvP aktiv"
-- L["PvP Talent selected"] = ""
L["Radius"] = "Radius"
L["Raid"] = "Schlachtzug"
L["Raid Warning"] = "Schlachtzugswarnung"
L["Range"] = "Reichweite"
-- L["Ready Check"] = ""
L["Realm"] = "Realm"
L["Receiving display information"] = "Erhalte Anzeigeinformationen von %s"
L["Reflect"] = "Reflektieren (REFLECT)"
L["Region type %s not supported"] = "Regiontyp %s wird nicht unterstützt"
L["Relative"] = "Relativ"
L["Remaining Time"] = "Verbleibende Zeit"
L["Requested display does not exist"] = "Angeforderte Anzeige existiert nicht"
L["Requested display not authorized"] = "Angeforderte Anzeige ist nicht autorisiert"
L["Require Valid Target"] = "Erfordert gültiges Ziel"
L["Resist"] = "Widerstehen"
L["Resisted"] = "Widerstanden (RESISTED)"
L["Resolve collisions dialog"] = [=[
Ein aktiviertes externes Addon definiert |cFF8800FFWeakAuras|r-Anzeigen, die den selben Namen besitzen wie bereits existierende Anzeigen.

|cFF8800FFWeakAuras|r-Anzeigen müssen umbenannt werden, um Platz für die externen Anzeigen zu machen.

Gelöst: |cFFFF0000]=]
L["Resolve collisions dialog singular"] = [=[
Ein aktiviertes externes Addon definiert eine |cFF8800FFWeakAuras|r-Anzeige, die den selben Namen besitzt wie eine bereits existierende Anzeige.

|cFF8800FFWeakAuras|r-Anzeige muss umbenannt werden, um Platz für die externe Anzeige zu machen.

Gelöst: |cFFFF0000]=]
L["Resolve collisions dialog startup"] = [=[
Ein installiertes externes Addon definiert |cFF8800FFWeakAuras|r-Anzeigen, die den selben Namen besitzen wie bereits existierende Anzeigen.

|cFF8800FFWeakAuras|r-Anzeigen müssen umbenannt werden um Platz für die externen Anzeigen zu machen.

Gelöst: |cFFFF0000]=]
L["Resolve collisions dialog startup singular"] = [=[
Ein installiertes externes Addon definiert eine |cFF8800FFWeakAuras|r-Anzeige, die den selben Namen besitzt wie eine bereits existierende Anzeige.

|cFF8800FFWeakAuras|r-Anzeige muss umbenannt werden, um Platz für die externe Anzeige zu machen.

Gelöst: |cFFFF0000]=]
L["Resting"] = "Erholen"
L["Resurrect"] = "Wiederbeleben"
L["Right"] = "Rechts"
L["Right to Left"] = "Rechts -> Links"
L["Rotate Left"] = "Nach links rotieren"
L["Rotate Right"] = "Nach rechts rotieren"
L["Rune"] = "Rune"
-- L["Rune #1"] = ""
-- L["Rune #2"] = ""
-- L["Rune #3"] = ""
-- L["Rune #4"] = ""
-- L["Rune #5"] = ""
-- L["Rune #6"] = ""
-- L["Runes Count"] = ""
L["%s - 1. Trigger"] = "%s - 1. Auslöser"
-- L["%s - Alpha Animation"] = ""
L["Say"] = "Sagen"
-- L["Scenario"] = ""
-- L["%s - Color Animation"] = ""
L["%s - Custom Text"] = "%s - Benutzerdefinierter Text"
-- L["%s Duration Function"] = ""
L["Seconds"] = "Sekunden"
-- L["%s - Finish"] = ""
-- L["%s - Finish Action"] = ""
L["Shake"] = "Beben"
L["Shift-Click to pause"] = "|cFF8080FF(Shift-Klick)|r, um zu pausieren"
L["Shift-Click to resume"] = "|cFF8080FF(Shift-Klick)|r, um fortzusetzen"
L["Show"] = "Zeigen"
L["Show Code"] = "Code zeigen"
L["Shrink"] = "Schrumpfen"
L["%s Icon Function"] = "%s Symbolfunktion"
-- L["%s - Init Action"] = ""
L["%s - %i. Trigger"] = "%s - %i. Auslöser"
L["Slide from Bottom"] = "Von unten eingleiten"
L["Slide from Left"] = "Von links eingleiten"
L["Slide from Right"] = "Von rechts eingleiten"
L["Slide from Top"] = "Von oben eingleiten"
L["Slide to Bottom"] = "Nach unten entgleiten"
L["Slide to Left"] = "Nach links entgleiten"
L["Slide to Right"] = "Nach rechts entgleiten"
L["Slide to Top"] = "Nach oben entgleiten"
L["Slime"] = "Schleim"
L["%s - Main"] = "%s - Haupt" -- Needs review
L["%s Name Function"] = "%s Namensfunktion"
L["Sound Effects"] = "Soundeffekte"
L["Source Name"] = "Quellname"
L["Source Unit"] = "Quelleinheit"
L["Spacing"] = "Abstand"
L["Specific Unit"] = "Konkrete Einheit"
L["Spell"] = "Zauber"
L["Spell (Building)"] = "Zauber, Gebäude (SPELL_BUILDING)"
-- L["Spell/Encounter Id"] = ""
-- L["Spell Id"] = ""
-- L["Spell ID"] = ""
L["Spell Name"] = "Zaubername"
L["Spin"] = "Drehen"
L["Spiral"] = "Winden"
L["Spiral In And Out"] = "Ein- und Auswinden"
-- L["%s - Rotate Animation"] = ""
-- L["%s - Scale Animation"] = ""
L["%s Stacks Function"] = "%s Stapelfunktion"
L["%s - Start"] = "%s - Start" -- Needs review
L["%s - Start Action"] = "%s - Startaktion" -- Needs review
L["Stacks"] = "Stapel"
-- L["Stagger"] = ""
L["Stance/Form/Aura"] = "Haltung/Form/Aura"
L["Status"] = "Status"
L["%s Texture Function"] = "%s Texturfunktion"
L["Stolen"] = "Gestohlen (STOLEN)"
-- L["%s total auras"] = ""
-- L["%s - Translate Animation"] = ""
L["%s Trigger Function"] = "%s Auslöserfunktion"
L["%s - Trigger Logic"] = "%s - Auslöserlogik" -- Needs review
L["Summon"] = "Herbeirufen (SUMMON)"
L["%s Untrigger Function"] = "%s Umkehrauslöser-Funktion"
L["Swing"] = "Schwingen (SWING)"
L["Swing Timer"] = "Schlagtimer"
-- L["System"] = ""
L["Talent selected"] = "Gewähltes Talent"
L["Talent Specialization"] = "Talentspezialisierung"
L["Tank"] = "Tank"
L["Tanking And Highest"] = "Höchster und Aggro"
L["Tanking But Not Highest"] = "Aggro aber nicht höchster"
L["Target"] = "Ziel"
L["Thick Outline"] = "Dicke Kontur"
L["Threat Situation"] = "Bedrohungssituation"
L["Tier "] = "Tier"
L["Timed"] = "Zeitgesteuert"
-- L["Timewalking"] = ""
L["Top"] = "Oben"
L["Top Left"] = "Oben Links"
L["Top Right"] = "Oben Rechts"
L["Top to Bottom"] = "Oben -> Unten"
L["Total"] = "Gesamt"
L["Totem"] = "Totem"
-- L["Totem #%i"] = ""
L["Totem Name"] = "Totemname"
-- L["Totem Number"] = ""
L["Transmission error"] = "Übertragungsfehler"
L["Trigger:"] = "Auslöser:"
-- L["Trigger State Updater"] = ""
L["Trigger Update"] = "Auslöseraktualisierung"
L["Undefined"] = "Undefiniert"
L["Unit"] = "Einheit"
L["Unit Characteristics"] = "Einheitencharakterisierung"
L["Unit Destroyed"] = "Einheit zerstört"
L["Unit Died"] = "Einheit gestorben"
L["Up"] = "Hoch"
L["Version error received higher"] = "Diese Anzeige ist inkompatibel zu deiner WeakAuras-Version. Sie wurde mit der Version %s erstellt, du verwendest jedoch die Version %s. Bitte aktualisiere WeakAuras."
L["Version error received lower"] = "Diese Anzeige ist inkompatibel zu deiner WeakAuras-Version. Sie wurde mit der Version %s erstellt, du verwendest jedoch die Version %s. Bitte lass die andere Person WeakAuras aktualisieren."
L["Weapon"] = "Waffen"
-- L["Weapon Enchant"] = ""
L["Whisper"] = "Flüstern"
L["Wobble"] = "Wackeln"
L["Yell"] = "Schreien"
L["Zone"] = "Zone"
L["Zone ID"] = "Zonen-ID"
L["Zone ID List"] = "Zonen-ID-Liste"



