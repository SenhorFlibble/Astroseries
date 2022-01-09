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
--      ranks.lua - Ranks for all of the races.
--
--      (c) Copyright 2002-2004 by Jimmy Salmon.
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
--      $Id: ranks.lua,v 1.3 2004/01/31 05:59:04 jsalmon3 Exp $

--=============================================================================
--  Define ranks for a race.
--
--  DefineRanks(race, {score, rank, [score, rank] ...})
--
--  race   The race to define the ranks for.
--  score  If the player's score is greater than or equal to this number then 
--         the rank is displayed.  Scores are expected to be sorted in 
--         increasing order.
--  rank   The rank that gets displayed.
--



DefineRanks("human", {
  0, "Corporal",
  2000, "Sergeant",
  5000, "Sub-Lieutenant",
  8000, "Lieutenant",
  18000, "Captain",
  28000, "Commander",
  40000, "Major",
  55000, "First-Major",
  70000, "Sub-Colonel",
  85000, "Colonel",
  105000, "Colonel-Commander",
  125000, "First-Colonel",
  145000, "Vice-General",
  180000, "General",
  250000, "High-General"
})




-- Note: The word orc here represents the Nagorans.
-- The race name was not modified because we are not sure if it is hard coded
-- in the engine.


DefineRanks("orc", {
  0, "Fighter",
  2000, "Fighter-Leader",
  5000, "Guardian",
  8000, "Guardian-Leader",
  18000, "Warrior",
  28000, "Warrior-Leader",
  40000, "First-Warrior",
  55000, "Warlord",
  70000, "High-Warlord",
  85000, "Defender",
  105000, "High-Defender",
  125000, "Master",
  145000, "High-Master",
  180000, "Otmau",
  250000, "Mau"
})




