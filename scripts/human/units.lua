--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/             \/ 
--  ______________________                           ______________________
--			  T H E   W A R   B E G I N S
--	   Stratagus - A free fantasy real time strategy game engine
--
--	units.ccl	-	Define the used human unit-types.
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
-- =============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--










DefineUnitType("unit-h-worker", { Name = "Worker",
  Files = {"tileset-summer", "human/units/human_worker.png"},
  Size = {72, 72},
  DrawLevel = 19,
  Animations = "animations-peasant", Icon = "icon-peasant",
  Costs = {"time", 45, "gold", 100},
  Speed = 10,
  HitPoints = 30,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
  BasicDamage = 3, PiercingDamage = 2, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 45,
  Points = 30,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "harvest",
  CanAttack = true, RepairRange = 1,
  CanTargetLand = true,
  LandUnit = true,
  Coward = true,
  CanGatherResources = {
   {"file-when-loaded", "human/units/human_worker1.png",
    "resource-id", "gold",
--    "harvest-from-outside",
    "resource-capacity", 100,
    "wait-at-resource", 150,
    "wait-at-depot", 150},
   {"file-when-loaded", "human/units/human_worker2.png",
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
    "selected", "human-worker-selected",
    "acknowledge", "human-worker-ack",
    "ready", "human-worker-ready",
    "harvest", "wood", "treechop",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "sword"} } )





-- Soldier: time changed from 65 to 55
-- Price from 150 to 140  (with this can make 7 soldiers with 1000 money. 7 x 140 = 980)


DefineUnitType("unit-h-soldier", { Name = "Soldier",
  Files = {"tileset-summer", "human/units/soldier.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-footman",
  Costs = {"time", 55, "gold", 120},
  Speed = 10,
  HitPoints = 65,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 8, PersonReactionRange = 5,
  Armor = 2, BasicDamage = 7, PiercingDamage = 7, Missile = "missile-none",
  MaxAttackRange = 4,
  Priority = 50,
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "mgun"} } )




-- Battle Tank: Basic Dmg. reduced from 85 to 68 and Pierc Dmg. from 85 to 68.
-- Time from 170 to 110. HitPoints from 200 to 175.
-- Price from 450 to 425.


DefineUnitType("unit-h-tank", { Name = "Battle Tank",
  Files = {"tileset-summer", "human/units/battle_tank.png"},
  Size = {64, 64},
  Animations = "animations-ballista", Icon = "icon-ballista",
  Costs = {"time", 110, "gold", 425, "oil", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 175,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 4, BasicDamage = 68, PiercingDamage = 68, Missile = "missile-dual-shell",
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-tank-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "shell"} } )






-- Armor: Basic Dmg from 22 to 25, Piercing Dmg from 10 to 16. Time from 125 to 150.

DefineUnitType("unit-h-armor", { Name = "Mobile Armor",
  Files = {"tileset-summer", "human/units/armor.png"},
  Size = {72, 72},
  Animations = "animations-knight", Icon = "icon-knight",
  Costs = {"time", 150, "gold", 600, "oil", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 130,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 6, BasicDamage = 25, PiercingDamage = 16, Missile = "missile-rocket",
  MaxAttackRange = 11,
  Priority = 63,
  Points = 100,
  Demand = 1,
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-tank-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "rocket"} } )








DefineUnitType("unit-h-tek-sniper", { Name = "Tek Sniper",
  Files = {"tileset-summer", "human/units/tek_sniper.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-archer",
  Costs = {"time", 70, "gold", 275},
  Speed = 10,
  HitPoints = 70,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "laser"} } )



DefineUnitType("unit-h-rubitek", { Name = "Rubitek",
  Files = {"tileset-summer", "human/units/rubitek.png"},
  Size = {72, 72},
  Animations = "animations-mage", Icon = "icon-mage",
  Costs = {"time", 80, "gold", 500},
  Speed = 8,
  HitPoints = 80,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 2, BasicDamage = 30, PiercingDamage = 22, Missile = "missile-laser",
  MaxAttackRange = 7,
  Priority = 70,
  Points = 100,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  CanCastSpell = {
      "spell-fireball"},
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "laser"} } )





-- Formerly, on FC, Hit Points for the rocket was 80, now 120
-- Price lowered from 700 to 500

DefineUnitType("unit-h-rocket", { Name = "Long Range Rocket",
  Files = {"tileset-summer", "human/units/rocket.png"},
  Size = {56, 56},
  Animations = "animations-dwarves", Icon = "icon-dwarves",
  Costs = {"time", 150, "gold", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 11,
  HitPoints = 120,
  DrawLevel = 80,
  TileSize = {1, 1}, BoxSize = {32, 32},
  SightRange = 9, ComputerReactionRange = 9, PersonReactionRange = 9,
  Armor = 2, Missile = "missile-none",
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
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "default-sound"} } )






-- Oil Tanker sight range improved from 4 to 5

DefineUnitType("unit-h-oil-tanker", { Name = "Oil Tanker",
  Files = {"tileset-summer", "human/units/oil_tanker_empty.png"},
  Size = {72, 72},
  Animations = "animations-human-oil-tanker", Icon = "icon-human-oil-tanker",
  Costs = {"time", 50, "gold", 400},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 10,
  HitPoints = 100,
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
   {"file-when-empty", "human/units/oil_tanker_empty.png",
    "file-when-loaded", "human/units/oil_tanker_full.png",
    "resource-id", "oil",
    "resource-capacity", 125,
    "wait-at-resource", 100,
    "wait-at-depot", 100}},
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "human-oil-tanker-attack"} } )



DefineUnitType("unit-h-transport", { Name = "Transport",
  Files = {"tileset-summer", "human/units/transport.png"},
  Size = {72, 72},
  Animations = "animations-human-transport", Icon = "icon-human-transport",
  Costs = {"time", 90, "gold", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 10,
  HitPoints = 180,
  DrawLevel = 90,
  MaxOnBoard = 6,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 6,
  Armor = 1, BasicDamage = 16, PiercingDamage = 5, Missile = "missile-laser",
  MaxAttackRange = 5,
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "laser"} } )




DefineUnitType("unit-h-naval-frigate", { Name = "Naval Frigate",
  Files = {"tileset-summer", "human/units/naval_frigate.png"},
  Size = {80, 80},
  Animations = "animations-elven-destroyer", Icon = "icon-human-destroyer",
  Costs = {"time", 100, "gold", 400, "oil", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 10,
  HitPoints = 280,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 8, ComputerReactionRange = 10, PersonReactionRange = 8,
  Armor = 12, BasicDamage = 62, PiercingDamage = 20, Missile = "missile-rocket",
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "rocket"} } )




-- Star Battlecruiser: Due to animation speed increase in attack rate
-- Basic damage reduced from 150 to 50 and piercing dmg. from 105 to 38
-- Armor reduced from 30 to 25
-- Max Attack Range increased from 8 to 9
-- Price increased from 3000 to 4000, time from 275 to 300
-- Food demand changed from 8 to 10


DefineUnitType("unit-h-sbc", { Name = "Star Battlecruiser",
  Files = {"tileset-summer", "human/units/star_battlecruiser.png"},
  Size = {100, 100},
  Animations = "animations-battleship", Icon = "icon-battleship",
  Costs = {"time", 300, "gold", 4000},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 6,
  HitPoints = 900,
  DrawLevel = 100,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {70, 70},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 8,
  Armor = 25, BasicDamage = 50, PiercingDamage = 38, Missile = "missile-tlaser",
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "laser"} } )



--  Submarine.  Improved attack range from 5 to 6.

DefineUnitType("unit-h-submarine", { Name = "SB-300 Submarine",
  Files = {"tileset-summer", "human/units/submarine.png"},
  Size = {72, 72},
  Animations = "animations-gnomish-submarine", Icon = "icon-gnomish-submarine",
  Costs = {"time", 110, "gold", 500, "oil", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 7,
  HitPoints = 100,
  DrawLevel = 35,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 6, ComputerReactionRange = 7, PersonReactionRange = 6,
  Armor = 2, BasicDamage = 50, PiercingDamage = 15, Missile = "missile-rocket",
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "rocket"} } )





DefineUnitType("unit-h-helifly", { Name = "Helifighter",
  Files = {"tileset-summer", "human/units/helifly.png"},
  Size = {80, 80},
  Animations = "animations-footman", Icon = "icon-gnomish-flying-machine",
  Costs = {"time", 85, "gold", 400},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 17,
  HitPoints = 120,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {25, 25},
  SightRange = 7, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 2, BasicDamage = 12, PiercingDamage = 10, Missile = "missile-laser",
  MaxAttackRange = 5,
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "laser"} } )





-- Attack power of Manta improved a bit, from 21 and 19 to 25 and 21. Attack range from 6 to 7.
-- Time changed from 95 to 140, price from 600 to 700
-- Hit points increased from 160 to 170
-- Armor from 4 to 5
-- Speed increased a bit with the manta animation (as fast as Stratagus can give??)
-- With all these changes, the manta has become one of the very best units in Astroseries


DefineUnitType("unit-h-manta", { Name = "Manta",
  Files = {"tileset-summer", "human/units/manta.png"},
  Size = {80, 80},
  DrawLevel = 45,
  Animations = "animations-manta", Icon = "icon-gryphon-rider",
  Costs = {"time", 140, "gold", 700},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 20,
  HitPoints = 170,
  DrawLevel = 95,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 9, PersonReactionRange = 9,
  Armor = 5, BasicDamage = 25, PiercingDamage = 21, Missile = "missile-dlaser",
  MaxAttackRange = 7,
  Priority = 65,
  Points = 150,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "laser"} } )





DefineUnitType("unit-h-scanner", { Name = "Scanner",
  Files = {"tileset-summer", "human/units/scanner.png"},
  Size = {35, 35},
  Animations = "animations-elven-destroyer", Icon = "icon-scanner",
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
    "acknowledge", "normalclick",
    "ready", "normalclick",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "default-sound"} } )











-- HEROES START HERE


DefineUnitType("unit-h-adv-tek-sniper", { Name = "Elite Tek Sniper",
  Use = "unit-h-tek-sniper",
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-archer",
  Costs = {"time", 90, "gold", 750},
  Speed = 10,
  HitPoints = 240,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 7, ComputerReactionRange = 8, PersonReactionRange = 7,
  Armor = 5, BasicDamage = 22, PiercingDamage = 22, Missile = "missile-laser",
  MaxAttackRange = 7,
  Priority = 55,
  Points = 60,
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "laser"} } )




DefineUnitType("unit-h-adv-armor", { Name = "Advanced Armor",
  Files = {"tileset-summer", "human/units/armor.png"},
  Size = {72, 72},
  Animations = "animations-knight", Icon = "icon-knight",
  Costs = {"time", 200, "gold", 1500, "oil", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 300,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 8, BasicDamage = 28, PiercingDamage = 16, Missile = "missile-rocket",
  MaxAttackRange = 11,
  Priority = 63,
  Points = 100,
  Demand = 1,
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-tank-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "rocket"} } )




-- This hero (Irina) improved a bit. Now attack range of 6 instead of 5
-- Piercing Damage of 18 and not 16, etc

DefineUnitType("unit-h-irina", { Name = "Irina Romanova",
  Files = {"tileset-summer", "human/units/irina.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-female-hero",
  Costs = {"time", 70, "gold", 900},
  Speed = 10,
  HitPoints = 300,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 6, ComputerReactionRange = 9, PersonReactionRange = 6,
  Armor = 8, BasicDamage = 32, PiercingDamage = 18, Missile = "missile-none",
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
  hero = true, 
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "normalclick",
    "acknowledge", "irina-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "fscream",
    "attack", "mgun"} } )





DefineUnitType("unit-h-adv-manta", { Name = "Advanced Manta",
  Files = {"tileset-summer", "human/units/manta.png"},
  Size = {80, 80},
  DrawLevel = 45,
  Animations = "animations-knight", Icon = "icon-gryphon-rider",
  Costs = {"time", 250, "gold", 2500},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 14,
  HitPoints = 300,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 10, ComputerReactionRange = 11, PersonReactionRange = 10,
  Armor = 5, BasicDamage = 28, PiercingDamage = 26, Missile = "missile-dlaser",
  MaxAttackRange = 8,
  Priority = 65,
  Points = 150,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "laser"} } )





DefineUnitType("unit-h-adv-rubitek", { Name = "Elite Rubitek",
  Files = {"tileset-summer", "human/units/rubitek.png"},
  Size = {72, 72},
  Animations = "animations-mage", Icon = "icon-mage",
  Costs = {"time", 80, "gold", 500},
  Speed = 8,
  HitPoints = 140,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {33, 33},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 4, BasicDamage = 40, PiercingDamage = 30, Missile = "missile-laser",
  MaxAttackRange = 8,
  Priority = 70,
  Points = 240,
  Demand = 1,
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  CanCastSpell = {
      "spell-fireball"},
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "laser"} } )




-- Piercing Dmg. Raised from 50 to 60

DefineUnitType("unit-h-master", { Name = "Yazin",
  Files = {"tileset-summer", "human/units/leader1.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-knight-rider",
  Costs = {"time", 200, "gold", 4000},
  Speed = 13,
  HitPoints = 800,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 25, BasicDamage = 85, PiercingDamage = 60, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 65,
  Points = 110,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true,
  CanCastSpell = {
      "spell-fireball"},
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "master-selected",
    "acknowledge", "master-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "hot_blade"} } )




-- Bas. Dmg raised from 70 to 75, Pierc. Dmg raised from 45 to 50

DefineUnitType("unit-h-eliocan", { Name = "Eliocan",
  Files = {"tileset-summer", "human/units/leader2.png"},
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-176",
  Costs = {"time", 90, "gold", 800, "wood", 100},
  Speed = 13,
  HitPoints = 500,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Armor = 20, BasicDamage = 75, PiercingDamage = 50, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 65,
  Points = 110,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true,
  CanCastSpell = {
      "spell-fireball"},
  LandUnit = true,
  hero = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "hot_blade"} } )






-- Officer: Max Attack Range improved from 4 to 5. 
-- Basic Damage from 16 to 22, Piercing Damage from 12 to 18

DefineUnitType("unit-h-officer", { Name = "Officer",
  Use = "unit-h-soldier",
  Size = {72, 72},
  Animations = "animations-footman", Icon = "icon-ugly-guy",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 220,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 6, ComputerReactionRange = 6, PersonReactionRange = 6,
  Armor = 5, BasicDamage = 22, PiercingDamage = 18, Missile = "missile-none",
  MaxAttackRange = 5,
  Priority = 60,
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "human-scream",
    "attack", "mgun"} } )






DefineUnitType("unit-h-adv-helifly", { Name = "Advanced Helifly",
  Files = {"tileset-summer", "human/units/helifly.png"},
  Size = {80, 80},
  Animations = "animations-footman", Icon = "icon-gnomish-flying-machine",
  Costs = {"time", 85, "gold", 400},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 17,
  HitPoints = 250,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 7, ComputerReactionRange = 10, PersonReactionRange = 10,
  Armor = 3, BasicDamage = 22, PiercingDamage = 22, Missile = "missile-laser",
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
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "laser"} } )






-- Petrov: Comp. Reaction Range improved from 9 to 11
-- Attack range from 9 to 10

DefineUnitType("unit-h-petrov", { Name = "Konstantin Petrov",
  Use = "unit-h-armor",
  Size = {72, 72},
  Animations = "animations-knight", Icon = "icon-man-of-light",
  Costs = {"time", 100, "gold", 1900},
  RepairHp = 4,
  RepairCosts = {"gold", 1},
  Speed = 13,
  HitPoints = 450,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {42, 42},
  SightRange = 11, ComputerReactionRange = 12, PersonReactionRange = 11,
  Armor = 8, BasicDamage = 52, PiercingDamage = 26, Missile = "missile-rocket",
  MaxAttackRange = 11,
  Priority = 65,
  Points = 120,
  Demand = 1,
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  hero = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "human-selected",
    "acknowledge", "human-ack",
    "ready", "human-tank-ready",
    "help", "human-under-fire",
    "dead", "explosion",
    "attack", "rocket"} } )





-- BUILDINGS BEGIN HERE


DefineUnitType("unit-h-farm", { Name = "Hydroponic Farm",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/farm.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-farm",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-h-barracks", { Name = "Barracks",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/barracks.png"},
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-h-hospital", { Name = "Hospital",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/hospital.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-church",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-h-watch-tower", { Name = "Scout Tower",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/scout_tower.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-human-watch-tower",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



-- Factory: In FC HitPoints was 500, now 600

DefineUnitType("unit-h-factory", { Name = "Factory",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/factory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-stables",
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
  Priority = 15, AnnoyComputerFactor = 15,
  Points = 210,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
  "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




DefineUnitType("unit-h-a-factory", { Name = "Air Factory",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/air_factory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-gnomish-inventor",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


-- In FC, the StarPort Hit Points was 500, now 750
-- Time changed from 200 to 275
-- Price raised from 900 to 1200


DefineUnitType("unit-h-starport", { Name = "Starport",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/starport.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-gryphon-aviary",
  Costs = {"time", 275, "gold", 1200, "wood", 250},
  RepairHp = 2,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 750,
  DrawLevel = 20,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 3,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 150,
  Points = 400,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
  "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


DefineUnitType("unit-h-shipyard", { Name = "Shipyard",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/shipyard.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-human-shipyard",
  Costs = {"time", 175, "gold", 700, "wood", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-human-shipyard",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-h-laser-factory", { Name = "Laser Factory",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/elven_lumber_mill.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-elven-lumber-mill",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-h-foundry", { Name = "Foundry",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/foundry.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-human-foundry",
  Costs = {"time", 175, "gold", 700, "wood", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Construction = "construction-human-foundry",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



-- Townhall supplies 6; Formerly in FC only 1  Name was formerly Town Hall, now Outpost


DefineUnitType("unit-h-outpost", { Name = "Outpost",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/outpost.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-town-hall",
  Costs = {"time", 250, "gold", 700, "wood", 150},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 1200,
  DrawLevel = 20,
  TileSize = {4, 4}, BoxSize = {126, 126},
  SightRange = 7,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 35, AnnoyComputerFactor = 45,
  Points = 200,
  Supply = 6,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  CanStore = {"wood", "gold"},
  Sounds = {
 "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



-- Previously on FC, supply was 1, now supply is 7

DefineUnitType("unit-h-fort", { Name = "Fort",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/fort.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-keep",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )


-- Previously in FC, known as Castle. Now is Headquarters. Supply is 8

DefineUnitType("unit-h-hq", { Name = "Headquarters",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/headquarters.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-castle",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-h-rubitek-armory", { Name = "Rubitek Armory",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/rubitek_armory.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-mage-tower",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-h-armory", { Name = "Armory",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/blacksmith.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-human-blacksmith",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-h-refinery", { Name = "Refinery",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/refinery.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-human-refinery",
  Costs = {"time", 175, "gold", 700, "wood", 100},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  ImproveProduction = {"oil", 25},
  Construction = "construction-human-refinery",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



-- OIL PLATFORM: Previously in FC, 450 wood, now 200 wood

DefineUnitType("unit-h-oil-platform", { Name = "Oil Platform",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/oil_platform.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-human-oil-platform",
  Costs = {"time", 200, "gold", 700, "wood", 200},
  Construction = "construction-human-oil-well",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )





DefineUnitType("unit-h-start-location", { Name = "Start Location",
  Files = {"tileset-summer", "human/x_startpoint.png"},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-cancel",
  NumDirections = 1,
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
    "ready", "default-sound",
    "help", "default-sound",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



DefineUnitType("unit-h-guard-tower", { Name = "Guard Tower",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/guard_tower.png"},
  Size = {64, 64},
  Animations = "animations-human-guard-tower", Icon = "icon-human-guard-tower",
  Costs = {"time", 100, "gold", 200, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 175,
  DrawLevel = 40,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 8, PersonReactionRange = 8,
  Armor = 20, BasicDamage = 20, PiercingDamage = 10, Missile = "missile-dlaser",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "laser"} } )



DefineUnitType("unit-h-missile-tower", { Name = "Missile Tower",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/missile_tower.png"},
  Size = {64, 64},
  Animations = "animations-human-cannon-tower", Icon = "icon-human-cannon-tower",
  Costs = {"time", 175, "gold", 500, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 250,
  DrawLevel = 40,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 12, ComputerReactionRange = 12, PersonReactionRange = 12,
  Armor = 20, BasicDamage = 35, PiercingDamage = 20, Missile = "missile-rocket",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "rocket"} } )



-- WARNING! Do not change the unit-human-wall string. This is hardcoded in the engine
-- (Stratagus 2.1)


DefineUnitType("unit-human-wall", { Name = "Wall",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/wall.png"},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-human-wall",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )




-- Mega Starway: Armor reduced from 100 (FC) to 25
-- Both damage from 280 to 105


DefineUnitType("unit-h-ms", { Name = "Mega Starway",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/mega_starway.png"},
  Size = {192, 192},
  Animations = "animations-human-cannon-tower", Icon = "icon-human-cannon-tower",
  Costs = {"time", 400, "gold", 25000, "wood", 10000},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 9000,
  DrawLevel = 40,
  TileSize = {6, 6}, BoxSize = {190, 190},
  SightRange = 15, ComputerReactionRange = 125, PersonReactionRange = 125,
  Armor = 25, BasicDamage = 105, PiercingDamage = 105, Missile = "missile-big-energy",
  MaxAttackRange = 125,
  Priority = 80, AnnoyComputerFactor = 120,
  Points = 18000,
  Corpse = {"unit-destroyed-6x6-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true, 
  DetectCloak = true,
  Sounds = {
  "selected", "building-selected",
    "acknowledge", "default-sound",
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "default-sound"} } )



-- Starbase: Hitpoints changed from 9000 in FC to 7500
-- Armor from 75 to 30

DefineUnitType("unit-sbase1", { Name = "Starbase",
  Files = {"tileset-summer", "tilesets/summer/human/buildings/starbase1.png"},
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
  Armor = 30, BasicDamage = 100, PiercingDamage = 100, Missile = "missile-tlaser",
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
    "ready", "human-building-done",
    "help", "human-base-attacked",
    "dead", "building-destroyed",
    "attack", "laser"} } )


-- End buildings





-- Now miscellaneous units

-- Attack worker


DefineUnitType("unit-h-mutin", { Name = "Fighter Peasant",
  Files = {"tileset-summer", "human/units/human_worker.png"},
  Size = {72, 72},
  DrawLevel = 19,
  Animations = "animations-peasant", Icon = "icon-peasant",
  Costs = {"time", 80, "gold", 100},
  Speed = 10,
  HitPoints = 40,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 7, PersonReactionRange = 4,
  BasicDamage = 5, PiercingDamage = 4, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 50,
  Points = 50,
  Demand = 1,
  Corpse = {"unit-dead-body", 6},
  Type = "land",
  RightMouseAction = "harvest",
  CanAttack = true, RepairRange = 1,
  CanTargetLand = true,
  LandUnit = true, 
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "peasant-selected",
    "acknowledge", "peasant-acknowledge",
    "ready", "peasant-ready",
    "help", "basic human voices help 1",
    "dead", "human-scream",
    "attack", "sword"} } )








