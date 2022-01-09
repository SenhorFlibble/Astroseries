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
--	campaign1.ccl	-	Define the Nagoran campaign 1.
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
--	$Id: campaign1.lua,v 1.1 2003/12/11 21:52:01 jsalmon3 Exp $
--
-- =============================================================================
--	Define the campaign
--
--	(define-campaign 'ident 'name "name" 'campaign (list elements)
--



DefineCampaign("orc", "name", "~!Nagoran Campaign",
  "campaign", {
	


"show-picture", {
	  "image", "campaigns/nagoran/interface/map1.png",
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
	    "text", "Mintros Star System"}},


	"play-level", "campaigns/nagoran/level01n.cm",


"show-picture", {
	  "image", "campaigns/nagoran/interface/map2.png",
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
	    "text", "For the Nagoran Empire"}},


	"play-level", "campaigns/nagoran/level02n.cm",
	"play-level", "campaigns/nagoran/level03n.cm",


"show-picture", {
	  "image", "campaigns/nagoran/interface/map3.png",
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
	    "text", "Beta Dimus I"}},


	"play-level", "campaigns/nagoran/level04n.cm",
	"play-level", "campaigns/nagoran/level05n.cm",
	"play-level", "campaigns/nagoran/level06n.cm",


"show-picture", {
	  "image", "campaigns/nagoran/interface/map4.png",
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
	    "text", "Grom"}},


	"play-level", "campaigns/nagoran/level07n.cm",
	"play-level", "campaigns/nagoran/level08n.cm",


"show-picture", {
	  "image", "campaigns/nagoran/interface/map5.png",
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
	    "text", "Phase V"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Skull Asteroid"}},


	"play-level", "campaigns/nagoran/level09n.cm",


"show-picture", {
	  "image", "campaigns/nagoran/interface/map6.png",
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
	    "text", "Phase VI"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Moltok"}},


	"play-level", "campaigns/nagoran/level10n.cm",
	"play-level", "campaigns/nagoran/level11n.cm",


"show-picture", {
	  "image", "campaigns/nagoran/interface/map7.png",
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
	    "text", "Phase VII"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "The Massacre of Keloom"}},


	"play-level", "campaigns/nagoran/level12n.cm",




-- The next picture use the same picture for Arkidos as the humans do
-- and this is why the next image is obtained from the human directory

"show-picture", {
	  "image", "campaigns/human/interface/map5.png",
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
	    "text", "Phase VIII"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Arkidos Star System"}},


	"play-level", "campaigns/nagoran/level13n.cm",
	"play-level", "campaigns/nagoran/level14n.cm", 
	"play-level", "campaigns/nagoran/level15n.cm", 



"show-picture", {
	  "image", "campaigns/nagoran/interface/arkidos_destroyed.png",
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
	    "text", "Mega Starway"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "Arkidos is reduced to an ash planet"}},



	"play-level", "campaigns/nagoran/level16n.cm" } )




