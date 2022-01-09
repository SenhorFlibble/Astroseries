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
--
--
--      Astroseries Copyright Alvaro F. Perez
--      Astroseries Web Site: http://www.astroseries.com
--



-- Load the animations for the units.
Load("scripts/anim.lua")

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-nothing-22", { Name = "Nothing 22",
  Files = {},
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 10,
  DrawLevel = 0,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-nothing-24", { Name = "Nothing 24",
  Files = {},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-cancel",
  Costs = {"time", 60, "gold", 400},
  Speed = 99,
  HitPoints = 60,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 4, ComputerReactionRange = 20, PersonReactionRange = 10,
  Armor = 2, BasicDamage = 9, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Type = "naval",
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {} } )

DefineUnitType("unit-nothing-25", { Name = "Nothing 25",
  Files = {},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-cancel",
  Costs = {"time", 60, "gold", 400},
  Speed = 99,
  HitPoints = 60,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 4, ComputerReactionRange = 20, PersonReactionRange = 10,
  Armor = 2, BasicDamage = 9, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Type = "naval",
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {} } )

DefineUnitType("unit-nothing-30", { Name = "Nothing 30",
  Files = {},
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 0,
  DrawLevel = 10,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-nothing-36", { Name = "Nothing 36",
  Files = {},
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 0,
  DrawLevel = 10,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )



DefineUnitType("unit-dish", { Name = "Flying Dish",
  Files = {"tileset-summer", "neutral/units/dish.png"},
  Size = {90, 90},
  Animations = "animations-fastship", Icon = "icon-daemon",
  Costs = {"time", 300, "gold", 9000},
  NeutralMinimapColor = {192, 0, 0},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 14,
  HitPoints = 1800,
  DrawLevel = 100,
  TileSize = {1, 1}, BoxSize = {88, 88},
  SightRange = 10, ComputerReactionRange = 15, PersonReactionRange = 10,
  Armor = 10, BasicDamage = 80, PiercingDamage = 80, Missile = "missile-energy",
  MaxAttackRange = 9,
  Priority = 63,
  Points = 400,
  Demand = 5,
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
    "attack", "blaster"} } )



DefineUnitType("unit-critter", { Name = "Tigrus",
  Files = {"tileset-summer", "tilesets/summer/neutral/units/critter.png"},
  Size = {32, 32},
  Animations = "animations-footman", Icon = "icon-critter",
  NeutralMinimapColor = {192, 192, 192},
  Speed = 3,
  HitPoints = 25,
  DrawLevel = 35,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 20, PersonReactionRange = 10,
  BasicDamage = 9, PiercingDamage = 2, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 37,
  Points = 1,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  RandomMovementProbability = 100,
  ClicksToExplode = 10,
  organic = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "default-sound",
    "attack", "default-sound"} } )



DefineUnitType("unit-minerals-mine", { Name = "Minerals Mine",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/minerals_mine.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-gold-mine",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 150},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 25500,
  DrawLevel = 40,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  GivesResource = "gold", CanHarvest = true,
  Sounds = {
    "selected", "minerals-mine",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-oil-patch", { Name = "Oil Patch",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/oil_patch.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-oil-patch",
  NeutralMinimapColor = {0, 0, 0},
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "naval",
  Building = true, VisibleUnderFog = true,
  GivesResource = "oil",
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-circle-of-power", { Name = "Landing Area",
  Files = {"tileset-summer", "neutral/buildings/landing_area.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-circle-of-power",
  NeutralMinimapColor = {128, 128, 0},
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-dark-portal", { Name = "Portal",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/dark_portal.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-dark-portal",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 100, "gold", 3000, "wood", 3000, "oil", 1000},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 5000,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 4,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, BuilderOutside = true,
  Teleporter = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-runestone", { Name = "Totem",
  Files = {"tileset-summer", "neutral/buildings/totem.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-runestone",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 175, "gold", 900, "wood", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 500,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 4,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 35,
  Points = 150,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, BuilderOutside = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-dead-body", { Name = "Dead Body",
  Files = {"tileset-summer", "neutral/units/corpses.png"},
  Size = {72, 72},
  Animations = "animations-dead-body", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Vanishes = true,
  Sounds = {} } )


DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
  Files = {
    "tileset-summer", "tilesets/summer/neutral/buildings/small_destroyed_site.png"},
  Size = {32, 32},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 2,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )


DefineUnitType("unit-destroyed-2x2-place", { Name = "Destroyed 2x2 Place",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/destroyed_site.png"},
  Size = {64, 64},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-destroyed-3x3-place", { Name = "Destroyed 3x3 Place",
  Use = "unit-destroyed-2x2-place",
  Size = {96, 96},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )


DefineUnitType("unit-destroyed-4x4-place", { Name = "Destroyed 4x4 Place",
  Use = "unit-destroyed-2x2-place",
  Size = {128, 128},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )



DefineUnitType("unit-destroyed-5x5-place", { Name = "Destroyed 5x5 Place",
  Use = "unit-destroyed-2x2-place",
  Size = {160, 160},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {5, 5}, BoxSize = {159, 159},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )



DefineUnitType("unit-destroyed-6x6-place", { Name = "Destroyed 6x6 Place",
  Use = "unit-destroyed-2x2-place",
  Size = {192, 192},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {6, 6}, BoxSize = {191, 191},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )




DefineUnitType("unit-revealer", { Name = "Dummy unit",
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-holy-vision",
  Speed = 0,
  HitPoints = 1,
  TileSize = {1, 1}, BoxSize = {1, 1},
  SightRange = 12,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  DecayRate = 1,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Revealer = true,
  DetectCloak = true,
  Sounds = {} } )








-- Astroseries extra units, not necesarily aligned with any major race(s)



DefineUnitType("unit-gunman", { Name = "Gunman",
  Files = {"tileset-summer", "neutral/units/gunman.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-gunman",
  Costs = {"time", 50, "gold", 100},
  Speed = 10,
  HitPoints = 45,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 9, PersonReactionRange = 5,
  Armor = 1, BasicDamage = 4, PiercingDamage = 4, Missile = "missile-none",
  MaxAttackRange = 4,
  Priority = 48,
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
    "attack", "pistol"} } )



DefineUnitType("unit-woman1", { Name = "Woman",
  Files = {"tileset-summer", "neutral/units/woman1.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-woman",
  Costs = {"time", 35, "gold", 50},
  Speed = 10,
  HitPoints = 25,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 1, PersonReactionRange = 1,
  Armor = 1, BasicDamage = 2, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true,
  LandUnit = true,
  Coward = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "fsel",
    "acknowledge", "fack",
    "ready", "stdrdy",
    "help", "fhelp",
    "dead", "fscream",
    "attack", "default-sound"} } )





-- Cannon: Armor raised from 5 to 10, Bas. Dmg. from 15 to 16, Pierc. Dmg. from 15 to 16


DefineUnitType("unit-cannon1", { Name = "Cannon",
  Files = {"tileset-summer", "neutral/buildings/cannon1.png"},
  Size = {32, 32},
  Animations = "animations-human-guard-tower", Icon = "icon-cannon",
  Costs = {"time", 80, "gold", 200, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 150,
  DrawLevel = 20,
  TileSize = {1, 1}, BoxSize = {30, 30},
  SightRange = 8,
  Armor = 10, BasicDamage = 16, PiercingDamage = 16, Missile = "missile-std-blaster",
  MaxAttackRange = 8,
  Priority = 52, AnnoyComputerFactor = 20,
  Points = 100,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "blaster"} } )





DefineUnitType("unit-farm", { Name = "Farm",
  Files = {"tileset-summer", "neutral/buildings/farm.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-farm1",
  Costs = {"time", 80, "gold", 200, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 375,
  DrawLevel = 20,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 3,
  Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Supply = 5,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "building-selected",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )





DefineUnitType("unit-palace1", { Name = "Palace",
  Files = {"tileset-summer", "neutral/buildings/palace1.png"},
  Size = {160, 160},
  Animations = "animations-building", Icon = "icon-pig-farm",
  Costs = {"time", 200, "gold", 1500, "wood", 250},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 2000,
  DrawLevel = 20,
  TileSize = {5, 5}, BoxSize = {158, 158},
  SightRange = 7,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Corpse = {"unit-destroyed-5x5-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "building-selected",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )





DefineUnitType("unit-building1", { Name = "Machine Building",
  Files = {"tileset-summer", "neutral/buildings/building1.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-pig-farm",
  Costs = {"time", 200, "gold", 1500, "wood", 250},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 2000,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {90, 90},
  SightRange = 7,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "building-selected",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-planet1", { Name = "Type A Planet",
  Files = {"tileset-summer", "neutral/buildings/planet1.png"},
  Size = {192, 192},
  Animations = "animations-building", Icon = "icon-planet",
  Costs = {"time", 400, "gold", 20000, "wood", 10000},
  NeutralMinimapColor = {255, 192, 0},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 9999999,
  DrawLevel = 8,
  TileSize = {1, 1}, BoxSize = {190, 190},
  SightRange = 20,
  Armor = 255, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-planet2", { Name = "Type B Planet",
  Files = {"tileset-summer", "neutral/buildings/planet2.png"},
  Size = {192, 192},
  Animations = "animations-building", Icon = "icon-planet",
  Costs = {"time", 400, "gold", 20000, "wood", 10000},
  NeutralMinimapColor = {0, 192, 255},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 9999999,
  DrawLevel = 8,
  TileSize = {1, 1}, BoxSize = {190, 190},
  SightRange = 20,
  Armor = 255, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )





DefineUnitType("unit-flag1", { Name = "Flag",
  Files = {"tileset-summer", "neutral/buildings/flag1.png"},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-circle-of-power",
  NeutralMinimapColor = {128, 128, 0},
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {30, 30},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-guard1", { Name = "Guard",
  Files = {"tileset-summer", "neutral/units/guard.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-guard1",
  Costs = {"time", 55, "gold", 140},
  Speed = 10,
  HitPoints = 70,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 3, BasicDamage = 8, PiercingDamage = 8, Missile = "missile-std-blaster",
  MaxAttackRange = 6,
  Priority = 55,
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
    "attack", "blaster"} } )




DefineUnitType("unit-tank1", { Name = "Tank",
  Files = {"tileset-summer", "neutral/units/tank1.png"},
  Size = {64, 64},
  Animations = "animations-ballista", Icon = "icon-170",
  Costs = {"time", 100, "gold", 300, "oil", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 160,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 15, PersonReactionRange = 10,
  Armor = 4, BasicDamage = 52, PiercingDamage = 52, Missile = "missile-shell",
  MaxAttackRange = 9,
  Priority = 70,
  Points = 100,
  Demand = 1,
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  RightMouseAction = "attack",
  CanGroundAttack = true,
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "explosion",
    "attack", "shell"} } )




DefineUnitType("unit-ic-ship", { Name = "I. Consortium Starcruiser",
  Files = {"tileset-summer", "neutral/units/icship.png"},
  Size = {100, 100},
  Animations = "animations-battleship", Icon = "icon-171",
  Costs = {"time", 300, "gold", 4300},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 1100,
  DrawLevel = 100,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {70, 70},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 8,
  Armor = 25, BasicDamage = 50, PiercingDamage = 35, Missile = "missile-tri-blaster",
  MaxAttackRange = 9,
  Priority = 65, AnnoyComputerFactor = 105,
  Points = 500,
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
    "attack", "blaster"} } )



-- Rotkur: In FC Hitpoints was 860, now 900

DefineUnitType("unit-rotkur", { Name = "Moybnyan Rotkur",
  Files = {"tileset-summer", "neutral/units/rotkur.png"},
  Size = {100, 100},
  Animations = "animations-battleship", Icon = "icon-ogre-juggernaught",
  Costs = {"time", 300, "gold", 4300},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 900,
  DrawLevel = 100,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {70, 70},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 8,
  Armor = 25, BasicDamage = 50, PiercingDamage = 35, Missile = "missile-tri-blaster",
  MaxAttackRange = 9,
  Priority = 65, AnnoyComputerFactor = 105,
  Points = 500,
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
    "attack", "blaster"} } )



DefineUnitType("unit-garidis", { Name = "Garidis Guard",
  Files = {"tileset-summer", "neutral/units/garidis.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-footman",
  Costs = {"time", 55, "gold", 140},
  Speed = 10,
  HitPoints = 70,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 3, BasicDamage = 9, PiercingDamage = 9, Missile = "missile-energy",
  MaxAttackRange = 6,
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
    "attack", "blaster"} } )



-- Zyrronyan Nebular Patrol
-- Armor from 25 to 20, Hitpoints from 1000 to 900


DefineUnitType("unit-zship", { Name = "Zyrronyan Nebular Patrol",
  Files = {"tileset-summer", "neutral/units/zship.png"},
  Size = {100, 100},
  Animations = "animations-battleship", Icon = "icon-zyrronyan",
  Costs = {"time", 300, "gold", 4300},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 900,
  DrawLevel = 100,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {70, 70},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 8,
  Armor = 20, BasicDamage = 50, PiercingDamage = 35, Missile = "missile-tri-blaster",
  MaxAttackRange = 9,
  Priority = 65, AnnoyComputerFactor = 105,
  Points = 500,
  Demand = 10,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  PermanentCloak = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "explosion",
    "attack", "blaster"} } )



-- Since attack rate is faster in the Stratagus version
-- now both damages of planetary defense reduced from 66 to 50


DefineUnitType("unit-planet-defense", { Name = "Planetary Defense",
  Files = {"tileset-summer", "neutral/buildings/pdef1.png"},
  Size = {32, 32},
  Animations = "animations-human-guard-tower", Icon = "icon-pdef",
  Costs = {"time", 300, "gold", 9000, "wood", 3000},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 12000,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {30, 30},
  SightRange = 16, ComputerReactionRange = 16, PersonReactionRange = 16,
  Armor = 30, BasicDamage = 50, PiercingDamage = 50, Missile = "missile-std-blaster",
  MaxAttackRange = 16,
  Priority = 20, AnnoyComputerFactor = 80,
  Points = 2000,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "building-destroyed",
    "attack", "blaster"} } )



    



DefineUnitType("unit-moon1", { Name = "Moon",
  Files = {"tileset-summer", "neutral/buildings/moon1.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-planet",
  Costs = {"time", 400, "gold", 14000, "wood", 10000},
  NeutralMinimapColor = {128, 128, 128},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 1200000,
  DrawLevel = 8,
  TileSize = {1, 1}, BoxSize = {92, 92},
  SightRange = 20,
  Armor = 255, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




-- This is the neutral Transport, a new unit (not available in the FC version)

DefineUnitType("unit-transport1", { Name = "Transport",
  Files = {"tileset-summer", "neutral/units/transport.png"},
  Size = {72, 72},
  Animations = "animations-human-transport", Icon = "icon-171",
  Costs = {"time", 85, "gold", 400},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 10,
  HitPoints = 190,
  DrawLevel = 90,
  MaxOnBoard = 6,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 6,
  Armor = 1, BasicDamage = 18, PiercingDamage = 6, Missile = "missile-std-blaster",
  MaxAttackRange = 5,
  Priority = 70, AnnoyComputerFactor = 12,
  Points = 50,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  Transporter = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "stdsel",
    "acknowledge", "stdack",
    "ready", "stdrdy",
    "help", "stdhelp",
    "dead", "explosion",
    "attack", "blaster"} } )



DefineUnitType("unit-critter2", { Name = "Turtadon",
  Files = {"tileset-summer", "tilesets/summer/neutral/units/critter2.png"},
  Size = {32, 32},
  Animations = "animations-critter", Icon = "icon-critter",
  NeutralMinimapColor = {192, 192, 192},
  Speed = 3,
  HitPoints = 20,
  DrawLevel = 35,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 2, ComputerReactionRange = 20, PersonReactionRange = 10,
  BasicDamage = 1, PiercingDamage = 0, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 37,
  Points = 1,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  RandomMovementProbability = 100,
  ClicksToExplode = 10,
  organic = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "default-sound",
    "attack", "default-sound"} } )




-- Nagoran woman, another new unit


DefineUnitType("unit-n-woman1", { Name = "Nagoran Woman",
  Files = {"tileset-summer", "neutral/units/nagoran_woman1.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-177",
  Costs = {"time", 35, "gold", 50},
  Speed = 10,
  HitPoints = 40,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 1, PersonReactionRange = 1,
  Armor = 1, BasicDamage = 4, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, 
  LandUnit = true,
  Coward = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "fsel",
    "acknowledge", "fack",
    "ready", "stdrdy",
    "help", "fhelp",
    "dead", "fscream",
    "attack", "sword"} } )





-- Load the different races


Load("scripts/human/units.lua")
Load("scripts/nagoran/units.lua")
Load("scripts/sc/units.lua")





