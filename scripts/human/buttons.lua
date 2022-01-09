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
--	buttons.ccl	-	Define the", "unit-buttons of the human race.
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
--	$Id: buttons.lua,v 1.6 2004/02/09 15:54:43 nobody_ Exp $

------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- general commands -- almost all", "units have it -------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-move-peasant",
  Action = "move",
  Key = "m", Hint = "~!MOVE",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-worker",
    "unit-h-irina",
    "unit-h-adv-manta", "unit-h-officer", "unit-h-master", "unit-h-adv-helifly",
    "unit-h-petrov", "unit-h-adv-rubitek", "unit-h-helifly",
    "unit-h-manta", "unit-h-rubitek", "unit-h-scanner", "unit-critter",
    "human-group", "unit-h-eliocan"} } )


DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-shield1",
  Action = "stop",
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-worker",
    "unit-h-irina",
    "unit-h-adv-manta", "unit-h-officer", "unit-h-master", "unit-h-adv-helifly",
    "unit-h-petrov", "unit-h-adv-rubitek", "unit-h-helifly",
    "unit-h-manta", "unit-h-rubitek", "unit-h-scanner", "unit-critter",
    "human-group", "unit-h-eliocan"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-shield2",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-human-shield1"},
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-officer", "unit-h-master",
    "unit-h-adv-helifly", "unit-h-petrov"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-shield3",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-human-shield2"},
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-officer", "unit-h-master",
    "unit-h-adv-helifly", "unit-h-petrov"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-worker",
    "unit-h-irina",
    "unit-h-adv-manta", "unit-h-officer", "unit-h-master", "unit-h-adv-helifly",
    "unit-h-petrov", "unit-h-adv-rubitek", "unit-h-manta", "unit-h-helifly", "human-group", "unit-h-eliocan"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-sword1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-officer", "unit-h-master",
    "unit-h-adv-helifly", "unit-h-petrov"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-sword2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-officer", "unit-h-master",
    "unit-h-adv-helifly", "unit-h-petrov"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-tek-sniper", "unit-h-adv-tek-sniper", "unit-h-irina"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-arrow1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-tek-sniper", "unit-h-adv-tek-sniper", "unit-h-irina"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-arrow2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-tek-sniper", "unit-h-adv-tek-sniper", "unit-h-irina"} } )

if (extensions) then
DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-irina",
    "unit-h-adv-manta", "unit-h-officer", "unit-h-master", "unit-h-adv-helifly",
    "unit-h-petrov", "unit-h-manta", "unit-h-helifly", "human-group",
    "unit-h-helifly", "unit-h-eliocan"} } )
else
DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-irina",
    "unit-h-adv-manta", "unit-h-officer", "unit-h-master", "unit-h-adv-helifly",
    "unit-h-petrov", "unit-h-manta", "human-group"} } )
end

DefineButton( { Pos = 5, Level = 0, Icon = "icon-human-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = "S~!TAND GROUND",
  ForUnit = {"unit-h-soldier", "unit-h-armor", "unit-h-tek-sniper", "unit-h-adv-armor",
    "unit-h-rocket", "unit-h-adv-tek-sniper", "unit-h-tank", "unit-h-irina",
    "unit-h-adv-manta", "unit-h-officer", "unit-h-master", "unit-h-adv-helifly",
    "unit-h-petrov", "unit-h-manta", "unit-h-helifly", "human-group",
    "unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate", "unit-h-eliocan"} } )



--
-- No attack ground button, thanks.
--
-- DefineButton( { Pos = 6, Level = 0, Icon = "icon-human-attack-ground",
--  Action = "attack-ground",
--  Key = "g", Hint = "ATTACK ~!GROUND",
--  ForUnit = {"unit-h-tank", "unit-h-sbc", "human-group"} } )
--



DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "cast-spell", Value = "spell-suicide-bomber",
  Allowed = "check-true",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-rocket"} } )


-- paladin specific actions (not used) --------------------------------
--
-- (if extensions
-- DefineButton( { Pos = 6, Level = 0, Icon = "icon-heal
--  Action = "cast-spell", Value = "spell-area-healing
--  Allowed = "check-upgrade", AllowArg = {"upgrade-area-healing)
--  Key = "l", Hint = "AREA HEA~!LING (per 1 HP)",
--  ForUnit = {"unit-h-master 
--  } } )
-- )
--


-- DefineButton( { Pos = 7, Level = 0, Icon = "icon-holy-vision",
--  Action = "cast-spell", Value = "spell-holy-vision",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-holy-vision"},
--  Key = "v", Hint = "HOLY ~!VISION",
--  ForUnit = {"unit-h-master"} } )


DefineButton( { Pos = 1, Level = 0, Icon = "icon-heal",
  Action = "cast-spell", Value = "spell-healing",
  Allowed = "check-upgrade", AllowArg = {"upgrade-healing"},
  Key = "c", Hint = "~!CURE PATIENT",
  ForUnit = {"unit-h-hospital"} } )


-- DefineButton( { Pos = 9, Level = 0, Icon = "icon-exorcism",
-- Action = "cast-spell", Value = "spell-exorcism",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-exorcism"},
--  Key = "e", Hint = "~!EXORCISM",
--  ForUnit = {"unit-h-master"} } )



-- Yazin, Eliocan

DefineButton( { Pos = 7, Level = 0, Icon = "icon-fireball",
  Action = "cast-spell", Value = "spell-fireball",
  Allowed = "check-upgrade", AllowArg = {"upgrade-fireball"},
  Key = "f", Hint = "~!FIREBALL",
  ForUnit = {"unit-h-master", "unit-h-eliocan"} } )



DefineButton( { Pos = 8, Level = 0, Icon = "icon-death-coil",
  Action = "cast-spell", Value = "spell-death-coil",
  Allowed = "check-upgrade", AllowArg = {"upgrade-death-coil"},
  Key = "x", Hint = "~!X-ZONE",
  ForUnit = {"unit-h-master", "unit-h-eliocan"} } )





-- mage specific actions ------------------------------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Key = "a", Hint = "LIGHTNING ~!ATTACK",
  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-fireball",
  Action = "cast-spell", Value = "spell-fireball",
  Allowed = "check-upgrade", AllowArg = {"upgrade-fireball"},
  Key = "f", Hint = "~!FIREBALL",
  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )


DefineButton( { Pos = 5, Level = 0, Icon = "icon-death-coil",
  Action = "cast-spell", Value = "spell-death-coil",
  Allowed = "check-upgrade", AllowArg = {"upgrade-death-coil"},
  Key = "x", Hint = "~!X-ZONE",
  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )


DefineButton( { Pos = 6, Level = 0, Icon = "icon-slow",
  Action = "cast-spell", Value = "spell-slow",
  Allowed = "check-upgrade", AllowArg = {"upgrade-slow"},
  Key = "o", Hint = "SL~!OW",
  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )

DefineButton( { Pos = 7, Level = 0, Icon = "icon-flame-shield",
  Action = "cast-spell", Value = "spell-flame-shield",
  Allowed = "check-upgrade", AllowArg = {"upgrade-flame-shield"},
  Key = "l", Hint = "F~!LAME SHIELD",
  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )


-- No invisibility spell/skill in Astroseries
-- DefineButton( { Pos = 7, Level = 0, Icon = "icon-invisibility",
--  Action = "cast-spell", Value = "spell-invisibility",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-invisibility"},
--  Key = "i", Hint = "~!INVISIBILITY",
--  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )

-- No polymorph spell/skill in Astroseries
-- DefineButton( { Pos = 8, Level = 0, Icon = "icon-polymorph",
--  Action = "cast-spell", Value = "spell-polymorph",
--  Action = "cast-spell", Value = "spell-suicide-bomber",
--  Allowed = "check-upgrade", AllowArg = {"upgrade-polymorph"},
--  Key = "p", Hint = "~!POLYMORPH",
--  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )


DefineButton( { Pos = 8, Level = 0, Icon = "icon-blizzard",
  Action = "cast-spell", Value = "spell-blizzard",
  Allowed = "check-upgrade", AllowArg = {"upgrade-blizzard"},
  Key = "b", Hint = "~!BLIZZARD",
  ForUnit = {"unit-h-rubitek", "unit-h-adv-rubitek"} } )


-- Star Battlecruiser actions

DefineButton( { Pos = 9, Level = 0, Icon = "icon-death-and-decay",
  Action = "cast-spell", Value = "spell-death-and-decay",
  Allowed = "check-upgrade", AllowArg = {"upgrade-death-and-decay"},
  Key = "n", Hint = "~!NUCLEAR STRIKE",
  ForUnit = {"unit-h-sbc"} } )



-- Starport actions

DefineButton( { Pos = 9, Level = 0, Icon = "icon-death-and-decay",
  Action = "research", Value = "upgrade-death-and-decay",
  Allowed = "check-single-research",
  Key = "e", Hint = "~!EQUIP STAR BATTLECRUISERS WITH NUKES",
  ForUnit = {"unit-h-starport"} } )





-- peasant specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!REPAIR",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!HARVEST LUMBER/MINE MINERALS",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-return-goods-peasant",
  Action = "return-goods",
  Key = "g", Hint = "RETURN WITH ~!GOODS",
  ForUnit = {"unit-h-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic",
  Action = "button", Value = 1,
  Key = "b", Hint = "~!BUILD BASIC STRUCTURE",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 8, Level = 0, Icon = "icon-build-advanced",
  Action = "button", Value = 2,
  Allowed = "check-units-or", AllowArg = {"unit-h-laser-factory", "unit-h-fort"},
  Key = "v", Hint = "BUILD AD~!VANCED STRUCTURE",
  ForUnit = {"unit-h-worker"} } )

-- simple buildings human -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-farm",
  Action = "build", Value = "unit-h-farm",
  Key = "f", Hint = "BUILD ~!FARM",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-human-barracks",
  Action = "build", Value = "unit-h-barracks",
  Key = "b", Hint = "BUILD ~!BARRACKS",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-town-hall",
  Action = "build", Value = "unit-h-outpost",
  Key = "h", Hint = "BUILD ~!OUTPOST",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-elven-lumber-mill",
  Action = "build", Value = "unit-h-laser-factory",
  Key = "l", Hint = "BUILD ~!LASER FACTORY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-human-blacksmith",
  Action = "build", Value = "unit-h-armory",
  Key = "s", Hint = "BUILD ~!ARMORY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 7, Level = 1, Icon = "icon-human-watch-tower",
  Action = "build", Value = "unit-h-watch-tower",
  Key = "t", Hint = "BUILD ~!TOWER",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 8, Level = 1, Icon = "icon-human-wall",
  Action = "build", Value = "unit-human-wall",
  Allowed = "check-network",
  Key = "w", Hint = "BUILD ~!WALL",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "\27", Hint = "~<ESC~> CANCEL",
  ForUnit = {"unit-h-worker"} } )

-- human advanced buildings ---------------------------------------------------

DefineButton( { Pos = 1, Level = 2, Icon = "icon-human-shipyard",
  Action = "build", Value = "unit-h-shipyard",
  Key = "s", Hint = "BUILD ~!SHIPYARD",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-human-foundry",
  Action = "build", Value = "unit-h-foundry",
  Key = "f", Hint = "BUILD ~!FOUNDRY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-human-refinery",
  Action = "build", Value = "unit-h-refinery",
  Key = "r", Hint = "BUILD ~!REFINERY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 4, Level = 2, Icon = "icon-gnomish-inventor",
  Action = "build", Value = "unit-h-a-factory",
  Key = "i", Hint = "BUILD A~!IR FACTORY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-stables",
  Action = "build", Value = "unit-h-factory",
  Key = "a", Hint = "BUILD ~!FACTORY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 6, Level = 2, Icon = "icon-mage-tower",
  Action = "build", Value = "unit-h-rubitek-armory",
  Key = "m", Hint = "BUILD ~!RUBITEK ARMORY",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 7, Level = 2, Icon = "icon-church",
  Action = "build", Value = "unit-h-hospital",
  Key = "c", Hint = "BUILD ~!HOSPITAL",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 8, Level = 2, Icon = "icon-gryphon-aviary",
  Action = "build", Value = "unit-h-starport",
  Key = "g", Hint = "BUILD ~!STARPORT",
  ForUnit = {"unit-h-worker"} } )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "\27", Hint = "~<ESC~> CANCEL",
  ForUnit = {"unit-h-worker"} } )

-- buildings commands ---------------------------------------------------------

--
-- if (extensions) then
-- DefineButton( { Pos = 1, Level = 0, Icon = "icon-critter",
--  Action = "train-unit", Value = "unit-critter",
--  Key = "c", Hint = "TRAIN ~!CRITTER",
--  ForUnit = {"unit-h-farm"} } )
-- end
--

DefineButton( { Pos = 1, Level = 0, Icon = "icon-peasant",
  Action = "train-unit", Value = "unit-h-worker",
  Allowed = "check-no-research",
  Key = "w", Hint = "TRAIN ~!WORKER",
  ForUnit = {"unit-h-outpost", "unit-h-fort", "unit-h-hq"} } )

-- town hall upgrades ---------------------------------------------------------

DefineButton( { Pos = 2, Level = 0, Icon = "icon-keep",
  Action = "upgrade-to", Value = "unit-h-fort",
  Allowed = "check-upgrade-to",
  Key = "f", Hint = "UPGRADE TO ~!FORT",
  ForUnit = {"unit-h-outpost"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-castle-upgrade",
  Action = "upgrade-to", Value = "unit-h-hq",
  Allowed = "check-upgrade-to",
  Key = "h", Hint = "UPGRADE TO ~!HEADQUARTERS",
  ForUnit = {"unit-h-fort"} } )



if (extensions) then
do
DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "SET ~!HARVEST LUMBER/MINE MINERALS",
  ForUnit = {"unit-h-outpost", "unit-h-fort", "unit-h-hq"} } )



DefineButton( { Pos = 7, Level = 0, Icon = "icon-move-peasant",
  Action = "move",
  Key = "m", Hint = "SET ~!MOVE",
  ForUnit = {"unit-h-outpost", "unit-h-fort", "unit-h-hq", "unit-h-barracks",
    "unit-h-rubitek-armory", "unit-h-starport", "unit-h-a-factory", "unit-h-factory"} } )

DefineButton( { Pos = 8, Level = 0, Icon = "icon-human-shield1",
  Action = "stop",
  Key = "z", Hint = "SET ~!ZTOP",
  ForUnit = {"unit-h-outpost", "unit-h-fort", "unit-h-hq", "unit-h-barracks",
    "unit-h-rubitek-armory", "unit-h-starport", "unit-h-a-factory", "unit-h-factory"} } )





DefineButton( { Pos = 9, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Key = "e", Hint = "S~!ET ATTACK",
  ForUnit = {"unit-h-outpost", "unit-h-fort", "unit-h-hq", "unit-h-barracks",
    "unit-h-rubitek-armory", "unit-h-starport", "unit-h-a-factory"} } )
end
end



DefineButton( { Pos = 1, Level = 0, Icon = "icon-footman",
  Action = "train-unit", Value = "unit-h-soldier",
  Key = "s", Hint = "TRAIN ~!SOLDIER",
  ForUnit = {"unit-h-barracks"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-archer",
  Action = "train-unit", Value = "unit-h-tek-sniper",
  Key = "t", Hint = "TRAIN ~!TEK SNIPER",
  ForUnit = {"unit-h-barracks"} } )

-- No rangers. Unit not used in Astroseries
-- DefineButton( { Pos = 2, Level = 0, Icon = "icon-ranger",
--  Action = "train-unit", Value = "unit-h-adv-tek-sniper",
--  Key = "r", Hint = "TRAIN ~!RANGER",
--  ForUnit = {"unit-h-barracks"} } )
--



-- Factory stuff

DefineButton( { Pos = 1, Level = 0, Icon = "icon-ballista",
  Action = "train-unit", Value = "unit-h-tank",
  Key = "b", Hint = "BUILD ~!BATTLE TANK",
  ForUnit = {"unit-h-factory"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-knight",
  Action = "train-unit", Value = "unit-h-armor",
  Key = "m", Hint = "BUILD ~!MOBILE ARMOR",
  ForUnit = {"unit-h-factory"} } )

--

-- No paladins or equivalent in Astroseries
-- DefineButton( { Pos = 4, Level = 0, Icon = "icon-paladin",
--  Action = "train-unit", Value = "unit-h-adv-armor",
--  Key = "p", Hint = "UNUSED",
--  ForUnit = {"unit-h-barracks"} } )
--



-- Human light air forces

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-flying-machine",
  Action = "train-unit", Value = "unit-h-helifly",
  Key = "h", Hint = "BUILD ~!HELIFIGHTER",
  ForUnit = {"unit-h-a-factory"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-scanner",
  Action = "train-unit", Value = "unit-h-scanner",
  Key = "s", Hint = "BUILD ~!SCANNER",
  ForUnit = {"unit-h-a-factory"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-human-transport",
  Action = "train-unit", Value = "unit-h-transport",
  Key = "t", Hint = "BUILD ~!TRANSPORT",
  ForUnit = {"unit-h-a-factory"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarves",
  Action = "train-unit", Value = "unit-h-rocket",
  Key = "l", Hint = "BUILD ~!LONG RANGE ROCKET",
  ForUnit = {"unit-h-a-factory"} } )




DefineButton( { Pos = 1, Level = 0, Icon = "icon-mage",
  Action = "train-unit", Value = "unit-h-rubitek",
  Key = "r", Hint = "TRAIN ~!RUBITEK",
  ForUnit = {"unit-h-rubitek-armory"} } )



DefineButton( { Pos = 1, Level = 0, Icon = "icon-human-oil-tanker",
  Action = "train-unit", Value = "unit-h-oil-tanker",
  Key = "o", Hint = "BUILD ~!OIL TANKER",
  ForUnit = {"unit-h-shipyard"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-destroyer",
  Action = "train-unit", Value = "unit-h-naval-frigate",
  Key = "n", Hint = "BUILD ~!NAVAL FRIGATE",
  ForUnit = {"unit-h-shipyard"} } )


DefineButton( { Pos = 4, Level = 0, Icon = "icon-gnomish-submarine",
  Action = "train-unit", Value = "unit-h-submarine",
  Key = "s", Hint = "BUILD ~!SUBMARINE",
  ForUnit = {"unit-h-shipyard"} } )



-- Starport units

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gryphon-rider",
  Action = "train-unit", Value = "unit-h-manta",
  Key = "m", Hint = "BUILD ~!MANTA",
  ForUnit = {"unit-h-starport"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-battleship",
  Action = "train-unit", Value = "unit-h-sbc",
  Key = "s", Hint = "BUILD ~!STAR BATTLECRUISER",
  ForUnit = {"unit-h-starport"} } )


if (extensions) then
-----------------------------------------------------
DefineButton( { Pos = 6, Level = 0, Icon = "icon-human-ship-haul-oil",
  Action = "harvest",
  Key = "h", Hint = "SET ~!HAUL OIL",
  ForUnit = {"unit-h-shipyard"} } )
-----------------------------------------------------
end

DefineButton( { Pos = 1, Level = 0, Icon = "icon-human-guard-tower",
  Action = "upgrade-to", Value = "unit-h-guard-tower",
  Key = "g", Hint = "UPGRADE TO ~!GUARD TOWER",
  ForUnit = {"unit-h-watch-tower"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-cannon-tower",
  Action = "upgrade-to", Value = "unit-h-missile-tower",
  Key = "m", Hint = "UPGRADE TO ~!MISSILE TOWER",
  ForUnit = {"unit-h-watch-tower"} } )

-- ships ----------------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-human-ship-move",
  Action = "move",
  Key = "m", Hint = "~!MOVE",
  ForUnit = {"unit-h-oil-tanker",
    "unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate",
    "unit-h-transport"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-ship-armor1",
  Action = "stop",
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-h-oil-tanker",
    "unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate",
    "unit-h-transport"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-unload",
  Action = "unload",
  Key = "u", Hint = "~!UNLOAD",
  ForUnit = {"unit-h-transport"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-oil-platform",
  Action = "build", Value = "unit-h-oil-platform",
  Key = "b", Hint = "~!BUILD OIL PLATFORM",
  ForUnit = {"unit-h-oil-tanker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-human-ship-haul-oil",
  Action = "harvest",
  Key = "h", Hint = "~!HAUL OIL",
  ForUnit = {"unit-h-oil-tanker"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-human-ship-return-oil",
  Action = "return-goods",
  Key = "g", Hint = "RETURN WITH ~!GOODS",
  ForUnit = {"unit-h-oil-tanker"} } )



DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate",   "unit-h-transport"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-human-ship-cannon1"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-human-ship-cannon2"},
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate"} } )



DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-patrol-naval",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-h-submarine", "unit-h-sbc", "unit-h-naval-frigate"} } )

if (extensions) then
do
DefineButton( { Pos = 7, Level = 0, Icon = "icon-human-ship-move",
  Action = "move",
  Key = "m", Hint = "SET ~!MOVE",
  ForUnit = {"unit-h-shipyard"} } )

DefineButton( { Pos = 8, Level = 0, Icon = "icon-human-ship-armor1",
  Action = "stop",
  Key = "z", Hint = "SET ~!ZTOP",
  ForUnit = {"unit-h-shipyard"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-human-ship-cannon1",
  Action = "attack",
  Key = "e", Hint = "S~!ET ATTACK",
  ForUnit = {"unit-h-shipyard"} } )
end
end

-- upgrades -------------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-sword2",
  Action = "research", Value = "upgrade-sword1",
  Allowed = "check-single-research",
  Key = "s", Hint = "UPGRADE S~!HELLS (Damage +2)",
  ForUnit = {"unit-h-armory"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-sword3",
  Action = "research", Value = "upgrade-sword2",
  Allowed = "check-single-research",
  Key = "s", Hint = "UPGRADE S~!HELLS (Damage +2)",
  ForUnit = {"unit-h-armory"} } )


DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-shield2",
  Action = "research", Value = "upgrade-human-shield1",
  Allowed = "check-single-research",
  Key = "s", Hint = "UPGRADE ~!SUITS (Armor +2)",
  ForUnit = {"unit-h-armory"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-shield3",
  Action = "research", Value = "upgrade-human-shield2",
  Allowed = "check-single-research",
  Key = "s", Hint = "UPGRADE ~!SUITS (Armor +2)",
  ForUnit = {"unit-h-armory"} } )


DefineButton( { Pos = 3, Level = 0, Icon = "icon-ballista1",
  Action = "research", Value = "upgrade-ballista1",
  Allowed = "check-single-research",
  Key = "t", Hint = "UPGRADE ~!TANK SHELLS AND ROCKETS (Damage +3)",
  ForUnit = {"unit-h-armory"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-ballista2",
  Action = "research", Value = "upgrade-ballista2",
  Allowed = "check-single-research",
  Key = "t", Hint = "UPGRADE ~!TANK SHELLS AND ROCKETS (Damage +3)",
  ForUnit = {"unit-h-armory"} } )


DefineButton( { Pos = 1, Level = 0, Icon = "icon-arrow2",
  Action = "research", Value = "upgrade-arrow1",
  Allowed = "check-single-research",
  Key = "u", Hint = "~!UPGRADE LASERS (Damage +1)",
  ForUnit = {"unit-h-laser-factory"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-arrow3",
  Action = "research", Value = "upgrade-arrow2",
  Allowed = "check-single-research",
  Key = "u", Hint = "~!UPGRADE LASERS (Damage +1)",
  ForUnit = {"unit-h-laser-factory"} } )


--
-- We have no elven rangers in Astroseries. Elite Tek Snipers are not built.
-- (they are heroes)
--
-- DefineButton( { Pos = 4, Level = 0, Icon = "icon-ranger",
--  Action = "research", Value = "upgrade-ranger",
--  Allowed = "check-single-research",
--  Key = "r", Hint = "ELVEN ~!RANGER TRAINING",
--  ForUnit = {"unit-h-laser-factory"} } )
--
-- DefineButton( { Pos = 4, Level = 0, Icon = "icon-ranger-scouting",
--  Action = "research", Value = "upgrade-ranger-scouting",
--  Allowed = "check-single-research",
--  Key = "s", Hint = "RANGER ~!SCOUTING (Sight:9)",
--  ForUnit = {"unit-h-laser-factory"} } )
--
-- DefineButton( { Pos = 5, Level = 0, Icon = "icon-longbow",
--  Action = "research", Value = "upgrade-longbow",
--  Allowed = "check-single-research",
--  Key = "l", Hint = "RESEARCH ~!LONGBOW (Range +1)",
--  ForUnit = {"unit-h-laser-factory"} } )
--


DefineButton( { Pos = 4, Level = 0, Icon = "icon-longbow",
  Action = "research", Value = "upgrade-farguns",
  Allowed = "check-single-research",
  Key = "g", Hint = "UPGRADE ~!GUNS (Range +1)",
  ForUnit = {"unit-h-armory"} } )



-- DefineButton( { Pos = 6, Level = 0, Icon = "icon-ranger-marksmanship",
--  Action = "research", Value = "upgrade-ranger-marksmanship",
--  Allowed = "check-single-research",
--  Key = "m", Hint = "RANGER ~!MARKSMANSHIP (Damage +3)",
--  ForUnit = {"unit-h-laser-factory"} } )


-- No Paladins in Astroseries. Button not used, thus disabled. 
--
-- DefineButton( { Pos = 1, Level = 0, Icon = "icon-paladin",
--  Action = "research", Value = "upgrade-paladin",
--  Allowed = "check-single-research",
--  Key = "p", Hint = "UPGRADES KNIGHTS TO ~!PALADINS",
--  ForUnit = {"unit-h-hospital"} } )


DefineButton( { Pos = 3, Level = 0, Icon = "icon-heal",
  Action = "research", Value = "upgrade-healing",
  Allowed = "check-single-research",
  Key = "p", Hint = "~!PREPARE HOSPITAL",
  ForUnit = {"unit-h-hospital"} } )

-- DefineButton( { Pos = 3, Level = 0, Icon = "icon-exorcism",
--  Action = "research", Value = "upgrade-exorcism",
--  Allowed = "check-single-research",
--  Key = "e", Hint = "RESEARCH ~!EXORCISM",
--  ForUnit = {"unit-h-hospital"} } )


if (extensions) then
DefineButton( { Pos = 5, Level = 0, Icon = "icon-heal",
  Action = "research", Value = "upgrade-area-healing",
  Allowed = "check-single-research",
  Key = "l", Hint = "RESEARCH AREA HEA~!LING",
  ForUnit = {"unit-h-hospital"} } )
end

DefineButton( { Pos = 2, Level = 0, Icon = "icon-slow",
  Action = "research", Value = "upgrade-slow",
  Allowed = "check-single-research",
  Key = "o", Hint = "RESEARCH SL~!OW",
  ForUnit = {"unit-h-rubitek-armory"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-flame-shield",
  Action = "research", Value = "upgrade-flame-shield",
  Allowed = "check-single-research",
  Key = "l", Hint = "RESEARCH F~!LAME SHIELD",
  ForUnit = {"unit-h-rubitek-armory"} } )


-- Invisibility: spell/skill not used in Astroseries
-- DefineButton( { Pos = 4, Level = 0, Icon = "icon-invisibility",
--  Action = "research", Value = "upgrade-invisibility",
--  Allowed = "check-single-research",
--  Key = "i", Hint = "RESEARCH ~!INVISIBILITY",
--  ForUnit = {"unit-h-rubitek-armory"} } )

-- Polymorph not used in Astroseries either
-- DefineButton( { Pos = 5, Level = 0, Icon = "icon-polymorph",
--  Action = "research", Value = "upgrade-polymorph",
--  Allowed = "check-single-research",
--  Key = "p", Hint = "RESEARCH ~!POLYMORPH",
--  ForUnit = {"unit-h-rubitek-armory"} } )


DefineButton( { Pos = 4, Level = 0, Icon = "icon-blizzard",
  Action = "research", Value = "upgrade-blizzard",
  Allowed = "check-single-research",
  Key = "b", Hint = "RESEARCH ~!BLIZZARD",
  ForUnit = {"unit-h-rubitek-armory"} } )



DefineButton( { Pos = 1, Level = 0, Icon = "icon-human-ship-cannon2",
  Action = "research", Value = "upgrade-human-ship-cannon1",
  Allowed = "check-single-research",
  Key = "w", Hint = "UPGRADE SEASHIP ~!WEAPONS (Damage +5)",
  ForUnit = {"unit-h-foundry"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-human-ship-cannon3",
  Action = "research", Value = "upgrade-human-ship-cannon2",
  Allowed = "check-single-research",
  Key = "w", Hint = "UPGRADE SEASHIP ~!WEAPONS (Damage +5)",
  ForUnit = {"unit-h-foundry"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-ship-armor2",
  Action = "research", Value = "upgrade-human-ship-armor1",
  Allowed = "check-single-research",
  Key = "a", Hint = "UPGRADE SHIP ~!ARMOR (Armor +5)",
  ForUnit = {"unit-h-foundry"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-ship-armor3",
  Action = "research", Value = "upgrade-human-ship-armor2",
  Allowed = "check-single-research",
  Key = "a", Hint = "UPGRADE SHIP ~!ARMOR (Armor +5)",
  ForUnit = {"unit-h-foundry"} } )
