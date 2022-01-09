--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--			  T H E   W A R   B E G I N S
--	   Stratagus - A free fantasy real time strategy game engine
--
--	upgrade.ccl	-	Define the human dependencies and upgrades.
--
--	(c) Copyright 2001-2003 by Lutz Sammer
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
--	$Id: upgrade.lua,v 1.3 2004/02/09 15:54:43 nobody_ Exp $

--	NOTE: Save can generate this table.

DefineUpgrade("upgrade-sword1", "icon", "icon-sword2",
  "costs", {   200,   800,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-sword2", "icon", "icon-sword3",
  "costs", {   250,  2400,     0,     0,     0,     0,     0})

DefineUpgrade("upgrade-arrow1", "icon", "icon-arrow2",
  "costs", {   200,   1000,   0,     0,     0,     0,     0})
DefineUpgrade("upgrade-arrow2", "icon", "icon-arrow3",
  "costs", {   300,   2000,   0,     0,     0,     0,     0})

DefineUpgrade("upgrade-human-shield1", "icon", "icon-human-shield2",
  "costs", {   200,   300,   300,     0,     0,     0,     0})
DefineUpgrade("upgrade-human-shield2", "icon", "icon-human-shield3",
  "costs", {   250,   900,   500,     0,     0,     0,     0})

DefineUpgrade("upgrade-human-ship-cannon1", "icon", "icon-human-ship-cannon2",
  "costs", {   200,   700,   100,  1000,     0,     0,     0})
DefineUpgrade("upgrade-human-ship-cannon2", "icon", "icon-human-ship-cannon3",
  "costs", {   250,  2000,   250,  3000,     0,     0,     0})
DefineUpgrade("upgrade-human-ship-armor1", "icon", "icon-human-ship-armor2",
  "costs", {   200,   500,   500,     0,     0,     0,     0})
DefineUpgrade("upgrade-human-ship-armor2", "icon", "icon-human-ship-armor3",
  "costs", {   250,  1500,   900,     0,     0,     0,     0})

DefineUpgrade("upgrade-ballista1", "icon", "icon-ballista1",
  "costs", {   250,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-ballista2", "icon", "icon-ballista2",
  "costs", {   250,  4000,     0,     0,     0,     0,     0})

DefineUpgrade("upgrade-ranger", "icon", "icon-ranger",
  "costs", {   250,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-longbow", "icon", "icon-longbow",
  "costs", {   250,  2000,     0,     0,     0,     0,     0})


-- Astroseries feature

DefineUpgrade("upgrade-farguns", "icon", "icon-longbow",
  "costs", {   100,  2000,     0,     0,     0,     0,     0})


DefineUpgrade("upgrade-ranger-scouting", "icon", "icon-ranger-scouting",
  "costs", {   250,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-ranger-marksmanship", "icon", "icon-ranger-marksmanship",
  "costs", {   250,  2500,     0,     0,     0,     0,     0})

DefineUpgrade("upgrade-paladin", "icon", "icon-paladin",
  "costs", {   250,  1000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-holy-vision", "icon", "icon-holy-vision",
  "costs", {     0,     0,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-healing", "icon", "icon-heal",
  "costs", {   200,  1000,     0,     0,     0,     0,     0})
if (extensions) then
DefineUpgrade("upgrade-area-healing", "icon", "icon-heal",
  "costs", {   400,  2000,     0,     0,     0,     0,     0})
end
DefineUpgrade("upgrade-exorcism", "icon", "icon-exorcism",
  "costs", {   200,  2000,     0,     0,     0,     0,     0})

DefineUpgrade("upgrade-flame-shield", "icon", "icon-flame-shield",
  "costs", {   100,  1000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-fireball", "icon", "icon-fireball",
  "costs", {     0,     0,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-slow", "icon", "icon-slow",
  "costs", {   100,   500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-invisibility", "icon", "icon-invisibility",
  "costs", {   200,  2500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-polymorph", "icon", "icon-critter",
  "costs", {   200,  2000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-blizzard", "icon", "icon-blizzard",
  "costs", {   200,  2000,     0,     0,     0,     0,     0})

--	NOTE: Save can generate this table.

DefineModifier("upgrade-sword1",
  {"piercing-damage", 2},
  {"apply-to", "unit-h-soldier"}, {"apply-to", "unit-h-officer"}, {"apply-to", "unit-h-irina"})


DefineModifier("upgrade-sword2",
  {"piercing-damage", 2},
  {"apply-to", "unit-h-soldier"}, {"apply-to", "unit-h-officer"}, {"apply-to", "unit-h-irina"})


DefineModifier("upgrade-arrow1",
  {"piercing-damage", 1},
  {"apply-to", "unit-h-tek-sniper"}, {"apply-to", "unit-h-adv-tek-sniper"}, {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-transport"}, {"apply-to", "unit-h-sbc"}, {"apply-to", "unit-h-helifly"}, {"apply-to", "unit-h-manta"}, {"apply-to", "unit-h-adv-manta"}, {"apply-to", "unit-h-adv-rubitek"}, {"apply-to", "unit-h-adv-helifly"}, {"apply-to", "unit-h-guard-tower"})



DefineModifier("upgrade-arrow2",
  {"piercing-damage", 1},
  {"apply-to", "unit-h-tek-sniper"}, {"apply-to", "unit-h-adv-tek-sniper"}, {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-transport"}, {"apply-to", "unit-h-sbc"}, {"apply-to", "unit-h-helifly"}, {"apply-to", "unit-h-manta"}, {"apply-to", "unit-h-adv-manta"}, {"apply-to", "unit-h-adv-rubitek"}, {"apply-to", "unit-h-adv-helifly"}, {"apply-to", "unit-h-guard-tower"})



DefineModifier("upgrade-human-shield1",
  {"armor", 2},
  {"apply-to", "unit-h-soldier"}, {"apply-to", "unit-h-armor"}, {"apply-to", "unit-h-adv-armor"},
  {"apply-to", "unit-h-rocket"}, {"apply-to", "unit-h-officer"}, {"apply-to", "unit-h-adv-helifly"},
  {"apply-to", "unit-h-petrov"}, {"apply-to", "unit-h-master"})

DefineModifier("upgrade-human-shield2",
  {"armor", 2},
  {"apply-to", "unit-h-soldier"}, {"apply-to", "unit-h-armor"}, {"apply-to", "unit-h-adv-armor"},
  {"apply-to", "unit-h-rocket"}, {"apply-to", "unit-h-officer"}, {"apply-to", "unit-h-adv-helifly"},
  {"apply-to", "unit-h-petrov"}, {"apply-to", "unit-h-master"})

DefineModifier("upgrade-human-ship-cannon1",
  {"piercing-damage", 5},
  {"apply-to", "unit-h-naval-frigate"}, {"apply-to", "unit-h-sbc"},
  {"apply-to", "unit-h-submarine"})

DefineModifier("upgrade-human-ship-cannon2",
  {"piercing-damage", 5},
  {"apply-to", "unit-h-naval-frigate"}, {"apply-to", "unit-h-sbc"},
  {"apply-to", "unit-h-submarine"})

DefineModifier("upgrade-human-ship-armor1",
  {"armor", 5},
  {"apply-to", "unit-h-naval-frigate"}, {"apply-to", "unit-h-sbc"},
  {"apply-to", "unit-h-transport"})

DefineModifier("upgrade-human-ship-armor2",
  {"armor", 5},
  {"apply-to", "unit-h-naval-frigate"}, {"apply-to", "unit-h-sbc"},
  {"apply-to", "unit-h-transport"})



-- Tank upgrades

DefineModifier("upgrade-ballista1",
  {"piercing-damage", 3},
  {"apply-to", "unit-h-tank"}, {"apply-to", "unit-h-armor"}, {"apply-to", "unit-h-adv-armor"}, {"apply-to", "unit-h-petrov"}, {"apply-to", "unit-h-missile-tower"})



DefineModifier("upgrade-ballista2",
  {"piercing-damage", 3},
  {"apply-to", "unit-h-tank"}, {"apply-to", "unit-h-armor"}, {"apply-to", "unit-h-adv-armor"}, {"apply-to", "unit-h-petrov"}, {"apply-to", "unit-h-missile-tower"})





DefineModifier("upgrade-ranger",
  {"apply-to", "unit-h-tek-sniper"}, {"convert-to", "unit-h-adv-tek-sniper"})



DefineModifier("upgrade-longbow",
  {"sight-range", 1},
  {"attack-range", 1},
  {"apply-to", "unit-h-tek-sniper"}, {"apply-to", "unit-h-adv-tek-sniper"})



-- Astroseries feature -- soldier guns gets an upgrade

DefineModifier("upgrade-farguns",
  {"attack-range", 1},
  {"apply-to", "unit-h-soldier"})



DefineModifier("upgrade-ranger-scouting",
  {"sight-range", 3},
  {"apply-to", "unit-h-tek-sniper"}, {"apply-to", "unit-h-adv-tek-sniper"})

DefineModifier("upgrade-ranger-marksmanship",
  {"piercing-damage", 3},
  {"apply-to", "unit-h-tek-sniper"}, {"apply-to", "unit-h-adv-tek-sniper"})

DefineModifier("upgrade-paladin",
  {"apply-to", "unit-h-armor"}, {"convert-to", "unit-h-adv-armor"})

DefineModifier("upgrade-holy-vision",
  {"apply-to", "unit-h-adv-armor"})

DefineModifier("upgrade-healing",
  {"apply-to", "unit-h-hospital"}, {"apply-to", "unit-n-hospital"})


if (extensions) then
DefineModifier("upgrade-area-healing",
  {"apply-to", "unit-h-adv-armor"})
end

DefineModifier("upgrade-exorcism",
  {"apply-to", "unit-h-adv-armor"})

DefineModifier("upgrade-flame-shield",
  {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-adv-rubitek"})

DefineModifier("upgrade-fireball",
  {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-adv-rubitek"},
  {"apply-to", "unit-h-master"}, {"apply-to", "unit-h-eliocan"})


DefineModifier("upgrade-slow",
  {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-adv-rubitek"})


DefineModifier("upgrade-invisibility",
  {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-adv-rubitek"})

DefineModifier("upgrade-blizzard",
  {"apply-to", "unit-h-rubitek"}, {"apply-to", "unit-h-adv-rubitek"})

--	NOTE: Save can generate this table.

--- units

DefineAllow("unit-h-soldier",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-worker",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-tank",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-armor",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-tek-sniper",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-rubitek",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-adv-armor",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-rocket",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-adv-tek-sniper",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-irina",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-adv-manta",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-adv-rubitek",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-oil-tanker",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-transport",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-naval-frigate",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-sbc",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-submarine",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-helifly",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-manta",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-scanner",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-master",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-officer",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-adv-helifly",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-petrov",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-farm",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-barracks",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-hospital",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-watch-tower",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-factory",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-a-factory",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-starport",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-shipyard",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-outpost",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-laser-factory",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-foundry",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-rubitek-armory",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-armory",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-refinery",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-oil-platform",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-fort",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-hq",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-start-location",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-guard-tower",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-missile-tower",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-human-wall",			"AAAAAAAAAAAAAAAA")



DefineAllow("unit-sbase1",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-h-ms",	"AAAAAAAAAAAAAAAA")



--- upgrades

DefineAllow("upgrade-sword1",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-sword2",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-arrow1",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-arrow2",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-human-shield1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-human-shield2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-human-ship-cannon1",	"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-human-ship-cannon2",	"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-human-ship-armor1",	"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-human-ship-armor2",	"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-ballista1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-ballista2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-ranger",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-longbow",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-ranger-scouting",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-ranger-marksmanship",	"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-paladin",			"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-holy-vision",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-healing",			"RRRRRRRRRRRRRRRR")
DefineAllow("upgrade-farguns",			"AAAAAAAAAAAAAAAA")



if (extensions) then
DefineAllow("upgrade-area-healing",		"FFFFFFFFFFFFFFFF")
-- JOHNS: engine didn't support it yet
--DefineAllow("upgrade-area-healing",		"AAAAAAAAAAAAAAAA")
end
DefineAllow("upgrade-exorcism",			"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-flame-shield",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-fireball",			"RRRRRRRRRRRRRRRR")
DefineAllow("upgrade-slow",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-invisibility",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-polymorph",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-blizzard",			"AAAAAAAAAAAAAAAA")

--	NOTE: Save can generate this table.

--- human land forces
DefineDependency("unit-h-tek-sniper",
  {"unit-h-laser-factory"})
DefineDependency("unit-h-tank",
  {"unit-h-factory"})
DefineDependency("unit-h-armor",
  {"unit-h-factory", "unit-h-armory"})
DefineDependency("unit-h-adv-tek-sniper",
  {"upgrade-ranger", "unit-h-laser-factory"})
DefineDependency("unit-h-adv-armor",
  {"upgrade-paladin", "unit-h-factory", "unit-h-armory"})

--- human naval forces

DefineDependency("unit-h-submarine",
  {"unit-h-a-factory"})



-- 5 October, 2004
-- BUG FIX: Dependency was foundry, which is incorrect. Now it has
-- been corrected with the starport. (Version 1.21 Beta)

DefineDependency("unit-h-sbc",
  {"unit-h-starport"})


--	- human air forces

DefineDependency("unit-h-helifly",
  {"unit-h-a-factory"})

DefineDependency("unit-h-scanner",
  {"unit-h-a-factory"})

DefineDependency("unit-h-transport",
  {"unit-h-a-factory"})

DefineDependency("unit-h-rocket",
  {"unit-h-a-factory"})



--- human buildings
DefineDependency("unit-h-guard-tower",
  {"unit-h-laser-factory"})
DefineDependency("unit-h-missile-tower",
  {"unit-h-armory"})
DefineDependency("unit-h-shipyard",
  {"unit-h-laser-factory"})
DefineDependency("unit-h-foundry",
  {"unit-h-shipyard"})
DefineDependency("unit-h-refinery",
  {"unit-h-shipyard"})
DefineDependency("unit-h-fort",
  {"unit-h-barracks"})
DefineDependency("unit-h-a-factory",
  {"unit-h-hq"},
  "or", {"unit-h-fort"})
DefineDependency("unit-h-factory",
  {"unit-h-hq"},
  "or", {"unit-h-fort"})
DefineDependency("unit-h-hq",
  {"unit-h-factory", "unit-h-armory", "unit-h-laser-factory"})
DefineDependency("unit-h-rubitek-armory",
  {"unit-h-hq"})

DefineDependency("unit-h-hospital",
  {"unit-h-hq"},
  "or", {"unit-h-fort"})

DefineDependency("unit-h-starport",
  {"unit-h-hq"})

--- human upgrades/research
DefineDependency("upgrade-sword2",
  {"upgrade-sword1"})
DefineDependency("upgrade-arrow2",
  {"upgrade-arrow1"})
DefineDependency("upgrade-human-shield2",
  {"upgrade-human-shield1"})
DefineDependency("upgrade-ballista2",
  {"upgrade-ballista1"})
DefineDependency("upgrade-human-ship-cannon2",
  {"upgrade-human-ship-cannon1"})
DefineDependency("upgrade-human-ship-armor2",
  {"upgrade-human-ship-armor1"})
DefineDependency("upgrade-ranger",
  {"unit-h-fort"},
  "or", {"unit-h-hq"})
DefineDependency("upgrade-longbow",
  {"unit-h-hq", "upgrade-ranger"})


DefineDependency("upgrade-farguns",
  {"unit-h-armory"})



DefineDependency("upgrade-ranger-scouting",
  {"unit-h-hq", "upgrade-ranger"})
DefineDependency("upgrade-ranger-marksmanship",
  {"unit-h-hq", "upgrade-ranger"})

--- human spells
DefineDependency("upgrade-holy-vision",
  {"upgrade-paladin"})

DefineDependency("upgrade-healing",
  {"unit-h-hospital"})

if (extensions) then
DefineDependency("upgrade-area-healing",
  {"upgrade-paladin", "upgrade-healing"})
end
DefineDependency("upgrade-exorcism",
  {"upgrade-paladin"})
