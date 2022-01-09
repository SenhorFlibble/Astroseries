--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      editor.lua - Editor configuration and functions.
--
--      (c) Copyright 2002-2004 by Lutz Sammer and Jimmy Salmon
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
--      $Id: editor.lua,v 1.3 2004/02/09 15:54:42 nobody_ Exp $


--	Set which icons to display
SetEditorSelectIcon("icon-human-patrol-land")
SetEditorUnitsIcon("icon-footman")


--
--	editor-unit-types a sorted list of unit-types for the editor.
--	FIXME: this is only a temporary hack, for better sorted units.
--
DefineEditorUnitTypes(


  "unit-h-start-location",

   "unit-h-worker",
   "unit-h-soldier",
   "unit-h-tek-sniper",
   "unit-h-tank",
   "unit-h-armor",
   "unit-h-rubitek",
   "unit-h-rocket",

   "unit-h-oil-tanker",
   "unit-h-transport",
   "unit-h-naval-frigate",
   "unit-h-sbc",
   "unit-h-submarine",

   "unit-h-helifly",
   "unit-h-manta",
   "unit-h-scanner",

   "unit-h-outpost",
   "unit-h-fort",
   "unit-h-hq",
   "unit-h-farm",
   "unit-h-barracks",
   "unit-h-laser-factory",
   "unit-h-armory",
   "unit-h-watch-tower",
   "unit-h-guard-tower",
   "unit-h-missile-tower",
   "unit-h-a-factory",
   "unit-h-factory",
   "unit-h-hospital",
   "unit-h-rubitek-armory",
   "unit-h-starport",

   "unit-h-shipyard",
   "unit-h-foundry",
   "unit-h-refinery",
   "unit-h-oil-platform",

   "unit-h-irina",
   "unit-h-adv-manta",
   "unit-h-adv-rubitek",
   "unit-h-master",
   "unit-h-eliocan",
   "unit-h-officer",
   "unit-h-adv-helifly",
   "unit-h-petrov",

   "unit-h-adv-tek-sniper",
   "unit-h-adv-armor",
    
--- - - - - - - - - - - - - - - - - - -

   "unit-n-start-location",

   "unit-n-worker",
   "unit-n-guard",
   "unit-n-armed-guard",
   "unit-n-warrior",
   "unit-n-mxet",
   "unit-n-kxet",
   "unit-n-sp-warrior",
   "unit-n-rocket",

   "unit-n-oil-tanker",
   "unit-n-transport",
   "unit-n-mtila",
   "unit-n-litan",
   "unit-n-subwater",


   "unit-n-interceptor",
   "unit-n-scout",
   "unit-n-vision",


   "unit-n-colony-center",
   "unit-n-town-center",
   "unit-n-city-center",
   "unit-n-farm",
   "unit-n-barracks",
   "unit-n-blaster-factory",
   "unit-n-armory",
   "unit-n-watch-tower",
   "unit-n-guard-tower",
   "unit-n-missile-tower",
   "unit-n-a-factory",
   "unit-n-factory",
   "unit-n-hospital",
   "unit-n-mw-factory",
   "unit-n-star-building",

   "unit-n-shipyard",
   "unit-n-foundry",
   "unit-n-refinery",
   "unit-n-oil-platform",

   "unit-n-master-warrior",
   "unit-n-hero1",
   "unit-n-hero2",
   "unit-n-mau-dakiz",   
   "unit-n-goruzduz",
   "unit-n-hero3",
   "unit-n-hero5",
   "unit-n-hero6",
   "unit-n-mau-kamrak",
   "unit-n-adv-warrior",
   "unit-n-adv-kxet",
    
--


   "unit-dish",
   "unit-gunman",
   "unit-farm",
   "unit-cannon1",
   "unit-palace1",
   "unit-woman1",
   "unit-building1",
   "unit-planet1",
   "unit-planet2",
   "unit-moon1", 
   "unit-flag1",
   "unit-guard1",
   "unit-tank1",
   "unit-ic-ship",
   "unit-rotkur",
   "unit-garidis",
   "unit-zship",
   "unit-planet-defense",
   "unit-transport1",

   "unit-n-woman1",

   "unit-h-mutin",
   "unit-n-axeman",

   "unit-troop",
   "unit-troop1",
   "unit-sc-barracks",
   "unit-starship1",
   "unit-mfighter",

   "unit-sbase1", 
   "unit-n-sbase1",
   "unit-h-ms",
   "unit-azul",

-- - - - - - - - - - - - - - - - - - -

   "unit-minerals-mine",
   "unit-oil-patch",
   "unit-dark-portal",
   "unit-circle-of-power",
   "unit-runestone",
   

   "unit-critter",
   "unit-critter2"

 
-- Placing this unit-types on map is not (yet?) supported.
--   "unit-dead-body",
--   "unit-destroyed-1x1-place",
--   "unit-destroyed-2x2-place",
--   "unit-destroyed-3x3-place",
--   "unit-destroyed-4x4-place",
--   "unit-destroyed-5x5-place",
--   "unit-destroyed-6x6-place",

)


