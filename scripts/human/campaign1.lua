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
--	campaign1.ccl	-	Define the Human campaign 1.
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
--	$Id: campaign1.lua,v 1.1 2003/11/30 05:41:20 jsalmon3 Exp $
--
-- =============================================================================
--	Define the campaign
--
--	(define-campaign 'ident 'name "name" 'campaign (list elements)
--



DefineCampaign("human", "name", "~!I.U. Campaign",
  "campaign", {



"show-picture", {
	  "image", "campaigns/human/interface/map1.png",
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
	    "text", "The Agamenides Star System"}},


	"play-level", "campaigns/human/level01h.cm",
	"play-level", "campaigns/human/level02h.cm",
	"play-level", "campaigns/human/level03h.cm",
	"play-level", "campaigns/human/level04h.cm",


"show-picture", {
	  "image", "campaigns/human/interface/map2.png",
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
	    "text", "The Dufisto Star System"}},


	"play-level", "campaigns/human/level05h.cm",
	"play-level", "campaigns/human/level06h.cm",
	"play-level", "campaigns/human/level07h.cm",
	"play-level", "campaigns/human/level08h.cm",


"show-picture", {
	  "image", "campaigns/human/interface/map3.png",
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
	    "text", "Rebellion in Rotik IV"}},


	"play-level", "campaigns/human/level09h.cm",
	"play-level", "campaigns/human/level10h.cm",
	"play-level", "campaigns/human/level11h.cm",


"show-picture", {
	  "image", "campaigns/human/interface/map4.png",
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
	    "text", "The Fosforus Star System"}},


	"play-level", "campaigns/human/level12h.cm",
	"play-level", "campaigns/human/level13h.cm",


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
	    "text", "Phase V"},
	  "text", {
	    "font", "small-title",
	    "x", 640 / 2,
	    "y", (480 / 2) - 25,
	    "width", 640,
	    "height", 0,
	    "align", "center",
	    "text", "The Arkidos Invasion"}},


	"play-level", "campaigns/human/level14h.cm",
	"play-level", "campaigns/human/level15h.cm",
	"play-level", "campaigns/human/level16h.cm" } )




