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
--      ai.lua - Define the AI.
--
--      (c) Copyright 2000-2004 by Lutz Sammer and Jimmy Salmon
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
--      $Id: ai.lua,v 1.5 2004/02/29 21:18:19 jsalmon3 Exp $
--
--
--	Astroseries Producer: Alvaro F. Perez
--	Astroseries (c) Copyright 2001-2004: Alvaro F. Perez
--	Astroseries Web Site: http://www.astroseries.com    
--
--


-- (define (ai:sleep) () #t)

race1 = "human"
race2 = "orc"


--=============================================================================
--
--  AI helper table, the AI must know where to build units,
--  where to research spells, where to upgrade units.
--  If this is allowed and which dependencies exists, isn't
--  handled here. (see upgrade.lua)
--
--  NOTE: perhaps this could later be used to build the buttons?
--
--  DefineAiHelper(list)
--

-- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--  * Race human.
-- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DefineAiHelper(
  --
  -- Unit can build which buildings.
  --
  {"build", "unit-h-worker",
  "unit-h-farm", "unit-h-barracks", "unit-h-outpost", "unit-h-laser-factory",
  "unit-h-armory", "unit-h-watch-tower", "unit-human-wall",
  "unit-h-shipyard", "unit-h-foundry", "unit-h-refinery",
  "unit-h-a-factory", "unit-h-factory", "unit-h-rubitek-armory", "unit-h-hospital",
  "unit-h-starport"},
  {"build", "unit-h-oil-tanker", "unit-h-oil-platform"},
  --
  -- Building can train which units.
  --
  {"train", "unit-h-farm"},
  {"train", "unit-h-outpost", "unit-h-worker"},
  {"train", "unit-h-fort", "unit-h-worker"},
  {"train", "unit-h-hq", "unit-h-worker"},
  {"train", "unit-h-barracks",
  "unit-h-soldier", "unit-h-tek-sniper"},

  {"train", "unit-h-factory",
  "unit-h-tank", "unit-h-armor"},

  {"train", "unit-h-a-factory",
  "unit-h-helifly", "unit-h-scanner", "unit-h-transport", "unit-h-rocket"},
  {"train", "unit-h-rubitek-armory", "unit-h-rubitek"},
  {"train", "unit-h-starport", "unit-h-manta", "unit-h-sbc"},
  {"train", "unit-h-shipyard",
  "unit-h-oil-tanker", "unit-h-naval-frigate", "unit-h-submarine"},

  --
  -- Building can upgrade which upgrades.
  --

  {"upgrade", "unit-h-outpost", "unit-h-fort"},
  {"upgrade", "unit-h-fort", "unit-h-hq"},
  {"upgrade", "unit-h-watch-tower",
  "unit-h-guard-tower", "unit-h-missile-tower"},
  --
  -- Building can research which spells or upgrades.
  --
  {"research", "unit-h-armory",
  "upgrade-sword1", "upgrade-sword2",
  "upgrade-human-shield1", "upgrade-human-shield2",
  "upgrade-ballista1", "upgrade-ballista2"},
  {"research", "unit-h-laser-factory",
  "upgrade-arrow1", "upgrade-arrow2", "upgrade-longbow"},
  {"research", "unit-h-hospital",
   "upgrade-healing"},
  {"research", "unit-h-rubitek-armory",
  "upgrade-slow", "upgrade-flame-shield", "upgrade-blizzard"},
  {"research", "unit-h-foundry",
  "upgrade-human-ship-cannon1", "upgrade-human-ship-cannon2",
  "upgrade-human-ship-armor1", "upgrade-human-ship-armor2"},
  {"research", "unit-h-starport",
  "upgrade-death-and-decay"},

  --
  -- Unit can repair which units.
  --

  {"repair", "unit-h-worker",
  "unit-h-farm", "unit-h-barracks", "unit-h-outpost", "unit-h-fort", "unit-h-hq",
  "unit-h-laser-factory", "unit-h-armory", "unit-h-watch-tower",
  "unit-h-guard-tower", "unit-h-missile-tower", "unit-human-wall",
  "unit-h-shipyard", "unit-h-foundry", "unit-h-refinery",
  "unit-h-a-factory", "unit-h-factory", "unit-h-rubitek-armory", "unit-h-hospital",
  "unit-h-starport", "unit-h-transport", "unit-h-tank", "unit-h-armor", "unit-h-rocket",
  "unit-h-sbc", "unit-h-helifly", "unit-h-manta", "unit-h-scanner", "unit-h-adv-armor",
  "unit-h-adv-manta", "unit-h-adv-helifly", "unit-h-petrov", "unit-cannon1", "unit-farm",     "unit-palace1", "unit-building1", "unit-h-ms"},
  --
  -- Reduce unit limits.
  --
  {"unit-limit", "unit-h-farm", "food"},


  --
  -- Equivalence of units for the resource manager.
  --
  {"unit-equiv", "unit-h-outpost",
  "unit-h-fort", "unit-h-hq"},
  {"unit-equiv", "unit-h-fort",
  "unit-h-hq"}



)



-- No advanced tek snipers, thanks.
--  {"unit-equiv", "unit-h-tek-sniper",
--  "unit-h-adv-tek-sniper"},
--
-- No advanced armors, thanks.
--  {"unit-equiv", "unit-h-armor",
--  "unit-h-adv-armor"} )

-- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--  * Race orc. (Nagorans)
-- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DefineAiHelper(
  --
  -- Unit can build which buildings.
  --
  {"build", "unit-n-worker",
  "unit-n-farm", "unit-n-barracks", "unit-n-colony-center",
  "unit-n-blaster-factory", "unit-n-armory", "unit-n-watch-tower",
  "unit-orc-wall", "unit-n-shipyard", "unit-n-foundry", "unit-n-refinery",
  "unit-n-a-factory", "unit-n-factory", "unit-n-mw-factory",
  "unit-n-hospital", "unit-n-star-building"},
  {"build", "unit-n-oil-tanker", "unit-n-oil-platform"},
  --
  -- Building can train which units.
  --
  {"train", "unit-n-farm"},
  {"train", "unit-n-colony-center", "unit-n-worker"},
  {"train", "unit-n-town-center", "unit-n-worker"},
  {"train", "unit-n-city-center", "unit-n-worker"},
  {"train", "unit-n-barracks",
  "unit-n-guard", "unit-n-warrior", "unit-n-armed-guard"},
  {"train", "unit-n-a-factory",
  "unit-n-interceptor", "unit-n-vision", "unit-n-transport", "unit-n-rocket"},
  {"train", "unit-n-factory",
  "unit-n-mxet", "unit-n-kxet"},


  {"train", "unit-n-mw-factory", "unit-n-sp-warrior"},
  {"train", "unit-n-star-building", "unit-n-scout", "unit-n-litan"},
  {"train", "unit-n-shipyard",
  "unit-n-oil-tanker", "unit-n-mtila", "unit-n-subwater"},

  --
  -- Building can upgrade which upgrades.
  --
  {"upgrade", "unit-n-colony-center", "unit-n-town-center"},
  {"upgrade", "unit-n-town-center", "unit-n-city-center"},
  {"upgrade", "unit-n-watch-tower",
  "unit-n-guard-tower", "unit-n-missile-tower"},
  --
  -- Building can research which spells or upgrades.
  --

  -- NOTE: Axes here represent Nagoran blasters.

  {"research", "unit-n-armory",
  "upgrade-battle-axe1", "upgrade-battle-axe2",
  "upgrade-orc-shield1", "upgrade-orc-shield2",
  "upgrade-catapult1", "upgrade-catapult2"},
  {"research", "unit-n-blaster-factory",
  "upgrade-berserker", "upgrade-throwing-axe1", "upgrade-throwing-axe2"},
  {"research", "unit-n-hospital",
  "upgrade-healing"},
  {"research", "unit-n-mw-factory",
  "upgrade-haste", "upgrade-whirlwind",
  "upgrade-unholy-armor"},
  {"research", "unit-n-foundry",
  "upgrade-orc-ship-cannon1", "upgrade-orc-ship-cannon2",
  "upgrade-orc-ship-armor1", "upgrade-orc-ship-armor2"},
  {"research", "unit-n-star-building",
  "upgrade-death-and-decay"},



  --
  -- Unit can build which units.
  --

  {"repair", "unit-n-worker",
  "unit-n-farm", "unit-n-barracks", "unit-n-colony-center", "unit-n-town-center",
  "unit-n-city-center", "unit-n-blaster-factory", "unit-n-armory",
  "unit-n-watch-tower", "unit-n-guard-tower", "unit-n-missile-tower",
  "unit-orc-wall", "unit-n-shipyard", "unit-n-foundry", "unit-n-refinery",
  "unit-n-a-factory", "unit-n-factory", "unit-n-mw-factory",
  "unit-n-hospital", "unit-n-star-building", "unit-n-transport", "unit-n-mxet", "unit-n-kxet", "unit-n-adv-kxet", "unit-n-rocket" , "unit-n-hero1", "unit-n-interceptor", "unit-n-scout", "unit-n-litan", "unit-n-hero3", "unit-n-hero5", "unit-n-vision", "unit-cannon1", "unit-farm", "unit-palace1", "unit-building1"},

  --
  -- Reduce unit limits.
  --
  {"unit-limit", "unit-n-farm", "food"},
  --
  -- Equivalence of units for the resource manager.
  --
  {"unit-equiv", "unit-n-colony-center",
  "unit-n-town-center", "unit-n-city-center"},
  {"unit-equiv", "unit-n-town-center",
  "unit-n-city-center"},


-- Nagoran Guards can trade their swords for blasters.

  {"unit-equiv", "unit-n-guard",
  "unit-n-armed-guard"})


-- No advanced Kxets, thanks.
--  {"unit-equiv", "unit-n-kxet",
--  "unit-n-adv-kxet"} )




--
--  City-center of the current race.
--
function AiCityCenter()
  if (AiGetRace() == race1) then
    return "unit-h-outpost"
  else
    return "unit-n-colony-center"
  end
end

--
--  Better city-center of the current race.
--
function AiBetterCityCenter()
  if (AiGetRace() == race1) then
    return "unit-h-fort"
  else
    return "unit-n-town-center"
  end
end

--
--  Best city-center of the current race.
--
function AiBestCityCenter()
  if (AiGetRace() == race1) then
    return "unit-h-hq"
  else
    return "unit-n-city-center"
  end
end

--
--  Worker of the current race.
--
function AiWorker()
  if (AiGetRace() == race1) then
    return "unit-h-worker"
  else
    return "unit-n-worker"
  end
end

--
--  Lumber mill of the current race.
--
function AiLumberMill()
  if (AiGetRace() == race1) then
    return "unit-h-laser-factory"
  else
    return "unit-n-blaster-factory"
  end
end

--
--  Blacksmith of the current race.
--
function AiBlacksmith()
  if (AiGetRace() == race1) then
    return "unit-h-armory"
  else
    return "unit-n-armory"
  end
end

--
--  Upgrade armor 1 of the current race.
--
function AiUpgradeArmor1()
  if (AiGetRace() == race1) then
    return "upgrade-human-shield1"
  else
    return "upgrade-orc-shield1"
  end
end

--
--  Upgrade armor 2 of the current race.
--
function AiUpgradeArmor2()
  if (AiGetRace() == race1) then
    return "upgrade-human-shield2"
  else
    return "upgrade-orc-shield2"
  end
end

--
--  Upgrade weapon 1 of the current race.
--
function AiUpgradeWeapon1()
  if (AiGetRace() == race1) then
    return "upgrade-sword1"
  else
    return "upgrade-battle-axe1"
  end
end

--
--  Upgrade weapon 2 of the current race.
--
function AiUpgradeWeapon2()
  if (AiGetRace() == race1) then
    return "upgrade-sword2"
  else
    return "upgrade-battle-axe2"
  end
end

--
--  Upgrade missile 1 of the current race.
--
function AiUpgradeMissile1()
  if (AiGetRace() == race1) then
    return "upgrade-arrow1"
  else
    return "upgrade-throwing-axe1"
  end
end

--
--  Upgrade missile 2 of the current race.
--
function AiUpgradeMissile2()
  if (AiGetRace() == race1) then
    return "upgrade-arrow2"
  else
    return "upgrade-throwing-axe2"
  end
end

--
--  Upgrade catapult 1 of the current race.
--
function AiUpgradeCatapult1()
  if (AiGetRace() == race1) then
    return "upgrade-ballista1"
  else
    return "upgrade-catapult1"
  end
end

--
--  Upgrade catapult 2 of the current race.
--
function AiUpgradeCatapult2()
  if (AiGetRace() == race1) then
    return "upgrade-ballista2"
  else
    return "upgrade-catapult2"
  end
end

--
--  Research of the current race.
--
function AiScientific()
  if (AiGetRace() == race1) then
    return "unit-h-a-factory"
  else
    return "unit-n-a-factory"
  end
end

--
--  Stables of the current race.
--
function AiStables()
  if (AiGetRace() == race1) then
    return "unit-h-factory"
  else
    return "unit-n-factory"
  end
end

--
--  Temple of the current race.
--
function AiTemple()
  if (AiGetRace() == race1) then
    return "unit-h-hospital"
  else
    return "unit-n-hospital"
  end
end

--
--  Mage tower of the current race.
--
function AiMageTower()
  if (AiGetRace() == race1) then
    return "unit-h-rubitek-armory"
  else
    return "unit-n-mw-factory"
  end
end

--
--  Airport of the current race.
--
function AiAirport()
  if (AiGetRace() == race1) then
    return "unit-h-starport"
  else
    return "unit-n-star-building"
  end
end

--
--  Barracks of the current race.
--
function AiBarracks()
  if (AiGetRace() == race1) then
    return "unit-h-barracks"
  else
    return "unit-n-barracks"
  end
end

--
--  Soldier of the current race.
--
function AiSoldier()
  if (AiGetRace() == race1) then
    return "unit-h-soldier"
  else
    return "unit-n-guard"
  end
end

--
--  Improved Shooter of the current race.
--
function AiShooter()
  if (AiGetRace() == race1) then
    return "unit-h-tek-sniper"
  else
    return "unit-n-warrior"
  end
end

--
--  Shooter of the current race.
--


-- No elite shooter for Humans.  Nagoran guards can upgrade from swords to blasters.

function AiEliteShooter()

if (AiGetRace() == race2) then
  return "unit-n-armed-guard"
 end

end


--
--  Cavalry of the current race.
--
function AiCavalry()
  if (AiGetRace() == race1) then
    return "unit-h-armor"
  else
    return "unit-n-kxet"
  end
end


--
--  Cavalry mages of the current race.
--


-- NO Cavalry mages available/used in Astroseries. Armor and Kxet is unique.

function AiCavalryMage()

-- Empty, no cavalry mage.

end



--
--  Mage of the current race.
--
function AiMage()
  if (AiGetRace() == race1) then
    return "unit-h-rubitek"
  else
    return "unit-n-sp-warrior"
  end
end

--
--  Catapult of the current race.
--
function AiCatapult()
  if (AiGetRace() == race1) then
    return "unit-h-tank"
  else
    return "unit-n-mxet"
  end
end

--
--  Scout of the current race.
--

function AiScout()
  if (AiGetRace() == race1) then
    return "unit-h-scanner"
  else
    return "unit-n-vision"
  end
end

--
--  Flyer of the current race.
--
function AiFlyer()
  if (AiGetRace() == race1) then
    return "unit-h-manta"
  else
    return "unit-n-scout"
  end
end

--
--  Tower of the current race.
--
function AiTower()
  if (AiGetRace() == race1) then
    return "unit-h-watch-tower"
  else
    return "unit-n-watch-tower"
  end
end

--
--  Guard-Tower of the current race.
--
function AiGuardTower()
  if (AiGetRace() == race1) then
    return "unit-h-guard-tower"
  else
    return "unit-n-guard-tower"
  end
end

--
--  Cannon-Tower of the current race.
--
function AiCannonTower()
  if (AiGetRace() == race1) then
    return "unit-h-missile-tower"
  else
    return "unit-n-missile-tower"
  end
end

--
--  Harbor of the current race.
--
function AiHarbor()
  if (AiGetRace() == race1) then
    return "unit-h-shipyard"
  else
    return "unit-n-shipyard"
  end
end

--
--  Refinery of the current race.
--
function AiRefinery()
  if (AiGetRace() == race1) then
    return "unit-h-refinery"
  else
    return "unit-n-refinery"
  end
end

--
--  Foundry of the current race.
--
function AiFoundry()
  if (AiGetRace() == race1) then
    return "unit-h-foundry"
  else
    return "unit-n-foundry"
  end
end

--
--  Ship armor 1 of the current race.
--
function AiUpgradeShipArmor1()
  if (AiGetRace() == race1) then
    return "upgrade-human-ship-armor1"
  else
    return "upgrade-orc-ship-armor1"
  end
end

--
--  Ship armor 2 of the current race.
--
function AiUpgradeShipArmor2()
  if (AiGetRace() == race1) then
    return "upgrade-human-ship-armor2"
  else
    return "upgrade-orc-ship-armor2"
  end
end

--
--  Ship weapon 1 of the current race.
--
function AiUpgradeShipCannon1()
  if (AiGetRace() == race1) then
    return "upgrade-human-ship-cannon1"
  else
    return "upgrade-orc-ship-cannon1"
  end
end

--
--  Ship weapon 2 of the current race.
--
function AiUpgradeShipCannon2()
  if (AiGetRace() == race1) then
    return "upgrade-human-ship-cannon2"
  else
    return "upgrade-orc-ship-cannon2"
  end
end

--
--  Platform of the current race.
--
function AiPlatform()
  if (AiGetRace() == race1) then
    return "unit-h-oil-platform"
  else
    return "unit-n-oil-platform"
  end
end

--
--  Tanker of the current race.
--
function AiTanker()
  if (AiGetRace() == race1) then
    return "unit-h-oil-tanker"
  else
    return "unit-n-oil-tanker"
  end
end

--
--  Submarine of the current race.
--
function AiSubmarine()
  if (AiGetRace() == race1) then
    return "unit-h-submarine"
  else
    return "unit-n-subwater"
  end
end

--
--  Destroyer of the current race.
--
function AiDestroyer()
  if (AiGetRace() == race1) then
    return "unit-h-naval-frigate"
  else
    return "unit-n-mtila"
  end
end

--
--  Battleship of the current race.
--
function AiBattleship()
  if (AiGetRace() == race1) then
    return "unit-h-sbc"
  else
    return "unit-n-litan"
  end
end

--
--  Transporter of the current race.
--
function AiTransporter()
  if (AiGetRace() == race1) then
    return "unit-h-transport"
  else
    return "unit-n-transport"
  end
end

--
--  1st Elite Shooter of the current race.
--
function AiUpgradeEliteShooter()
  if (AiGetRace() == race1) then
    return "upgrade-ranger"
  else
    return "upgrade-berserker"
  end
end

--
--  1st Upgrade of elite Shooter of the current race.
--
function AiUpgradeEliteShooter1()
  if (AiGetRace() == race1) then
    return "upgrade-ranger-scouting"
  else
    return "upgrade-berserker-scouting"
  end
end

--
--  2nd Upgrade of elite Shooter of the current race.
--
function AiUpgradeEliteShooter2()
  if (AiGetRace() == race1) then
    return "upgrade-longbow"
  else
    return "upgrade-light-axes"
  end
end

--
--  3th Upgrade of elite Shooter of the current race.
--
function AiUpgradeEliteShooter3()
  if (AiGetRace() == race1) then
    return "upgrade-ranger-marksmanship"
  else
    return "upgrade-berserker-regeneration"
  end
end

--
--  Upgrade cavalry to cavalry mages of the current race.
--
function AiUpgradeCavalryMage()
  if (AiGetRace() == race1) then
    return "upgrade-paladin"
  else
    return "upgrade-ogre-mage"
  end
end

--
--  1st spell of the cavalry mages of the current race.
--
function AiCavalryMageSpell1()
  if (AiGetRace() == race1) then
    return "upgrade-healing"
  else
    return "upgrade-bloodlust"
  end
end

--
--  2nd spell of the cavalry mages of the current race.
--
function AiCavalryMageSpell2()
  if (AiGetRace() == race1) then
    return "upgrade-exorcism"
  else
    return "upgrade-runes"
  end
end

--
--  1st spell of the mages of the current race.
--
function AiMageSpell1()
  if (AiGetRace() == race1) then
    return "upgrade-slow"
  else
    return "upgrade-haste"
  end
end

--
--  2nd spell of the mages of the current race.
--
function AiMageSpell2()
  if (AiGetRace() == race1) then
    return "upgrade-flame-shield"
  else
    return "upgrade-raise-dead"
  end
end

--
--  3th spell of the mages of the current race.
--
function AiMageSpell3()
  if (AiGetRace() == race1) then
    return "upgrade-invisibility"
  else
    return "upgrade-whirlwind"
  end
end

--
--  4th spell of the mages of the current race.
--
function AiMageSpell4()
  if (AiGetRace() == race1) then
    return "upgrade-invisibility"
  else
    return "upgrade-unholy-armor"
  end
end

--
--  5th spell of the mages of the current race.
--
function AiMageSpell5()
  if (AiGetRace() == race1) then
    return "upgrade-blizzard"
  else
    return "upgrade-blizzard"
  end
end





-- NOTE: Astroseries addition
-- Hopefully this will not cause any bugs
-- This is supposed to make the AI employ the smaller air fighters also

function AiFighters()
  if (AiGetRace() == race1) then
    return "unit-h-helifly"
  else
    return "unit-n-interceptor"
  end
end






--
--  Load the actual individual scripts.
--

Load("scripts/ai/passive.lua")
Load("scripts/ai/air_attack.lua")
Load("scripts/ai/land_attack.lua")
Load("scripts/ai/sea_attack.lua")
Load("scripts/ai/campaign.lua")







