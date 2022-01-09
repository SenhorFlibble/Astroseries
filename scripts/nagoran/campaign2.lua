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
--	campaign2.ccl	-	Define the undefined campaign 2.
--
--	(c) Copyright 2002 by Lutz Sammer
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
--	$Id: campaign2.lua,v 1.1 2003/12/11 21:52:01 jsalmon3 Exp $



-- This campaign not used in Astroseries. (yet ???)

DefineCampaign("orc-exp", "name", "O~!rc expansion levels",
  "campaign", {
	"show-picture", {
	  "image", "campaigns/orc-exp/interface/unused.png",
	  "fade-in", 30 * 2,
	  "fade-out", 30 * 2,
	  "display-time", 30 * 10,
	  "text", {
	    "font", "large-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 67,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Phase I"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "unused"}},
	"play-level", "campaigns/orc-exp/levelx01o.cm",
	"play-level", "campaigns/orc-exp/levelx02o.cm",
	"play-level", "campaigns/orc-exp/levelx03o.cm",
	"show-picture", {
	  "image", "campaigns/orc-exp/interface/unused.png",
	  "fade-in", 30 * 2,
	  "fade-out", 30 * 2,
	  "display-time", 30 * 10,
	  "text", {
	    "font", "large-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 67,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Phase II"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "unused"}},
	"play-level", "campaigns/orc-exp/levelx04o.cm",
	"play-level", "campaigns/orc-exp/levelx05o.cm",
	"play-level", "campaigns/orc-exp/levelx06o.cm",
	"show-picture", {
	  "image", "campaigns/orc-exp/interface/unused.png",
	  "fade-in", 30 * 2,
	  "fade-out", 30 * 2,
	  "display-time", 30 * 10,
	  "text", {
	    "font", "large-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 67,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Phase III"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "unused"}},
	"play-level", "campaigns/orc-exp/levelx07o.cm",
	"play-level", "campaigns/orc-exp/levelx08o.cm",
	"play-level", "campaigns/orc-exp/levelx09o.cm",
	"show-picture", {
	  "image", "campaigns/orc-exp/interface/unused.png",
	  "fade-in", 30 * 2,
	  "fade-out", 30 * 2,
	  "display-time", 30 * 10,
	  "text", {
	    "font", "large-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 67,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Phase IV"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "unused"}},
	"play-level", "campaigns/orc-exp/levelx10o.cm",
	"play-level", "campaigns/orc-exp/levelx11o.cm",
	"play-level", "campaigns/orc-exp/levelx12o.cm" } )
