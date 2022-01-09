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
--	buttons.lua	-	Define the", "unit-buttons of the Nagoran race.
--
--	(c) Copyright 2001-2003 by Vladi Belperchinov-Shabanski and Lutz Sammer
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
--	$Id: buttons.lua,v 1.5 2004/02/09 15:54:43 nobody_ Exp $

-- general commands -- almost all units have it -------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-move-peon",
  Action = "move",
  Key = "m", Hint = "~!MOVE",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-worker",
    "unit-n-hero1", "unit-n-hero5",
    "unit-n-mau-kamrak", "unit-n-hero2", "unit-n-goruzduz", "unit-n-hero6",
    "unit-n-master-warrior", "unit-n-armed-guard", "unit-n-hero4", "unit-n-scout",
    "unit-n-interceptor", "unit-n-sp-warrior", "unit-n-hero3",
    "orc-group", "unit-n-mau-dakiz"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-shield1",
  Action = "stop",
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-worker",
    "unit-n-hero1", "unit-n-hero5",
    "unit-n-mau-kamrak", "unit-n-hero2", "unit-n-goruzduz", "unit-n-hero6",
    "unit-n-master-warrior", "unit-n-armed-guard", "unit-n-hero4", "unit-n-scout",
    "unit-n-interceptor", "unit-n-sp-warrior", "unit-n-hero3",
    "orc-group", "unit-n-mau-dakiz"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-shield2",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-orc-shield1"},
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero2",
    "unit-n-goruzduz", "unit-n-hero1", "unit-n-hero5"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-shield3",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-orc-shield2"},
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero2",
    "unit-n-goruzduz", "unit-n-hero1", "unit-n-hero5"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-battle-axe1",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-worker",
    "unit-n-hero1", "unit-n-hero5",
    "unit-n-mau-kamrak", "unit-n-hero2", "unit-n-goruzduz", "unit-n-hero6",
    "unit-n-master-warrior", "unit-n-armed-guard", "unit-n-scout", "unit-n-hero3",
    "orc-group", "unit-n-interceptor", "unit-n-mau-dakiz", "unit-n-sp-warrior", "unit-n-hero6",     "unit-n-master-warrior"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-battle-axe2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-battle-axe1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero2",
    "unit-n-goruzduz", "unit-n-hero1", "unit-n-hero5"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-battle-axe3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-battle-axe2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero2",
    "unit-n-goruzduz", "unit-n-hero1", "unit-n-hero5", "unit-n-interceptor"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-throwing-axe1",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-warrior", "unit-n-adv-warrior", "unit-n-mau-kamrak"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-throwing-axe2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-throwing-axe1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-warrior", "unit-n-adv-warrior", "unit-n-mau-kamrak"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-throwing-axe3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-throwing-axe2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-warrior", "unit-n-adv-warrior", "unit-n-mau-kamrak"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult1",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-catapult1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-mxet"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-catapult2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-mxet"} } )

if (extensions) then
DefineButton( { Pos = 4, Level = 0, Icon = "icon-orc-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero1",
    "unit-n-hero5", "unit-n-mau-kamrak", "unit-n-hero2", "unit-n-goruzduz",
    "unit-n-armed-guard", "unit-n-scout", "unit-n-hero3", "orc-group",
    "unit-n-interceptor", "unit-n-hero4", "unit-n-mau-dakiz"} } )
else
DefineButton( { Pos = 4, Level = 0, Icon = "icon-orc-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero1",
    "unit-n-hero5", "unit-n-mau-kamrak", "unit-n-hero2", "unit-n-goruzduz",
    "unit-n-armed-guard", "unit-n-scout", "unit-n-hero3", "orc-group"} } )
end

DefineButton( { Pos = 5, Level = 0, Icon = "icon-orc-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = "S~!TAND GROUND",
  ForUnit = {"unit-n-guard", "unit-n-kxet", "unit-n-warrior", "unit-n-adv-kxet",
    "unit-n-rocket", "unit-n-adv-warrior", "unit-n-mxet", "unit-n-hero1",
    "unit-n-hero5", "unit-n-mau-kamrak", "unit-n-hero2", "unit-n-goruzduz",
    "unit-n-armed-guard", "unit-n-scout", "unit-n-hero3", "unit-n-subwater",
    "unit-n-litan", "unit-n-mtila", "unit-n-interceptor", "unit-n-mau-dakiz", "orc-group"} } )


--
-- No attack ground button, thanks.
-- 
-- DefineButton( { Pos = 6, Level = 0, Icon = "icon-orc-attack-ground",
--  Action = "attack-ground",
--  Key = "g", Hint = "ATTACK ~!GROUND",
--  ForUnit = {"unit-n-mxet", "orc-group"} } )
--


DefineButton( { Pos = 3, Level = 0, Icon = "icon-orc-demolish",
  Action = "cast-spell", Value = "spell-suicide-bomber",
  Allowed = "check-true",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-rocket"} } )



-- ogre-mage specific actions -------------------------------------------------

-- No ogre mages in this game, buttons disabled

--  DefineButton( { Pos = 7, Level = 0, Icon = "icon-eye-of-kilrogg",
--  Action = "cast-spell", Value = "spell-eye-of-vision",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-eye-of-kilrogg"},
--  Key = "k", Hint = "EYE OF ~!KILROGG",
--  ForUnit = {"unit-n-hero1"} } )

--  DefineButton( { Pos = 8, Level = 0, Icon = "icon-bloodlust",
--  Action = "cast-spell", Value = "spell-bloodlust",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-bloodlust"},
--  Key = "b", Hint = "~!BLOODLUST",
--  ForUnit = {"unit-n-hero1"} } )

--  DefineButton( { Pos = 9, Level = 0, Icon = "icon-runes",
--  Action = "cast-spell", Value = "spell-runes",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-runes"},
--  Key = "r", Hint = "~!RUNES",
--  ForUnit = {"unit-n-hero1"} } )



-- cho'gall specific actions --- same as ogre mage but it has them always -----
-- This has been disabled. These spells are not used in Astroseries.

-- DefineButton( { Pos = 7, Level = 0, Icon = "icon-eye-of-kilrogg",
--  Action = "cast-spell", Value = "spell-eye-of-vision",
--  Allowed = "check-true",
--  Key = "k", Hint = "EYE OF ~!KILROGG",
--  ForUnit = {"unit-n-hero5"} } )

-- DefineButton( { Pos = 8, Level = 0, Icon = "icon-bloodlust",
--  Action = "cast-spell", Value = "spell-bloodlust",
--  Allowed = "check-true",
--  Key = "b", Hint = "~!BLOODLUST",
--  ForUnit = {"unit-n-hero5"} } )

-- DefineButton( { Pos = 9, Level = 0, Icon = "icon-runes",
--  Action = "cast-spell", Value = "spell-runes",
--  Allowed = "check-true",
--  Key = "r", Hint = "~!RUNES",
--  ForUnit = {"unit-n-hero5"} } )


-- death-knight specific actions ----------------------------------------------

--
-- DefineButton( { Pos = 3, Level = 0, Icon = "icon-touch-of-darkness",
--  Action = "attack",
--  Key = "a", Hint = "~!ARKNESS",
--  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )
--

DefineButton( { Pos = 4, Level = 0, Icon = "icon-fireball",
  Action = "cast-spell", Value = "spell-fireball",
  Allowed = "check-upgrade", AllowArg = {"upgrade-fireball"},
  Key = "f", Hint = "~!FIREBALL",
  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )


DefineButton( { Pos = 5, Level = 0, Icon = "icon-death-coil",
  Action = "cast-spell", Value = "spell-death-coil",
  Allowed = "check-upgrade", AllowArg = {"upgrade-death-coil"},
  Key = "x", Hint = "~!X-ZONE",
  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )


DefineButton( { Pos = 6, Level = 0, Icon = "icon-haste",
  Action = "cast-spell", Value = "spell-haste",
  Allowed = "check-upgrade", AllowArg = {"upgrade-haste"},
  Key = "h", Hint = "~!HASTE",
  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )

-- No raise dead spell/skill in Astroseries
-- DefineButton( { Pos = 6, Level = 0, Icon = "icon-raise-dead",
--  Action = "cast-spell", Value = "spell-raise-dead",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-raise-dead"},
--  Key = "r", Hint = "~!UNUSED",
--  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )


DefineButton( { Pos = 7, Level = 0, Icon = "icon-unholy-armor",
  Action = "cast-spell", Value = "spell-unholy-armor",
  Allowed = "check-upgrade", AllowArg = {"upgrade-unholy-armor"},
  Key = "s", Hint = "~!SHADOW",
  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )


DefineButton( { Pos = 8, Level = 0, Icon = "icon-whirlwind",
  Action = "cast-spell", Value = "spell-whirlwind",
  Allowed = "check-upgrade", AllowArg = {"upgrade-whirlwind"},
  Key = "w", Hint = "~!WHIRLWIND",
  ForUnit = {"unit-n-sp-warrior", "unit-n-hero6", "unit-n-master-warrior"} } )




-- Litan actions

DefineButton( { Pos = 9, Level = 0, Icon = "icon-death-and-decay",
  Action = "cast-spell", Value = "spell-death-and-decay",
  Allowed = "check-upgrade", AllowArg = {"upgrade-death-and-decay"},
  Key = "n", Hint = "~!NUCLEAR STRIKE",
  ForUnit = {"unit-n-litan"} } )



-- peon specific actions ------------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!REPAIR",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!HARVEST LUMBER/MINE MINERALS",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-return-goods-peon",
  Action = "return-goods",
  Key = "g", Hint = "RETURN WITH ~!GOODS",
  ForUnit = {"unit-n-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic",
  Action = "button", Value = 1,
  Key = "b", Hint = "~!BUILD BASIC STRUCTURE",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 8, Level = 0, Icon = "icon-build-advanced",
  Action = "button", Value = 2,
  Allowed = "check-units-or", AllowArg = {"unit-n-blaster-factory", "unit-n-town-center"},
  Key = "v", Hint = "BUILD AD~!VANCED STRUCTURE",
  ForUnit = {"unit-n-worker"} } )

-- simple buildings orc -------------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-pig-farm",
  Action = "build", Value = "unit-n-farm",
  Key = "f", Hint = "BUILD ~!FARM",
  ForUnit = {"unit-n-worker"} } )


DefineButton( { Pos = 2, Level = 1, Icon = "icon-orc-barracks",
  Action = "build", Value = "unit-n-barracks",
  Key = "b", Hint = "BUILD ~!BARRACKS",
  ForUnit = {"unit-n-worker"} } )


DefineButton( { Pos = 3, Level = 1, Icon = "icon-great-hall",
  Action = "build", Value = "unit-n-colony-center",
  Key = "c", Hint = "BUILD ~!COLONY CENTER",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-troll-lumber-mill",
  Action = "build", Value = "unit-n-blaster-factory",
  Key = "l", Hint = "BUILD B~!LASTER FACTORY",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-orc-blacksmith",
  Action = "build", Value = "unit-n-armory",
  Key = "a", Hint = "BUILD ~!ARMORY",
  ForUnit = {"unit-n-worker"} } )


DefineButton( { Pos = 7, Level = 1, Icon = "icon-orc-watch-tower",
  Action = "build", Value = "unit-n-watch-tower",
  Key = "t", Hint = "BUILD ~!TOWER",
  ForUnit = {"unit-n-worker"} } )


DefineButton( { Pos = 8, Level = 1, Icon = "icon-orc-wall",
  Action = "build", Value = "unit-orc-wall",
  Allowed = "check-network",
  Key = "w", Hint = "BUILD ~!WALL",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "\27", Hint = "~<ESC~> CANCEL",
  ForUnit = {"unit-n-worker"} } )

-- orc advanced buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 2, Icon = "icon-orc-shipyard",
  Action = "build", Value = "unit-n-shipyard",
  Key = "s", Hint = "BUILD ~!SHIPYARD",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-orc-foundry",
  Action = "build", Value = "unit-n-foundry",
  Key = "f", Hint = "BUILD ~!FOUNDRY",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-orc-refinery",
  Action = "build", Value = "unit-n-refinery",
  Key = "r", Hint = "BUILD ~!REFINERY",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 4, Level = 2, Icon = "icon-alchemist",
  Action = "build", Value = "unit-n-a-factory",
  Key = "a", Hint = "BUILD ~!AIR FACTORY",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-ogre-mound",
  Action = "build", Value = "unit-n-factory",
  Key = "m", Hint = "BUILD ~!MACHINERY",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 6, Level = 2, Icon = "icon-temple-of-the-damned",
  Action = "build", Value = "unit-n-mw-factory",
  Key = "w", Hint = "BUILD MICRO~!WEAPONS FACTORY",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 7, Level = 2, Icon = "icon-altar-of-storms",
  Action = "build", Value = "unit-n-hospital",
  Key = "h", Hint = "BUILD ~!HEALING AREA",
  ForUnit = {"unit-n-worker"} } )


-- Nagoran Hospital

DefineButton( { Pos = 3, Level = 0, Icon = "icon-heal",
  Action = "research", Value = "upgrade-healing",
  Allowed = "check-single-research",
  Key = "p", Hint = "~!PREPARE HOSPITAL",
  ForUnit = {"unit-n-hospital"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-heal",
  Action = "cast-spell", Value = "spell-healing",
  Allowed = "check-upgrade", AllowArg = {"upgrade-healing"},
  Key = "c", Hint = "~!CURE PATIENT",
  ForUnit = {"unit-n-hospital"} } )

--


DefineButton( { Pos = 8, Level = 2, Icon = "icon-dragon-roost",
  Action = "build", Value = "unit-n-star-building",
  Key = "s", Hint = "BUILD ~!STAR BUILDING",
  ForUnit = {"unit-n-worker"} } )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "\27", Hint = "~<ESC~> CANCEL",
  ForUnit = {"unit-n-worker"} } )

-- Nagoran buildings commands -----------------------------------------------------

--
-- if (extensions) then
-- DefineButton( { Pos = 1, Level = 0, Icon = "icon-critter",
--  Action = "train-unit", Value = "unit-critter",
--  Key = "c", Hint = "TRAIN ~!CRITTER",
--  ForUnit = {"unit-n-farm"} } )
-- end
--

DefineButton( { Pos = 1, Level = 0, Icon = "icon-peon",
  Action = "train-unit", Value = "unit-n-worker",
  Allowed = "check-no-research",
  Key = "b", Hint = "TRAIN ~!BUILDER",
  ForUnit = {"unit-n-colony-center", "unit-n-town-center", "unit-n-city-center"} } )

-- strong hold upgrades -------------------------------------------------------

DefineButton( { Pos = 2, Level = 0, Icon = "icon-stronghold",
  Action = "upgrade-to", Value = "unit-n-town-center",
  Allowed = "check-upgrade-to",
  Key = "t", Hint = "UPGRADE TO ~!TOWN CENTER",
  ForUnit = {"unit-n-colony-center"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-fortress-upgrade",
  Action = "upgrade-to", Value = "unit-n-city-center",
  Allowed = "check-upgrade-to",
  Key = "c", Hint = "UPGRADE TO ~!CITY CENTER",
  ForUnit = {"unit-n-town-center"} } )




if (extensions) then
do
DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "SET ~!HARVEST LUMBER/MINE MINERALS",
  ForUnit = {"unit-n-colony-center", "unit-n-town-center", "unit-n-city-center"} } )

DefineButton( { Pos = 7, Level = 0, Icon = "icon-move-peon",
  Action = "move",
  Key = "m", Hint = "SET ~!MOVE",
  ForUnit = {"unit-n-colony-center", "unit-n-town-center", "unit-n-city-center",
    "unit-n-barracks", "unit-n-mw-factory", "unit-n-star-building",
    "unit-n-a-factory", "unit-n-factory"} } )


DefineButton( { Pos = 8, Level = 0, Icon = "icon-orc-shield1",
  Action = "stop",
  Key = "z", Hint = "SET ~!ZTOP",
  ForUnit = {"unit-n-colony-center", "unit-n-town-center", "unit-n-city-center",
    "unit-n-barracks", "unit-n-mw-factory", "unit-n-star-building",
    "unit-n-a-factory", "unit-n-factory"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-battle-axe1",
  Action = "attack",
  Key = "e", Hint = "S~!ET ATTACK",
  ForUnit = {"unit-n-colony-center", "unit-n-town-center", "unit-n-city-center",
    "unit-n-barracks", "unit-n-mw-factory", "unit-n-star-building",
    "unit-n-a-factory", "unit-n-factory"} } )
end
end




DefineButton( { Pos = 1, Level = 0, Icon = "icon-grunt",
  Action = "train-unit", Value = "unit-n-guard",
  Key = "g", Hint = "TRAIN NAGORAN ~!GUARD",
  ForUnit = {"unit-n-barracks"} } )

-- Nagorans
-- Once the a bit better guard is available, it will replace the least powerful
-- (Or at least it should...)

DefineButton( { Pos = 1, Level = 0, Icon = "icon-grunt",
  Action = "train-unit", Value = "unit-n-armed-guard",
  Key = "g", Hint = "TRAIN NAGORAN ~!GUARD",
  ForUnit = {"unit-n-barracks"} } )


DefineButton( { Pos = 2, Level = 0, Icon = "icon-axethrower",
  Action = "train-unit", Value = "unit-n-warrior",
  Key = "n", Hint = "TRAIN ~!NAGORAN WARRIOR",
  ForUnit = {"unit-n-barracks"} } )




-- Nagoran tanks

DefineButton( { Pos = 1, Level = 0, Icon = "icon-catapult",
  Action = "train-unit", Value = "unit-n-mxet",
  Key = "m", Hint = "BUILD ~!MXET",
  ForUnit = {"unit-n-factory"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-ogre",
  Action = "train-unit", Value = "unit-n-kxet",
  Key = "k", Hint = "BUILD ~!KXET",
  ForUnit = {"unit-n-factory"} } )



--
--  DefineButton( { Pos = 4, Level = 0, Icon = "icon-ogre-mage",
--   Action = "train-unit", Value = "unit-n-adv-kxet",
--   Key = "n", Hint = "TRAIN ~!NOT USED",
--   ForUnit = {"unit-n-barracks"} } )
--


-- Aerial Factory

DefineButton( { Pos = 1, Level = 0, Icon = "icon-zeppelin",
  Action = "train-unit", Value = "unit-n-interceptor",
  Key = "i", Hint = "BUILD ~!INTERCEPTOR",
  ForUnit = {"unit-n-a-factory"} } )


DefineButton( { Pos = 2, Level = 0, Icon = "icon-vision",
  Action = "train-unit", Value = "unit-n-vision",
  Key = "v", Hint = "BUILD NAGORAN ~!VISION",
  ForUnit = {"unit-n-a-factory"} } )


DefineButton( { Pos = 3, Level = 0, Icon = "icon-orc-transport",
  Action = "train-unit", Value = "unit-n-transport",
  Key = "t", Hint = "BUILD ~!TRANSPORT",
  ForUnit = {"unit-n-a-factory"} } )


DefineButton( { Pos = 4, Level = 0, Icon = "icon-goblin-sappers",
  Action = "train-unit", Value = "unit-n-rocket",
  Key = "p", Hint = "BUILD LONG RANGE ~!PLASMA",
  ForUnit = {"unit-n-a-factory"} } )





-- Microweapons Factory

DefineButton( { Pos = 1, Level = 0, Icon = "icon-death-knight",
  Action = "train-unit", Value = "unit-n-sp-warrior",
  Key = "s", Hint = "~!TRAIN SPECIAL WARRIOR",
  ForUnit = {"unit-n-mw-factory"} } )



DefineButton( { Pos = 1, Level = 0, Icon = "icon-orc-oil-tanker",
  Action = "train-unit", Value = "unit-n-oil-tanker",
  Key = "o", Hint = "BUILD ~!OIL TANKER",
  ForUnit = {"unit-n-shipyard"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-destroyer",
  Action = "train-unit", Value = "unit-n-mtila",
  Key = "m", Hint = "BUILD ~!MTILA",
  ForUnit = {"unit-n-shipyard"} } )



DefineButton( { Pos = 4, Level = 0, Icon = "icon-giant-turtle",
  Action = "train-unit", Value = "unit-n-subwater",
  Key = "s", Hint = "BUILD ~!SUBWATER",
  ForUnit = {"unit-n-shipyard"} } )



-- Star Building

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dragon",
  Action = "train-unit", Value = "unit-n-scout",
  Key = "n", Hint = "BUILD ~!NAGORAN SCOUT",
  ForUnit = {"unit-n-star-building"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-ogre-juggernaught",
  Action = "train-unit", Value = "unit-n-litan",
  Key = "l", Hint = "BUILD ~!LITAN",
  ForUnit = {"unit-n-star-building"} } )



if (extensions) then
-----------------------------------------------------
DefineButton( { Pos = 6, Level = 0, Icon = "icon-orc-ship-haul-oil",
  Action = "harvest",
  Key = "h", Hint = "SET ~!HAUL OIL",
  ForUnit = {"unit-n-shipyard"} } )
-----------------------------------------------------
end

DefineButton( { Pos = 1, Level = 0, Icon = "icon-orc-guard-tower",
  Action = "upgrade-to", Value = "unit-n-guard-tower",
  Key = "g", Hint = "UPGRADE TO ~!GUARD TOWER",
  ForUnit = {"unit-n-watch-tower"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-cannon-tower",
  Action = "upgrade-to", Value = "unit-n-missile-tower",
  Key = "p", Hint = "UPGRADE TO ~!PLASMA TOWER",
  ForUnit = {"unit-n-watch-tower"} } )

-- ships ----------------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-orc-ship-move",
  Action = "move",
  Key = "m", Hint = "~!MOVE",
  ForUnit = {"unit-n-oil-tanker", "unit-n-subwater",
    "unit-n-litan", "unit-n-mtila", "unit-n-transport", "unit-n-vision"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-ship-armor1",
  Action = "stop",
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-n-oil-tanker", "unit-n-subwater",
    "unit-n-litan", "unit-n-mtila", "unit-n-transport", "unit-n-vision"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-orc-unload",
  Action = "unload",
  Key = "u", Hint = "~!UNLOAD",
  ForUnit = {"unit-n-transport"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-orc-oil-platform",
  Action = "build", Value = "unit-n-oil-platform",
  Key = "b", Hint = "~!BUILD OIL PLATFORM",
  ForUnit = {"unit-n-oil-tanker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-orc-ship-haul-oil",
  Action = "harvest",
  Key = "h", Hint = "~!HAUL OIL",
  ForUnit = {"unit-n-oil-tanker"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-orc-ship-return-oil",
  Action = "return-goods",
  Key = "g", Hint = "RETURN WITH ~!GOODS",
  ForUnit = {"unit-n-oil-tanker"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-orc-ship-cannon1",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-subwater", "unit-n-litan", "unit-n-mtila", "unit-n-transport"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-orc-ship-cannon2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-orc-ship-cannon1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-subwater", "unit-n-litan", "unit-n-mtila"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-orc-ship-cannon3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-orc-ship-cannon2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-n-subwater", "unit-n-litan", "unit-n-mtila"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-orc-patrol-naval",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-n-subwater", "unit-n-litan", "unit-n-mtila"} } )

if (extensions) then
do
DefineButton( { Pos = 7, Level = 0, Icon = "icon-orc-ship-move",
  Action = "move",
  Key = "m", Hint = "SET ~!MOVE",
  ForUnit = {"unit-n-shipyard"} } )

DefineButton( { Pos = 8, Level = 0, Icon = "icon-orc-ship-armor1",
  Action = "stop",
  Key = "z", Hint = "SET ~!ZTOP",
  ForUnit = {"unit-n-shipyard"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-orc-ship-cannon1",
  Action = "attack",
  Key = "e", Hint = "S~!ET ATTACK",
  ForUnit = {"unit-n-shipyard"} } )
end
end

-- upgrades -------------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-battle-axe2",
  Action = "research", Value = "upgrade-battle-axe1",
  Allowed = "check-single-research",
  Key = "w", Hint = "UPGRADE ~!WEAPONS (Damage +2)",
  ForUnit = {"unit-n-armory"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-battle-axe3",
  Action = "research", Value = "upgrade-battle-axe2",
  Allowed = "check-single-research",
  Key = "w", Hint = "UPGRADE ~!WEAPONS (Damage +2)",
  ForUnit = {"unit-n-armory"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-shield2",
  Action = "research", Value = "upgrade-orc-shield1",
  Allowed = "check-single-research",
  Key = "s", Hint = "UPGRADE ~!SHIELDS (Armor +2)",
  ForUnit = {"unit-n-armory"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-shield3",
  Action = "research", Value = "upgrade-orc-shield2",
  Allowed = "check-single-research",
  Key = "s", Hint = "UPGRADE ~!SHIELDS (Armor +2)",
  ForUnit = {"unit-n-armory"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult1",
  Action = "research", Value = "upgrade-catapult1",
  Allowed = "check-single-research",
  Key = "t", Hint = "UPGRADE ~!TANK WEAPONS (Damage +15)",
  ForUnit = {"unit-n-armory"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult2",
  Action = "research", Value = "upgrade-catapult2",
  Allowed = "check-single-research",
  Key = "c", Hint = "UPGRADE ~!TANK WEAPONS (Damage +15)",
  ForUnit = {"unit-n-armory"} } )


DefineButton( { Pos = 1, Level = 0, Icon = "icon-throwing-axe2",
  Action = "research", Value = "upgrade-throwing-axe1",
  Allowed = "check-single-research",
  Key = "u", Hint = "~!UPGRADE BLASTERS (Damage +1)",
  ForUnit = {"unit-n-blaster-factory"} } )



DefineButton( { Pos = 1, Level = 0, Icon = "icon-throwing-axe3",
  Action = "research", Value = "upgrade-throwing-axe2",
  Allowed = "check-single-research",
  Key = "u", Hint = "~!UPGRADE BLASTERS (Damage +1)",
  ForUnit = {"unit-n-blaster-factory"} } )





-- October 14, 2004
-- The button below now shows correct icon. (Version 1.21 Beta)

DefineButton( { Pos = 4, Level = 0, Icon = "icon-175",
  Action = "research", Value = "upgrade-berserker",
  Allowed = "check-single-research",
  Key = "b", Hint = "!EQUIP GUARDS WITH BLASTERS",
  ForUnit = {"unit-n-blaster-factory"} } )





-- No unit benefits from the following. Guards with blasters get
-- no further upgrades. 


-- DefineButton( { Pos = 5, Level = 0, Icon = "icon-berserker-scouting",
--  Action = "research", Value = "upgrade-berserker-scouting",
--  Allowed = "check-single-research",
--  Key = "s", Hint = "BERSERKER ~!SCOUTING (Sight:9)",
--  ForUnit = {"unit-n-blaster-factory"} } )



 DefineButton( { Pos = 4, Level = 0, Icon = "icon-light-axes",
  Action = "research", Value = "upgrade-light-axes",
  Allowed = "check-single-research",
  Key = "a", Hint = "TEACH GUARDS BETTER AIM (Range +1)",
  ForUnit = {"unit-n-blaster-factory"} } )



-- DefineButton( { Pos = 6, Level = 0, Icon = "icon-berserker-regeneration",
--  Action = "research", Value = "upgrade-berserker-regeneration",
--  Allowed = "check-single-research",
--  Key = "r", Hint = "~!UNUSED",
--  ForUnit = {"unit-n-blaster-factory"} } )





-- No ogre mages or anything. Kxets remain the same always.

-- DefineButton( { Pos = 1, Level = 0, Icon = "icon-ogre-mage",
--  Action = "research", Value = "upgrade-ogre-mage",
--  Allowed = "check-single-research",
--  Key = "m", Hint = "UPGRADES OGRES TO ~!MAGES",
--  ForUnit = {"unit-n-hospital"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-bloodlust",
  Action = "research", Value = "upgrade-bloodlust",
  Allowed = "check-single-research",
  Key = "b", Hint = "RESEARCH ~!BLOODLUST",
  ForUnit = {"unit-n-hospital"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-runes",
  Action = "research", Value = "upgrade-runes",
  Allowed = "check-single-research",
  Key = "r", Hint = "RESEARCH ~!RUNES",
  ForUnit = {"unit-n-hospital"} } )


-- Microweapons factory buttons

DefineButton( { Pos = 2, Level = 0, Icon = "icon-haste",
  Action = "research", Value = "upgrade-haste",
  Allowed = "check-single-research",
  Key = "h", Hint = "RESEARCH ~!HASTE",
  ForUnit = {"unit-n-mw-factory"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-unholy-armor",
  Action = "research", Value = "upgrade-unholy-armor",
  Allowed = "check-single-research",
  Key = "s", Hint = "RESEARCH ~!SHADOW",
  ForUnit = {"unit-n-mw-factory"} } )

-- Raise dead is not a spell or skill used in Astroseries
-- DefineButton( { Pos = 3, Level = 0, Icon = "icon-skeleton",
--  Action = "research", Value = "upgrade-raise-dead",
--  Allowed = "check-single-research",
--  Key = "r", Hint = "UNUSED",
--  ForUnit = {"unit-n-mw-factory"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-whirlwind",
  Action = "research", Value = "upgrade-whirlwind",
  Allowed = "check-single-research",
  Key = "w", Hint = "RESEARCH ~!WHIRLWIND",
  ForUnit = {"unit-n-mw-factory"} } )



-- Star Building actions

DefineButton( { Pos = 9, Level = 0, Icon = "icon-death-and-decay",
  Action = "research", Value = "upgrade-death-and-decay",
  Allowed = "check-single-research",
  Key = "e", Hint = "~!EQUIP LITANS WITH NUKES",
  ForUnit = {"unit-n-star-building"} } )





DefineButton( { Pos = 1, Level = 0, Icon = "icon-orc-ship-cannon2",
  Action = "research", Value = "upgrade-orc-ship-cannon1",
  Allowed = "check-single-research",
  Key = "w", Hint = "UPGRADE SEASHIP ~!WEAPONS (Damage +5)",
  ForUnit = {"unit-n-foundry"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-orc-ship-cannon3",
  Action = "research", Value = "upgrade-orc-ship-cannon2",
  Allowed = "check-single-research",
  Key = "w", Hint = "UPGRADE SEASHIP ~!WEAPONS (Damage +5)",
  ForUnit = {"unit-n-foundry"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-ship-armor2",
  Action = "research", Value = "upgrade-orc-ship-armor1",
  Allowed = "check-single-research",
  Key = "a", Hint = "UPGRADE SEASHIP ~!ARMOR (Armor +5)",
  ForUnit = {"unit-n-foundry"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-orc-ship-armor3",
  Action = "research", Value = "upgrade-orc-ship-armor2",
  Allowed = "check-single-research",
  Key = "a", Hint = "UPGRADE SEASHIP ~!ARMOR (Armor +5)",
  ForUnit = {"unit-n-foundry"} } )
