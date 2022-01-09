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
--      buttons.lua - Define the general unit-buttons.
--
--      (c) Copyright 2001-2004 by Vladi Belperchinov-Shabanski, Lutz Sammer,
--                                 and Jimmy Salmon
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
--      $Id: buttons.lua,v 1.8 2004/02/09 15:54:42 nobody_ Exp $
--
--
--      Astroseries Copyright Alvaro F. Perez
--      Astroseries Web Site: http://www.astroseries.com
--
--


-- Load the buttons of all races

Load("scripts/human/buttons.lua")
Load("scripts/nagoran/buttons.lua")
Load("scripts/sc/buttons.lua")


------------------------------------------------------------------------------
--  Define unit-button.
--
--  DefineButton( { Pos = n, Level = n, Icon = ident,
--    Action = name, [Value = value,]
--    [Allowed = check, [values,]]
--    Key = key, Hint = hint, ForUnit = units)
--

-- general cancel button ------------------------------------------------------

DefineButton( { Pos = 9, Level = 9, Icon = "icon-cancel",
  Action = "cancel",
  Key = "\27", Hint = "~<ESC~> CANCEL",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-upgrade",
  Key = "\27", Hint = "~<ESC~> CANCEL UPGRADE",
  ForUnit = {"cancel-upgrade"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-train-unit",
  Key = "\27", Hint = "~<ESC~> CANCEL UNIT TRAINING",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-build",
  Key = "\27", Hint = "~<ESC~> CANCEL CONSTRUCTION",
  ForUnit = {"cancel-build"} } )





-- Buttons for the non-aligned units


DefineButton( { Pos = 1, Level = 0, Icon = "icon-move-peasant",
  Action = "move",
  Key = "m", Hint = "~!MOVE",
  ForUnit = {"unit-dish", "unit-critter", "unit-gunman", "unit-woman1", "unit-guard1", "unit-tank1", "unit-ic-ship", "unit-rotkur", "unit-garidis", "unit-zship", "unit-transport1", "unit-critter2", "unit-n-woman1", "unit-h-mutin", "unit-n-axeman"} } )


DefineButton( { Pos = 2, Level = 0, Icon = "icon-human-shield1",
  Action = "stop",
  Key = "s", Hint = "~!STOP",
  ForUnit = {"unit-dish", "unit-critter", "unit-gunman", "unit-woman1", "unit-guard1", "unit-tank1", "unit-ic-ship", "unit-rotkur", "unit-garidis", "unit-zship", "unit-transport1", "unit-critter2", "unit-n-woman1", "unit-h-mutin", "unit-n-axeman"} } )


DefineButton( { Pos = 3, Level = 0, Icon = "icon-h-attack",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {"unit-dish", "unit-critter", "unit-gunman", "unit-woman1", "unit-guard1", "unit-tank1", "unit-ic-ship", "unit-rotkur", "unit-garidis", "unit-zship", "unit-transport1", "unit-critter2", "unit-n-woman1", "unit-h-mutin", "unit-n-axeman"} } )


DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {"unit-dish", "unit-gunman", "unit-woman1", "unit-guard1", "unit-tank1", "unit-ic-ship", "unit-rotkur", "unit-garidis", "unit-zship", "unit-n-woman1", "unit-h-mutin", "unit-n-axeman"} } )


DefineButton( { Pos = 5, Level = 0, Icon = "icon-human-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = "S~!TAND GROUND",
  ForUnit = {"unit-dish", "unit-gunman", "unit-woman1", "unit-guard1", "unit-tank1", "unit-ic-ship", "unit-rotkur", "unit-garidis", "unit-zship", "unit-n-woman1", "unit-h-mutin", "unit-n-axeman"} } )



-- Neutral transport unload button

DefineButton( { Pos = 4, Level = 0, Icon = "icon-human-unload",
  Action = "unload",
  Key = "u", Hint = "~!UNLOAD",
  ForUnit = {"unit-transport1"} } )






