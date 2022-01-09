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
--	units.lua	-	Define the used nagoran unit-types.
--
--	(c) Copyright 2001,2002 by Lutz Sammer
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
--	$Id: units.lua,v 1.6 2004/02/09 15:54:43 nobody_ Exp $
--
-- ============================================================================
--	Define unit-types.
--








DefineUnitType("unit-n-worker", { Name = "Monolith Builder",
  Files = {"tileset-summer", "nagoran/units/nagoran_worker.png"},
  Size = {72, 72},
  Animations = "animations-peasant", Icon = "icon-peon",
  Costs = {"time", 50, "gold", 100},
  Speed = 10,
  HitPoints = 60,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
  Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 45,
  Points = 30,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "harvest",
  CanAttack = true, RepairRange = 1,
  CanTargetLand = true,
  LandUnit = true,
  Coward = true,
  CanGatherResources = {
   {"file-when-loaded", "nagoran/units/nagoran_worker1.png",
    "resource-id", "gold",
    "resource-capacity", 100,
    "wait-at-resource", 150,
    "wait-at-depot", 150},
   {"file-when-loaded", "nagoran/units/nagoran_worker2.png",
    "resource-id", "wood",
    "resource-capacity", 100,
    "resource-step", 2,
    "wait-at-resource", 24,
    "wait-at-depot", 150,
    "lose-resources",
    "terrain-harvester"}},
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "harvest", "wood", "treechop",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "sword"} } )







DefineUnitType("unit-n-guard", { Name = "Monolith Guard",
  Files = {"tileset-summer", "nagoran/units/nagoran_guard.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-grunt",
  Costs = {"time", 50, "gold", 100},
  Speed = 10,
  HitPoints = 60,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 7, PersonReactionRange = 4,
  Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 50,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "sword"} } )



DefineUnitType("unit-n-armed-guard", { Name = "Monolith Guard",
  Files = {"tileset-summer", "nagoran/units/nagoran_guard2.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-grunt",
  Costs = {"time", 50, "gold", 100},
  Speed = 10,
  HitPoints = 60,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 7, PersonReactionRange = 4,
  Armor = 2, BasicDamage = 6, PiercingDamage = 4, Missile = "missile-blaster",
  MaxAttackRange = 4,
  Priority = 50,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )





-- Attack speed increased. 
-- Price from 450 to 425.


DefineUnitType("unit-n-mxet", { Name = "Nagoran Mxet",
  Files = {"tileset-summer", "nagoran/units/mxet.png"},
  Size = {64, 64},
  Animations = "animations-ballista", Icon = "icon-catapult",
  Costs = {"time", 110, "gold", 425, "oil", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 5,
  HitPoints = 175,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 4, BasicDamage = 68, PiercingDamage = 68, Missile = "missile-normal-plasma",
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
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "shell"} } )



-- Kxet: Basic Dmg from 22 to 25, Piercing Dmg. from 10 to 16.


DefineUnitType("unit-n-kxet", { Name = "Nagoran Kxet",
  Files = {"tileset-summer", "nagoran/units/kxet.png"},
  Size = {72, 72},
  Animations = "animations-knight", Icon = "icon-ogre",
  Costs = {"time", 150, "gold", 600, "oil", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 130,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 6, BasicDamage = 25, PiercingDamage = 16, Missile = "missile-dblaster",
  MaxAttackRange = 11,
  Priority = 63,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )




DefineUnitType("unit-n-warrior", { Name = "Nagoran Warrior",
  Files = {"tileset-summer", "nagoran/units/nagoran_warrior.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-axethrower",
  Costs = {"time", 80, "gold", 350},
  Speed = 10,
  HitPoints = 85,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {36, 36},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 2, BasicDamage = 15, PiercingDamage = 15, Missile = "missile-blaster",
  MaxAttackRange = 6,
  Priority = 55,
  Points = 60,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )




DefineUnitType("unit-n-sp-warrior", { Name = "Special Warrior",
  Files = {"tileset-summer", "nagoran/units/special_warrior.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-death-knight",
  Costs = {"time", 80, "gold", 500},
  Speed = 8,
  HitPoints = 90,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {39, 39},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 3, BasicDamage = 40, PiercingDamage = 10, Missile = "missile-blaster",
  MaxAttackRange = 7,
  Priority = 70,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  CanCastSpell = {
      "spell-death-coil",
      "spell-haste",
      "spell-whirlwind",
      "spell-unholy-armor"},
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )






DefineUnitType("unit-n-adv-kxet", { Name = "Nagoran Improved Kxet",
  Files = {"tileset-summer", "nagoran/units/kxet.png"},
  Size = {72, 72},
  Animations = "animations-ogre", Icon = "icon-ogre",
  Costs = {"time", 200, "gold", 1500, "oil", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 300,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 8, BasicDamage = 40, PiercingDamage = 22, Missile = "missile-dblaster",
  MaxAttackRange = 11,
  Priority = 65,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )





-- Plasma: Hitpoints improved from 90 to 120
-- Price lowered from 700 to 500


DefineUnitType("unit-n-rocket", { Name = "Long Range Plasma",
  Files = {"tileset-summer", "nagoran/units/rocket.png"},
  Size = {56, 56},
  Animations = "animations-dwarves", Icon = "icon-goblin-sappers",
  Costs = {"time", 150, "gold", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 11,
  HitPoints = 120,
  DrawLevel = 80,
  TileSize = {1, 1}, BoxSize = {37, 37},
  SightRange = 9, ComputerReactionRange = 9, PersonReactionRange = 9,
  Armor = 2, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 75,
  Points = 100,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "spell-cast",
  CanCastSpell = {"spell-suicide-bomber"},
  AirUnit = true,
  volatile = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "explosion",
    "attack", "default-sound"} } )




DefineUnitType("unit-n-adv-warrior", { Name = "Chief Nagoran Warrior",
  Files = {"tileset-summer", "nagoran/units/nagoran_warrior.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-axethrower",
  Costs = {"time", 120, "gold", 1000},
  Speed = 10,
  HitPoints = 250,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {36, 36},
  SightRange = 7, ComputerReactionRange = 9, PersonReactionRange = 7,
  Armor = 5, BasicDamage = 26, PiercingDamage = 23, Missile = "missile-blaster",
  MaxAttackRange = 6,
  Priority = 60,
  Points = 60,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )






DefineUnitType("unit-n-master-warrior", { Name = "Master Warrior",
  Files = {"tileset-summer", "nagoran/units/special_warrior.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-death-knight",
  Costs = {"time", 200, "gold", 1500},
  Speed = 8,
  HitPoints = 180,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {39, 39},
  SightRange = 8, ComputerReactionRange = 11, PersonReactionRange = 8,
  Armor = 5, BasicDamage = 48, PiercingDamage = 22, Missile = "missile-blaster",
  MaxAttackRange = 8,
  Priority = 70,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  CanCastSpell = {
      "spell-death-coil",
      "spell-haste",
      "spell-whirlwind",
      "spell-unholy-armor"},
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "death-knight-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )




DefineUnitType("unit-n-hero1", { Name = "Goraz",
  Use = "unit-n-kxet",
  Size = {72, 72},
  Animations = "animations-ogre", Icon = "icon-ogre",
  Costs = {"time", 200, "gold", 1800, "oil", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 375,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 8, BasicDamage = 48, PiercingDamage = 25, Missile = "missile-dblaster",
  MaxAttackRange = 11,
  Priority = 63,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )



DefineUnitType("unit-n-hero2", { Name = "Murbladak",
  Use = "unit-n-guard",
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-beast-cry",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 270,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 6, PersonReactionRange = 4,
  Armor = 8, BasicDamage = 18, PiercingDamage = 8, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 60,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "korgath-bladefist-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "sword"} } )



-- Goruzduz: HitPoints increased from 280 to 300

DefineUnitType("unit-n-goruzduz", { Name = "Goruzduz",
  Files = {"tileset-summer", "nagoran/units/nagoran_guard2.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-beast-cry",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 300,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 8, ComputerReactionRange = 10, PersonReactionRange = 8,
  Armor = 5, BasicDamage = 23, PiercingDamage = 23, Missile = "missile-blaster",
  MaxAttackRange = 6,
  Priority = 65,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )



-- Oil Tanker sight range improved from 4 to 5

DefineUnitType("unit-n-oil-tanker", { Name = "Oil tanker",
  Files = {"tileset-summer", "nagoran/units/oil_tanker_empty.png"},
  Size = {72, 72},
  Animations = "animations-human-oil-tanker", Icon = "icon-orc-oil-tanker",
  Costs = {"time", 50, "gold", 400, "wood", 200},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 10,
  HitPoints = 90,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 5,
  Armor = 10, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 50, AnnoyComputerFactor = 10,
  Points = 40,
  Demand = 1,
  Corpse = {"unit-dead-body", 12},
  Type = "naval",
  RightMouseAction = "harvest",
  SeaUnit = true, Coward = true,
  CanGatherResources = {
   {"file-when-empty", "nagoran/units/oil_tanker_empty.png",
    "file-when-loaded", "nagoran/units/oil_tanker_full.png",
    "resource-id", "oil",
    "resource-capacity", 125,
    "wait-at-resource", 100,
    "wait-at-depot", 100 }},
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "orc-oil-tanker-attack"} } )




-- Transport: HitPoints increased from 180 to 200

DefineUnitType("unit-n-transport", { Name = "Nagoran Transport",
  Files = {"tileset-summer", "nagoran/units/transport.png"},
  Size = {72, 72},
  Animations = "animations-human-transport", Icon = "icon-orc-transport",
  Costs = {"time", 70, "gold", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Speed = 10,
  HitPoints = 200,
  DrawLevel = 90,
  MaxOnBoard = 6,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 6,
  Armor = 2, BasicDamage = 22, PiercingDamage = 8, Missile = "missile-blaster",
  MaxAttackRange = 6,
  Priority = 70, AnnoyComputerFactor = 15,
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
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )




-- Basic Dmg. from 55 to 25, Pierc. Dmg from 21 to 20

DefineUnitType("unit-n-mtila", { Name = "Mtila",
  Files = {"tileset-summer", "nagoran/units/mtila.png"},
  Size = {80, 80},
  Animations = "animations-elven-destroyer", Icon = "icon-orc-destroyer",
  Costs = {"time", 100, "gold", 400, "oil", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 10,
  HitPoints = 275,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 10, PersonReactionRange = 9,
  Armor = 10, BasicDamage = 64, PiercingDamage = 22, Missile = "missile-normal-plasma",
  MaxAttackRange = 8,
  Priority = 65, AnnoyComputerFactor = 20,
  Points = 150,
  Demand = 1,
  Corpse = {"unit-dead-body", 12},
  Type = "naval",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "troll-destroyer-attack"} } )




-- Litan
-- Food demand raised from 8 to 10
-- Armor from 15 to 22
-- Basic Dmg. from 47 to 52, piercing. Dmg. from 37 to 42


DefineUnitType("unit-n-litan", { Name = "Nagoran Litan",
  Files = {"tileset-summer", "nagoran/units/litan.png"},
  Size = {100, 100},
  Animations = "animations-battleship", Icon = "icon-ogre-juggernaught",
  Costs = {"time", 300, "gold", 4000},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 920,
  DrawLevel = 100,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {70, 70},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 8,
  Armor = 22, BasicDamage = 52, PiercingDamage = 42, Missile = "missile-tblaster",
  MaxAttackRange = 9,
  Priority = 63, AnnoyComputerFactor = 100,
  Points = 500,
  Demand = 10,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  CanCastSpell = {"spell-death-and-decay"},
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )





-- Subwater: Attack range improved from 5 to 6
	

DefineUnitType("unit-n-subwater", { Name = "Nagoran Subwater",
  Files = {"tileset-summer", "nagoran/units/subwater.png"},
  Size = {72, 72},
  Animations = "animations-gnomish-submarine", Icon = "icon-giant-turtle",
  Costs = {"time", 110, "gold", 500, "oil", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 7,
  HitPoints = 100,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 6, ComputerReactionRange = 7, PersonReactionRange = 6,
  BasicDamage = 50, PiercingDamage = 15, Missile = "missile-turtle-missile",
  MaxAttackRange = 6,
  Priority = 60, AnnoyComputerFactor = 20,
  Points = 120,
  Demand = 1,
  Corpse = {"unit-dead-body", 12},
  Type = "naval",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true,
  SeaUnit = true,
  PermanentCloak = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "giant-turtle-attack"} } )







-- Nagoran Interceptor: BasicDamage increased from 11 to 14

DefineUnitType("unit-n-interceptor", { Name = "Nagoran Interceptor",
  Files = {"tileset-summer", "nagoran/units/interceptor.png"},
  Size = {72, 72},
  Animations = "animations-manta", Icon = "icon-zeppelin",
  Costs = {"time", 95, "gold", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 17,
  HitPoints = 150,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 3, BasicDamage = 14, PiercingDamage = 11, Missile = "missile-blaster",
  MaxAttackRange = 6,
  Priority = 40,
  Points = 50,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )



-- Nagoran Scout: time changed from 150 to 140
-- BasicDamage from 26 to 27 and Piercing Damage from 19 to 23


DefineUnitType("unit-n-scout", { Name = "Nagoran Scout",
  Files = {"tileset-summer", "nagoran/units/scout.png"},
  Size = {80, 80},
  Animations = "animations-knight", Icon = "icon-dragon",
  Costs = {"time", 135, "gold", 1200},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 14,
  HitPoints = 340,
  DrawLevel = 95,
  TileSize = {1, 1}, BoxSize = {71, 71},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 6, BasicDamage = 27, PiercingDamage = 23, Missile = "missile-dblaster",
  MaxAttackRange = 7,
  Priority = 65,
  Points = 150,
  Demand = 3,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )





-- Nagoran Scout hero

-- unit-fire-breeze


DefineUnitType("unit-n-hero3", { Name = "Mercenary Scout",
  Files = {"tileset-summer", "nagoran/units/scout.png"},
  Size = {80, 80},
  Animations = "animations-knight", Icon = "icon-dragon",
  Costs = {"time", 200, "gold", 2000},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 14,
  HitPoints = 450,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {71, 71},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 8, BasicDamage = 42, PiercingDamage = 38, Missile = "missile-dblaster",
  MaxAttackRange = 7,
  Priority = 65,
  Points = 250,
  Demand = 3,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )





-- The following unit was a unit present in Wargus. Not used in Astroseries,
-- but also not removed to avoid any bugs. It is simply not used
-- and is not available from the editor.


DefineUnitType("unit-n-hero4", { Name = "?",
  Files = {"tileset-summer", "nagoran/units/unknown.png"},
  Size = {32, 32},
  Animations = "animations-eye-of-vision", Icon = "icon-eye-of-kilrogg",
  Speed = 42,
  HitPoints = 100,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 3, ComputerReactionRange = 20, PersonReactionRange = 10,
  BasicDamage = 1, PiercingDamage = 0, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 0,
  DecayRate = 3,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "move",
  AirUnit = true,
  DetectCloak = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "eye-of-kilrogg-attack"} } )






--

DefineUnitType("unit-n-hero5", { Name = "Golondar",
  Files = {"tileset-summer", "nagoran/units/kxet.png"},
  Size = {72, 72},
  Animations = "animations-knight", Icon = "icon-ogre",
  Costs = {"time", 200, "gold", 3000, "oil", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 450,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 8, BasicDamage = 47, PiercingDamage = 35, Missile = "missile-dblaster",
  MaxAttackRange = 11,
  Priority = 63,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "blaster"} } )





DefineUnitType("unit-n-hero6", { Name = "Toril",
  Files = {"tileset-summer", "nagoran/units/special_warrior.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-death-knight",
  Costs = {"time", 200, "gold", 3000},
  Speed = 8,
  HitPoints = 400,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {39, 39},
  SightRange = 8, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 3, BasicDamage = 50, PiercingDamage = 22, Missile = "missile-blaster",
  MaxAttackRange = 8,
  Priority = 70,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  CanCastSpell = {
      "spell-death-coil",
      "spell-haste",
      "spell-whirlwind",
      "spell-unholy-armor"},
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )





DefineUnitType("unit-n-mau-kamrak", { Name = "Mau Kamrak",
  Use = "unit-n-warrior",
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-quick-blade",
  Costs = {"time", 200, "gold", 3000},
  Speed = 10,
  HitPoints = 450,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {36, 36},
  SightRange = 7, ComputerReactionRange = 9, PersonReactionRange = 7,
  Armor = 4, BasicDamage = 52, PiercingDamage = 27, Missile = "missile-blaster",
  MaxAttackRange = 7,
  Priority = 55,
  Points = 60,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )






DefineUnitType("unit-n-mau-dakiz", { Name = "Mau Dakiz",
  Use = "unit-n-warrior",
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-quick-blade",
  Costs = {"time", 200, "gold", 3000},
  Speed = 10,
  HitPoints = 400,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {36, 36},
  SightRange = 7, ComputerReactionRange = 9, PersonReactionRange = 7,
  Armor = 4, BasicDamage = 52, PiercingDamage = 27, Missile = "missile-blaster",
  MaxAttackRange = 7,
  Priority = 55,
  Points = 60,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "nagoran-under-fire",
    "dead", "nagoran-scream",
    "attack", "blaster"} } )













DefineUnitType("unit-n-vision", { Name = "Vision",
  Files = {"tileset-summer", "nagoran/units/vision.png"},
  Size = {35, 35},
  Animations = "animations-elven-destroyer", Icon = "icon-vision",
  Costs = {"time", 85, "gold", 400},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 17,
  HitPoints = 30,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {25, 25},
  SightRange = 9, ComputerReactionRange = 10, PersonReactionRange = 9,
  Armor = 0, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Points = 40,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "move",
  Coward = true,
  DetectCloak = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "default-sound",
    "ready", "default-sound",
    "help", "nagoran-under-fire",
    "dead", "explosion",
    "attack", "default-sound"} } )







-- BUILDINGS BEGIN HERE


DefineUnitType("unit-n-farm", { Name = "Farm",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/farm.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-pig-farm",
  Costs = {"time", 100, "gold", 300, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 400,
  DrawLevel = 20,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 45,
  Points = 100,
  Supply = 8,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
  "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-n-barracks", { Name = "Barracks",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/barracks.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-orc-barracks",
  Costs = {"time", 200, "gold", 500, "wood", 50},
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
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-hospital", { Name = "Healing Area",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/healing_area.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-altar-of-storms",
  Costs = {"time", 160, "gold", 500, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 700,
  DrawLevel = 20,
  MaxMana = 255,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 35,
  Points = 240,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanCastSpell = {
       "spell-healing"},
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-watch-tower", { Name = "Watch Tower",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/watch_tower.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-orc-watch-tower",
  Costs = {"time", 60, "gold", 200, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 100,
  DrawLevel = 20,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 9,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 55, AnnoyComputerFactor = 50,
  Points = 95,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-factory", { Name = "Machinery",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/machinery.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-ogre-mound",
  Costs = {"time", 175, "gold", 600, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 500,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 15,
  Points = 210,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-a-factory", { Name = "Aerial Factory",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/aerial_factory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-alchemist",
  Costs = {"time", 175, "gold", 600, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 500,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 20,
  Points = 230,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-n-star-building", { Name = "Star Building",

  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/star_building.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-dragon-roost",
  Costs = {"time", 275, "gold", 1200, "wood", 250},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 750,
  DrawLevel = 20,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 20,
  Points = 280,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-n-shipyard", { Name = "Shipyard",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/shipyard.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-orc-shipyard",
  Costs = {"time", 175, "gold", 700, "wood", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-orc-shipyard",
  Speed = 0,
  HitPoints = 1100,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 30, AnnoyComputerFactor = 20,
  Points = 170,
  Corpse = {"unit-destroyed-3x3-place", 3},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  ShoreBuilding = true,
  CanStore = {"oil"},
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-n-blaster-factory", { Name = "Blaster Factory",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/blaster_factory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-troll-lumber-mill",
  Costs = {"time", 175, "gold", 600, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 600,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 25, AnnoyComputerFactor = 15,
  Points = 150,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-n-foundry", { Name = "Foundry",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/foundry.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-orc-foundry",
  Costs = {"time", 175, "gold", 700, "wood", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Construction = "construction-orc-foundry",
  Speed = 0,
  HitPoints = 750,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 20,
  Points = 200,
  Corpse = {"unit-destroyed-3x3-place", 3},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  ShoreBuilding = true,
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-n-colony-center", { Name = "Colony Center",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/colony_center.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-great-hall",
  Costs = {"time", 250, "gold", 700, "wood", 150},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 1200,
  DrawLevel = 20,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 7,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 35, AnnoyComputerFactor = 45,
  Points = 200,
  Supply = 6,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  CanStore = {"gold", "wood"},
  Sounds = {
  "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-n-town-center", { Name = "Nagoran Town Center",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/town_center.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-stronghold",
  Costs = {"time", 200, "gold", 800, "wood", 200},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  ImproveProduction = {"gold", 10},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 1400,
  DrawLevel = 20,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 7,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 37, AnnoyComputerFactor = 40,
  Points = 600,
  Supply = 7,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  CanStore = {"gold", "wood"},
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-city-center", { Name = "Nagoran City Center",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/city_center.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-fortress",
  Costs = {"time", 200, "gold", 1500, "wood", 200},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  ImproveProduction = {"gold", 25},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 1600,
  DrawLevel = 20,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 7,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 40, AnnoyComputerFactor = 50,
  Points = 1500,
  Supply = 8,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  CanStore = {"gold", "wood"},
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




-- mw means Microweapons

DefineUnitType("unit-n-mw-factory", { Name = "Microweapons Factory",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/mw_factory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-temple-of-the-damned",
  Costs = {"time", 125, "gold", 900, "wood", 200},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 500,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 35, AnnoyComputerFactor = 20,
  Points = 240,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-armory", { Name = "Nagoran Armory",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/armory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-orc-blacksmith",
  Costs = {"time", 175, "gold", 600, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 775,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 20,
  Points = 170,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-refinery", { Name = "Refinery",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/refinery.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-orc-refinery",
  Costs = {"time", 175, "gold", 700, "wood", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  ImproveProduction = {"oil", 25},
  Construction = "construction-orc-refinery",
  Speed = 0,
  HitPoints = 600,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 25, AnnoyComputerFactor = 20,
  Points = 200,
  Corpse = {"unit-destroyed-3x3-place", 3},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  ShoreBuilding = true,
  CanStore = {"oil"},
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-n-oil-platform", { Name = "Oil Platform",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/oil_platform.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-orc-oil-platform",
  Costs = {"time", 200, "gold", 700, "wood", 200},
  Construction = "construction-orc-oil-well",
  Speed = 0,
  HitPoints = 650,
  DrawLevel = 20,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 20, AnnoyComputerFactor = 20,
  Points = 160,
  Corpse = {"unit-destroyed-3x3-place", 3},
  ExplodeWhenKilled = "missile-explosion",
  Type = "naval",
  Building = true, VisibleUnderFog = true, 
  MustBuildOnTop = "unit-oil-patch",
  GivesResource = "oil", CanHarvest = true,
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-n-start-location", { Name = "Start Location",
  Files = {"tileset-summer", "nagoran/o_startpoint.png"},
  Size = {32, 32},
  NumDirections = 1,
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 0,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Demand = 0,
  Type = "land",
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "default-sound",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-n-guard-tower", { Name = "Guard Tower",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/guard_tower.png"},
  Size = {64, 64},
  Animations = "animations-human-guard-tower", Icon = "icon-orc-guard-tower",
  Costs = {"time", 100, "gold", 200, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 180,
  DrawLevel = 40,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 8, PersonReactionRange = 8,
  Armor = 22, BasicDamage = 22, PiercingDamage = 10, Missile = "missile-dblaster",
  MaxAttackRange = 8,
  Priority = 40, AnnoyComputerFactor = 50,
  Points = 200,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  Sounds = {
    "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "blaster"} } )


DefineUnitType("unit-n-missile-tower", { Name = "Plasma Tower",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/cannon_tower.png"},
  Size = {64, 64},
  Animations = "animations-human-cannon-tower", Icon = "icon-orc-cannon-tower",
  Costs = {"time", 175, "gold", 500, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 250,
  DrawLevel = 40,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 12,
  Armor = 20, BasicDamage = 35, PiercingDamage = 20, Missile = "missile-normal-plasma",
  MaxAttackRange = 12,
  Priority = 40, AnnoyComputerFactor = 50,
  Points = 250,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "shell"} } )




-- WARNING! Do not change the unit-orc-wall string. This is hardcoded in the engine
-- (Stratagus 2.1)


DefineUnitType("unit-orc-wall", { Name = "Wall",
  Use = "unit-human-wall",
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-orc-wall",
  Costs = {"time", 50, "gold", 50, "wood", 20},
  Construction = "construction-wall",
  Speed = 0,
  HitPoints = 40,
  DrawLevel = 39,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0, AnnoyComputerFactor = 45,
  Points = 1,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




-- Nagoran Starbase - New unit, not available in the FC version of the game


DefineUnitType("unit-n-sbase1", { Name = "Nagoran Starbase",
  Files = {"tileset-summer", "tilesets/summer/nagoran/buildings/starbase1.png"},
  Size = {192, 192},
  Animations = "animations-human-guard-tower", Icon = "icon-human-cannon-tower",
  Costs = {"time", 400, "gold", 20000, "wood", 8000},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 7500,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {190, 190},
  SightRange = 16, ComputerReactionRange = 16, PersonReactionRange = 16,
  Armor = 30, BasicDamage = 100, PiercingDamage = 100, Missile = "missile-tblaster",
  MaxAttackRange = 16,
  Priority = 80, AnnoyComputerFactor = 80,
  Points = 4000,
  Corpse = {"unit-destroyed-1x1-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "nagoran-building-done",
    "help", "nagoran-base-attacked",
    "dead", "building-destroyed",
    "attack", "blaster"} } )


-- End of buildings





-- Miscellaneous units now


-- Attack worker


DefineUnitType("unit-n-axeman", { Name = "Monolith Axe Fighter",
  Files = {"tileset-summer", "nagoran/units/nagoran_worker.png"},
  Size = {72, 72},
  Animations = "animations-peasant", Icon = "icon-peon",
  Costs = {"time", 80, "gold", 100},
  Speed = 10,
  HitPoints = 90,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
  Armor = 2, BasicDamage = 8, PiercingDamage = 6, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 50,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 0},
  Type = "land",
  RightMouseAction = "harvest",
  CanAttack = true, RepairRange = 1,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "nagoran-selected",
    "acknowledge", "nagoran-ack",
    "ready", "nagoran-ready",
    "help", "basic orc voices help 1",
    "dead", "nagoran-scream",
    "attack", "sword"} } )











