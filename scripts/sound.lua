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
--      sound.lua - Define the used sounds.
--
--      (c) Copyright 1999-2004 by Fabrice Rossi, Lutz Sammer, and Jimmy Salmon
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
--      $Id: sound.lua,v 1.5 2004/05/31 19:57:50 jsalmon3 Exp $
--
--
--



--	Uncomment this to enable threaded sound
-- SoundThread()

------------------------------------------------------------------------------
--	Music part

------------------------------------------------------------------------------
--	MusicStopped is called if the current music is finished.
--
--		This is a random music player demo
--

local playlist = {
  "music/default.mod"
}

function MusicStopped()
  if (table.getn(playlist) ~= 0) then
    PlayMusic(playlist[math.random(table.getn(playlist))])
  end
end

------------------------------------------------------------------------------
--	(set-cd-mode!) set how your CD is played.
--		all	plays all tracks
--		random	plays random tracks
--		defined	play according to playlist below
--		off	turns cd player off
--SetCdMode("all")
--SetCdMode("random") 
--SetCdMode("defined")
SetCdMode("off")

------------------------------------------------------------------------------
--	(define-play-sections) set the playlist for different 
--			       sections of the game
--
DefinePlaySections("type", "main-menu",
    "cd", {"order", "all", "tracks", {15}})
DefinePlaySections("race", "human", "type", "game",
    "cd", {"order", "random", "tracks", {3, 4, 5, 6}})
DefinePlaySections("race", "human", "type", "briefing",
    "cd", {"order", "all", "tracks", {7}})
DefinePlaySections("race", "human", "type", "stats-victory",
    "cd", {"order", "all", "tracks", {8}})
DefinePlaySections("race", "human", "type", "stats-defeat",
    "cd", {"order", "all", "tracks", {9}})
DefinePlaySections("race", "orc", "type", "game",
    "cd", {"order", "random", "tracks", {10, 11, 12, 13, 14}})
DefinePlaySections("race", "orc", "type", "briefing",
    "cd", {"order", "all", "tracks", {15}})
DefinePlaySections("race", "orc", "type", "stats-victory",
    "cd", {"order", "all", "tracks", {16}})
DefinePlaySections("race", "orc", "type", "stats-defeat",
    "cd", {"order", "all", "tracks", {17}})

------------------------------------------------------------------------------
--	Define sounds later used
--
sound_click = MakeSound("click", "ui/click.wav")

------------------------------------------------------------------------------
--	Define simple sounds. (FIXME: somebody must clean the order.)
--








-- Astroseries sounds

-- Default Sound

MakeSound("default-sound", "default.wav")




-- Generic sounds

MakeSound("explosion", "misc/explosion.wav")
MakeSound("default-impact", "missiles/impact.wav")



-- Human common voices


MakeSound("human-base-attacked", "human/voices/ctattack.wav")
MakeSound("human-ready", "human/voices/ready.wav")
MakeSound("human-tank-ready", "human/voices/tankrdy.wav")
MakeSound("human-selected",
	{"human/voices/sel1.wav", "human/voices/sel2.wav", "human/voices/sel3.wav"})
MakeSound("human-ack",
	{"human/voices/ack1.wav", "human/voices/ack2.wav"})
MakeSound("human-under-fire",
        {"human/voices/unfire1.wav", "human/voices/unfire2.wav"})
MakeSound("human-scream", "human/voices/scream.wav")



-- Voices of the Master

MakeSound("master-selected",
	{"human/voices/master/sel1.wav", "human/voices/master/sel2.wav", "human/voices/master/sel3.wav"})
MakeSound("master-ack",
	{"human/voices/master/ack1.wav", "human/voices/master/ack2.wav", "human/voices/master/ack3.wav"})


-- Irina

MakeSound("irina-ack", "human/voices/irina/ack1.wav")




-- Human worker voices

MakeSound("human-worker-ready", "human/voices/worker/ready.wav")
MakeSound("human-worker-selected", "human/voices/worker/sel1.wav")
MakeSound("human-worker-ack", "human/voices/worker/ack1.wav")

MakeSound("human-building-done", "human/voices/worker/workdone.wav")



MakeSound("treechop",
	{"misc/tree_chopping/tc1.wav", "misc/tree_chopping/tc2.wav", "misc/tree_chopping/tc3.wav", "misc/tree_chopping/tc4.wav"})



MakeSound("minerals-mine", "neutral/buildings/minerals_mine.wav")


	




-- Nagoran common voices


MakeSound("nagoran-selected",
	{"nagoran/voices/sel1.wav", "nagoran/voices/sel2.wav", "nagoran/voices/sel3.wav"})
MakeSound("nagoran-ack",
	{"nagoran/voices/ack1.wav", "nagoran/voices/ack2.wav"})

MakeSound("nagoran-scream", "nagoran/voices/scream.wav")

MakeSound("nagoran-ready", "nagoran/voices/ready.wav")


MakeSound("nagoran-under-fire",
        {"nagoran/voices/unfire1.wav", "nagoran/voices/unfire2.wav"})


MakeSound("nagoran-base-attacked", "nagoran/voices/ctattack.wav")



-- Nagoran worker voices


MakeSound("nagoran-building-done", "nagoran/voices/worker/workdone.wav")




-- Weapons (of all races)

MakeSound("sword", "missiles/sword.wav")
MakeSound("mgun", "missiles/mgun.wav")
MakeSound("laser", "missiles/laser.wav")
MakeSound("rocket", "missiles/rocket.wav")
MakeSound("pistol", "missiles/pistol.wav")
MakeSound("hot_blade", "missiles/hot_blade.wav")
MakeSound("blaster", "missiles/blaster.wav")
MakeSound("shell", "missiles/shell.wav")



-- The spells (or advanced devices, as they are known in Astroseries...)

MakeSound("default-spell", "spells/spell.wav")
MakeSound("flame", "spells/flame.wav")
MakeSound("blizzard", "spells/blizzard.wav")
MakeSound("healing", "spells/heal.wav")
MakeSound("slowdown", "spells/slowdown.wav")
MakeSound("nuke", "spells/nuke.wav")




-- Buildings

MakeSound("building-selected", "buildings/building.wav")


MakeSound("building-destroyed",
	{"misc/building_explosion/be1.wav", "misc/building_explosion/be2.wav", "misc/building_explosion/be3.wav", "misc/building_explosion/be4.wav"})




-- Others

MakeSound("fsel", "neutral/fsel.wav")
MakeSound("mscream", "neutral/mscream.wav")
MakeSound("stdack", "neutral/stdack.wav")
MakeSound("stdhelp", "neutral/stdhelp.wav")
MakeSound("stdrdy", "neutral/stdrdy.wav")
MakeSound("stdsel", "neutral/stdsel.wav")
MakeSound("fack", "neutral/fack.wav")
MakeSound("fhelp", "neutral/fhelp.wav")
MakeSound("frdy", "neutral/frdy.wav")
MakeSound("fscream", "neutral/fscream.wav")
MakeSound("base-attacked", "neutral/cityhelp.wav")




-- End of Astroseries sounds








------------------------------------------------------------------------------
--	Define simple human sounds.  - Not used in Astroseries.
--
MakeSound("basic human voices ready", "default.wav")
MakeSound("basic human voices help 1", "default.wav")
MakeSound("basic human voices help 2", "default.wav")
MakeSound("basic human voices dead", "default.wav")

------------------------------------------------------------------------------
--	Define simple human building.
--

------------------------------------------------------------------------------
--	Define simple orc sounds.
--
MakeSound("basic orc voices ready", "default.wav")
MakeSound("basic orc voices help 1", "default.wav")
MakeSound("basic orc voices help 2", "default.wav")
MakeSound("basic orc voices dead", "default.wav")

------------------------------------------------------------------------------
--	Define simple orc building.
--

------------------------------------------------------------------------------
--	Define simple misc sounds.
--

-- EXCEPTIONS

MakeSound("building construction", "misc/building_construction.wav")
MakeSound("ship sinking", "ships/sinking.wav")



MakeSound("catapult-ballista movement",	"default.wav")












-- BUNCH OF ORIGINAL SOUNDS REMOVED HERE
-- (They have been replaced with new sounds)




--	Define sounds used by game
--
DefineGameSounds(

  "placement-error", MakeSound("placement error", "ui/placement_error.wav"),
  "placement-success", MakeSound("placement success", "ui/placement_success.wav"),
  "click", sound_click,

-- FIXME: Not ready
--  "transport-docking",
--  "building-construction",

"work-complete", {"human", MakeSound("basic human voices work complete", "human/voices/worker/workdone.wav")},
"work-complete", {"orc", MakeSound("basic orc voices work complete", "nagoran/voices/worker/workdone.wav")},


  "rescue", {"human", MakeSound("human rescue", "rescue.wav")},
  "rescue", {"orc", MakeSound("orc rescue", "rescue.wav")} )

MakeSound("normalclick", "ui/click.wav")
MakeSound("highclick", "ui/highclick.wav")
MakeSound("statsthump", "ui/statsthump.wav")


