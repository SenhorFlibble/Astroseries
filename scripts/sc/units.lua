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
--      units.lua - Define the used unit-types.
--
--      (c) Copyright 1998-2004 by Lutz Sammer and Jimmy Salmon
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
--      $Id: units.lua,v 1.10 2004/02/09 15:54:42 nobody_ Exp $


-- Load the animations for the units.
Load("scripts/anim.lua")

--
-- =============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--



DefineUnitType("unit-troop", { Name = "Trooper",
  Files = {"tileset-summer", "sc/units/troop.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-trooper",
  Costs = {"time", 55, "gold", 140},
  Speed = 10,
  HitPoints = 65,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 15, PersonReactionRange = 5,
  Armor = 2, BasicDamage = 7, PiercingDamage = 7, Missile = "missile-none",
  MaxAttackRange = 4,
  Priority = 60,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "mscream",
    "attack", "mgun"} } )




DefineUnitType("unit-troop1", { Name = "L. Troop",
  Files = {"tileset-summer", "sc/units/troop1.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-trooper",
  Costs = {"time", 70, "gold", 300},
  Speed = 10,
  HitPoints = 70,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 6, ComputerReactionRange = 15, PersonReactionRange = 6,
  Armor = 2, BasicDamage = 14, PiercingDamage = 14, Missile = "missile-laser",
  MaxAttackRange = 6,
  Priority = 55,
  Points = 60,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "mscream",
    "attack", "laser"} } )



DefineUnitType("unit-azul", { Name = "Azul",
  Files = {"tileset-summer", "sc/units/troop1.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-trooper",
  Costs = {"time", 70, "gold", 300},
  Speed = 10,
  HitPoints = 320,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 7, ComputerReactionRange = 10, PersonReactionRange = 7,
  Armor = 5, BasicDamage = 34, PiercingDamage = 20, Missile = "missile-laser",
  MaxAttackRange = 7,
  Priority = 60,
  Points = 175,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "mscream",
    "attack", "laser"} } )





DefineUnitType("unit-starship1", { Name = "Corintius",
  Files = {"tileset-summer", "sc/units/starship1.png"},
  Size = {100, 100},
  Animations = "animations-battleship", Icon = "icon-trooper",
  Costs = {"time", 275, "gold", 3200},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 750,
  DrawLevel = 100,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {70, 70},
  SightRange = 12, ComputerReactionRange = 15, PersonReactionRange = 8,
  Armor = 25, BasicDamage = 40, PiercingDamage = 30, Missile = "missile-dlaser",
  MaxAttackRange = 9,
  Priority = 63, AnnoyComputerFactor = 100,
  Points = 400,
  Demand = 10,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "explosion",
    "attack", "laser"} } )





DefineUnitType("unit-mfighter", { Name = "M-Fighter",
  Files = {"tileset-summer", "sc/units/mfighter.png"},
  Size = {80, 80},
  Animations = "animations-footman", Icon = "icon-trooper",
  Costs = {"time", 90, "gold", 420},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 17,
  HitPoints = 125,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {25, 25},
  SightRange = 8, ComputerReactionRange = 15, PersonReactionRange = 8,
  Armor = 2, BasicDamage = 14, PiercingDamage = 12, Missile = "missile-laser",
  MaxAttackRange = 6,
  Priority = 40,
  Points = 40,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "explosion",
    "attack", "laser"} } )








DefineUnitType("unit-sc-barracks", { Name = "Barracks",
  Files = {"tileset-summer", "sc/buildings/barracks.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-human-barracks",
  Costs = {"time", 175, "gold", 500, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 800,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 30, AnnoyComputerFactor = 35,
  Points = 160,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "stdrdy",
    "help", "base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )








