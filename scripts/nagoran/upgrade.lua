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
--	upgrade.lua - Define the Nagoran dependencies and upgrades.
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
--	$Id: upgrade.lua,v 1.4 2004/02/09 15:54:43 nobody_ Exp $

--	NOTE: Save can generate this table.

DefineUpgrade("upgrade-battle-axe1", "icon", "icon-battle-axe2",
  "costs", {   200,   500,   100,     0,     0,     0,     0})
DefineUpgrade("upgrade-battle-axe2", "icon", "icon-battle-axe3",
  "costs", {   250,  1500,   300,     0,     0,     0,     0})
DefineUpgrade("upgrade-throwing-axe1", "icon", "icon-throwing-axe2",
  "costs", {   200,   300,   300,     0,     0,     0,     0})
DefineUpgrade("upgrade-throwing-axe2", "icon", "icon-throwing-axe3",
  "costs", {   250,   900,   500,     0,     0,     0,     0})
DefineUpgrade("upgrade-orc-shield1", "icon", "icon-orc-shield2",
  "costs", {   200,   300,   300,     0,     0,     0,     0})
DefineUpgrade("upgrade-orc-shield2", "icon", "icon-orc-shield3",
  "costs", {   250,   900,   500,     0,     0,     0,     0})
DefineUpgrade("upgrade-orc-ship-cannon1", "icon", "icon-orc-ship-cannon2",
  "costs", {   200,   700,   100,  1000,     0,     0,     0})
DefineUpgrade("upgrade-orc-ship-cannon2", "icon", "icon-orc-ship-cannon3",
  "costs", {   250,  2000,   250,  3000,     0,     0,     0})
DefineUpgrade("upgrade-orc-ship-armor1", "icon", "icon-orc-ship-armor2",
  "costs", {   200,   500,   500,     0,     0,     0,     0})
DefineUpgrade("upgrade-orc-ship-armor2", "icon", "icon-orc-ship-armor3",
  "costs", {   250,  1500,   900,     0,     0,     0,     0})
DefineUpgrade("upgrade-catapult1", "icon", "icon-catapult1",
  "costs", {   250,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-catapult2", "icon", "icon-catapult2",
  "costs", {   250,  4000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-berserker", "icon", "icon-berserker",
  "costs", {   125,  1000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-light-axes", "icon", "icon-light-axes",
  "costs", {   250,  2000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-berserker-scouting", "icon", "icon-berserker-scouting",
  "costs", {   250,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-berserker-regeneration",
  "icon", "icon-berserker-regeneration",
  "costs", {   250,  3000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-ogre-mage", "icon", "icon-ogre-mage",
  "costs", {   250,  1000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-eye-of-kilrogg", "icon", "icon-eye-of-kilrogg",
  "costs", {     0,     0,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-bloodlust", "icon", "icon-bloodlust",
  "costs", {   100,  1000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-raise-dead", "icon", "icon-skeleton",
  "costs", {   100,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-death-coil", "icon", "icon-death-coil",
  "costs", {   100,     0,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-whirlwind", "icon", "icon-whirlwind",
  "costs", {   150,  1500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-haste", "icon", "icon-haste",
  "costs", {   100,   500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-unholy-armor", "icon", "icon-unholy-armor",
  "costs", {   200,  2500,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-runes", "icon", "icon-runes",
  "costs", {   150,  1000,     0,     0,     0,     0,     0})
DefineUpgrade("upgrade-death-and-decay", "icon", "icon-death-and-decay",
  "costs", {   200,  2000,     0,     0,     0,     0,     0})

--	NOTE: Save can generate this table.

DefineModifier("upgrade-battle-axe1",
  {"piercing-damage", 2},
  {"apply-to", "unit-n-guard"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-adv-kxet"},
  {"apply-to", "unit-n-rocket"}, {"apply-to", "unit-n-hero2"},
  {"apply-to", "unit-n-goruzduz"}, {"apply-to", "unit-n-hero1"},
  {"apply-to", "unit-n-hero5"})

DefineModifier("upgrade-battle-axe2",
  {"piercing-damage", 2},
  {"apply-to", "unit-n-guard"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-adv-kxet"},
  {"apply-to", "unit-n-rocket"}, {"apply-to", "unit-n-hero2"},
  {"apply-to", "unit-n-goruzduz"}, {"apply-to", "unit-n-hero1"},
  {"apply-to", "unit-n-hero5"})



DefineModifier("upgrade-throwing-axe1",
  {"piercing-damage", 1},
  {"apply-to", "unit-n-armed-guard"}, {"apply-to", "unit-n-warrior"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-adv-kxet"}, {"apply-to", "unit-n-adv-warrior"}, {"apply-to", "unit-n-master-warrior"}, {"apply-to", "unit-n-hero1"}, {"apply-to", "unit-n-goruzduz"}, {"apply-to", "unit-n-transport"}, {"apply-to", "unit-n-litan"}, {"apply-to", "unit-n-interceptor"}, {"apply-to", "unit-n-scout"}, {"apply-to", "unit-n-hero3"}, {"apply-to", "unit-n-hero5"}, {"apply-to", "unit-n-hero6"}, {"apply-to", "unit-n-mau-kamrak"}, {"apply-to", "unit-n-guard-tower"})


DefineModifier("upgrade-throwing-axe2",
  {"piercing-damage", 1},
  {"apply-to", "unit-n-armed-guard"}, {"apply-to", "unit-n-warrior"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-adv-kxet"}, {"apply-to", "unit-n-adv-warrior"}, {"apply-to", "unit-n-master-warrior"}, {"apply-to", "unit-n-hero1"}, {"apply-to", "unit-n-goruzduz"}, {"apply-to", "unit-n-transport"}, {"apply-to", "unit-n-litan"}, {"apply-to", "unit-n-interceptor"}, {"apply-to", "unit-n-scout"}, {"apply-to", "unit-n-hero3"}, {"apply-to", "unit-n-hero5"}, {"apply-to", "unit-n-hero6"}, {"apply-to", "unit-n-mau-kamrak"}, {"apply-to", "unit-n-guard-tower"})




DefineModifier("upgrade-orc-shield1",
  {"armor", 2},
  {"apply-to", "unit-n-guard"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-adv-kxet"},
  {"apply-to", "unit-n-rocket"}, {"apply-to", "unit-n-hero2"},
  {"apply-to", "unit-n-goruzduz"}, {"apply-to", "unit-n-hero1"},
  {"apply-to", "unit-n-hero5"})

DefineModifier("upgrade-orc-shield2",
  {"armor", 2},
  {"apply-to", "unit-n-guard"}, {"apply-to", "unit-n-kxet"}, {"apply-to", "unit-n-adv-kxet"},
  {"apply-to", "unit-n-rocket"}, {"apply-to", "unit-n-hero2"},
  {"apply-to", "unit-n-goruzduz"}, {"apply-to", "unit-n-hero1"},
  {"apply-to", "unit-n-hero5"})

DefineModifier("upgrade-orc-ship-cannon1",
  {"piercing-damage", 5},
  {"apply-to", "unit-n-mtila"}, {"apply-to", "unit-n-litan"},
  {"apply-to", "unit-n-subwater"})

DefineModifier("upgrade-orc-ship-cannon2",
  {"piercing-damage", 5},
  {"apply-to", "unit-n-mtila"}, {"apply-to", "unit-n-litan"},
  {"apply-to", "unit-n-subwater"})

DefineModifier("upgrade-orc-ship-armor1",
  {"armor", 5},
  {"apply-to", "unit-n-mtila"}, {"apply-to", "unit-n-litan"},
  {"apply-to", "unit-n-transport"})

DefineModifier("upgrade-orc-ship-armor2",
  {"armor", 5},
  {"apply-to", "unit-n-mtila"}, {"apply-to", "unit-n-litan"},
  {"apply-to", "unit-n-transport"})





-- October 14, 2004
-- Next two modifiers set to correct piercing damage value of 3. (Version 1.21 Beta)

DefineModifier("upgrade-catapult1",
  {"piercing-damage", 3},
  {"apply-to", "unit-n-mxet"})

DefineModifier("upgrade-catapult2",
  {"piercing-damage", 3},
  {"apply-to", "unit-n-mxet"})






DefineModifier("upgrade-berserker",
  {"apply-to", "unit-n-guard"}, {"convert-to", "unit-n-armed-guard"})


DefineModifier("upgrade-light-axes",
  {"sight-range", 1},
  {"attack-range", 1},
  {"apply-to", "unit-n-armed-guard"})



DefineModifier("upgrade-berserker-scouting",
  {"sight-range", 3},
  {"apply-to", "unit-n-warrior"}, {"apply-to", "unit-n-adv-warrior"})

DefineModifier("upgrade-berserker-regeneration",
  {"regeneration-rate", 1},
  {"apply-to", "unit-n-warrior"}, {"apply-to", "unit-n-adv-warrior"})

DefineModifier("upgrade-ogre-mage",
  {"apply-to", "unit-n-kxet"}, {"convert-to", "unit-n-adv-kxet"})


DefineModifier("upgrade-eye-of-kilrogg",
  {"apply-to", "unit-n-adv-kxet"})

DefineModifier("upgrade-bloodlust",
 {"apply-to", "unit-n-adv-kxet"})

DefineModifier("upgrade-runes",
  {"apply-to", "unit-n-adv-kxet"})


DefineModifier("upgrade-raise-dead",
  {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-hero6"},
  {"apply-to", "unit-n-master-warrior"})

DefineModifier("upgrade-death-coil",
  {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-hero6"},
  {"apply-to", "unit-n-master-warrior"}, {"apply-to", "unit-h-master"}, {"apply-to",   "unit-h-eliocan"})



DefineModifier("upgrade-whirlwind",
  {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-hero6"},
  {"apply-to", "unit-n-master-warrior"})

DefineModifier("upgrade-haste",
  {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-hero6"},
  {"apply-to", "unit-n-master-warrior"})

DefineModifier("upgrade-unholy-armor",
  {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-hero6"},
  {"apply-to", "unit-n-master-warrior"})

DefineModifier("upgrade-death-and-decay",
  {"apply-to", "unit-n-sp-warrior"}, {"apply-to", "unit-n-hero6"},
  {"apply-to", "unit-n-master-warrior"})

--	NOTE: Save can generate this table.

DefineAllow("unit-n-guard",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-worker",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-mxet",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-kxet",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-warrior",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-sp-warrior",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-adv-kxet",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-rocket",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-adv-warrior",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-master-warrior",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hero1",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hero2",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-oil-tanker",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-transport",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-mtila",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-litan",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hero3",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-subwater",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-interceptor",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-scout",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hero4",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-goruzduz",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hero5",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hero6",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-mau-kamrak",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-farm",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-barracks",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-hospital",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-watch-tower",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-factory",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-a-factory",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-star-building",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-shipyard",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-colony-center",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-blaster-factory",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-foundry",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-mw-factory",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-armory",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-refinery",		"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-oil-platform",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-town-center",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-city-center",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-start-location",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-guard-tower",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-missile-tower",	"AAAAAAAAAAAAAAAA")
DefineAllow("unit-orc-wall",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-armed-guard",			"AAAAAAAAAAAAAAAA")
DefineAllow("unit-n-vision",			"AAAAAAAAAAAAAAAA")




--- upgrades

DefineAllow("upgrade-battle-axe1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-battle-axe2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-throwing-axe1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-throwing-axe2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-orc-shield1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-orc-shield2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-orc-ship-cannon1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-orc-ship-cannon2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-orc-ship-armor1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-orc-ship-armor2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-catapult1",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-catapult2",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-berserker",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-light-axes",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-berserker-scouting",	"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-berserker-regeneration",	"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-ogre-mage",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-eye-of-kilrogg",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-bloodlust",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-raise-dead",		"FFFFFFFFFFFFFFFF")
DefineAllow("upgrade-death-coil",		"RRRRRRRRRRRRRRRR")
DefineAllow("upgrade-whirlwind",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-haste",			"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-unholy-armor",		"AAAAAAAAAAAAAAAA")
DefineAllow("upgrade-runes",			"AAAAAAAAAAAAAAAA")

-- Death and decay is a nuke equipped on both Star Battlecruisers and Litans

DefineAllow("upgrade-death-and-decay",		"AAAAAAAAAAAAAAAA")





--	NOTE: Save can generate this table.

--- Nagoran land forces
DefineDependency("unit-n-warrior",
  {"unit-n-blaster-factory"})


DefineDependency("unit-n-armed-guard",
  {"upgrade-berserker", "unit-n-blaster-factory"})


-- Nagoran Tanks

DefineDependency("unit-n-mxet",
  {"unit-n-factory"})

DefineDependency("unit-n-kxet",
  {"unit-n-factory", "unit-n-armory"})




DefineDependency("unit-n-adv-kxet",
  {"upgrade-ogre-mage", "unit-n-factory", "unit-n-armory"})

--	- nagoran naval forces
DefineDependency("unit-n-subwater",
  {"unit-n-a-factory"})



--	- nagoran light air forces

DefineDependency("unit-n-interceptor",
  {"unit-n-a-factory"})

DefineDependency("unit-n-vision",
  {"unit-n-a-factory"})

DefineDependency("unit-n-transport",
  {"unit-n-a-factory"})

DefineDependency("unit-n-rocket",
  {"unit-n-a-factory"})



--	- nagoran heavy air forces

DefineDependency("unit-n-scout",
  {"unit-n-star-building"})

DefineDependency("unit-n-litan",
  {"unit-n-star-building"})




--- nagoran buildings
DefineDependency("unit-n-guard-tower",
  {"unit-n-blaster-factory"})
DefineDependency("unit-n-missile-tower",
  {"unit-n-armory"})
DefineDependency("unit-n-shipyard",
  {"unit-n-blaster-factory"})
DefineDependency("unit-n-foundry",
  {"unit-n-shipyard"})
DefineDependency("unit-n-refinery",
  {"unit-n-shipyard"})
DefineDependency("unit-n-town-center",
  {"unit-n-barracks"})
DefineDependency("unit-n-a-factory",
  {"unit-n-town-center"},
  "or", {"unit-n-city-center"})
DefineDependency("unit-n-factory",
  {"unit-n-town-center"},
  "or", {"unit-n-city-center"})
DefineDependency("unit-n-city-center",
  {"unit-n-factory", "unit-n-armory", "unit-n-blaster-factory"})

DefineDependency("unit-n-hospital",
  {"unit-n-town-center"},
  "or", {"unit-n-city-center"})

DefineDependency("unit-n-mw-factory",
  {"unit-n-city-center"})
DefineDependency("unit-n-star-building",
  {"unit-n-city-center"})

--- orc upgrades/research
DefineDependency("upgrade-battle-axe2",
  {"upgrade-battle-axe1"})
DefineDependency("upgrade-throwing-axe2",
  {"upgrade-throwing-axe1"})
DefineDependency("upgrade-orc-shield2",
  {"upgrade-orc-shield1"})
DefineDependency("upgrade-catapult2",
  {"upgrade-catapult1"})
DefineDependency("upgrade-orc-ship-cannon2",
  {"upgrade-orc-ship-cannon1"})
DefineDependency("upgrade-orc-ship-armor2",
  {"upgrade-orc-ship-armor1"})




DefineDependency("upgrade-berserker-scouting",
  {"unit-n-city-center", "upgrade-berserker"})
DefineDependency("upgrade-berserker-regeneration",
  {"unit-n-city-center", "upgrade-berserker"})
DefineDependency("upgrade-light-axes",
  {"unit-n-city-center", "upgrade-berserker"})

--- orc spells
DefineDependency("upgrade-eye-of-kilrogg",
  {"upgrade-ogre-mage"})
DefineDependency("upgrade-bloodlust",
  {"upgrade-ogre-mage"})
DefineDependency("upgrade-runes",
  {"upgrade-ogre-mage"})
