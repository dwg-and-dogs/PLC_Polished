DragonsDenCredit_MapScriptHeader: 
	def_scene_scripts
	scene_script DragonsDenCreditScene

	def_callbacks


	def_warp_events
	warp_event 11, 13, DEBUG_ROOM, 1 ; warp into 


	def_coord_events



	def_bg_events



	def_object_events
;	object_event 11, 11, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
;	object_event 12, 11, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, KINGDRA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
;	object_event 11, 13, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
;	object_event 11, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	

	object_const_def
;	const DEN_CREDITS_CLAIR
;	const DEN_CREDITS_KINGDRA
;	const DEN_CREDITS_STEVEN
;	const DEN_CREDITS_RIVAL


DragonsDenCreditScene:
	applyonemovement PLAYER, hide_object
	playmusic MUSIC_NONE
	
;	pause 60
	; steven steps forward 


	refreshscreen
	pokepic KINGDRA
	waitbutton
	closepokepic
	

	halloffame
	end


;Clair: 
;We've been as clear as the turquoise water around me.
;Johto cannot afford more exploitation, least of all from foreign investors. 

;???: 
;I don't represent Devon Corp.
;I'm here with a warning. 
;The Dragon trainers in my home region, led by Drake, 
;Are looking for something. 

;Clair: 
;What do you mean? 

;???: 
;I found a stone that can temporarily evolve a Metagross...
;I wanted to keep it hidden. 
;But Drake wants to find more. He's evolved an Altaria...  

;Clair: 
;Impossible! Altaria is a final form!
;This is against nature!

;???: 
;Drake sees it as a stronger form of tradition. 
;A way of going to a more pure form. 
;Hoenn is facing its own struggles, now. 
;A plague in more than one sense. 
;That's why he's looking for a way to even evolve...

;<appear Rival and Drake> 

;Rival:
;Surrender, Clair!
;The Den is surrounded!

;Drake:
;Good work, <RIVAL>. 
;I'll have those stones! 
;
;<Shock by ??? and Clair>
;
;Clair:





