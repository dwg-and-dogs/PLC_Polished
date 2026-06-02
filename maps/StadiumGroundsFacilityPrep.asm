StadiumGroundsFacilityPrep_MapScriptHeader:
	def_scene_scripts

	
	def_callbacks
	
	
	def_warp_events
	; warp to stadium grounds 
	
	def_coord_events 


	def_bg_events
	; trophy for easy mode
	; trophy for normal mode
	; trophy for hard mode
	; trophy for beating with only one in the party 



	def_object_events ; depending on time of day? 
	object_event 15, 20, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityNatuScript, -1
	object_event 14, 10, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumGroundsFaciltyPrepClerkScript, -1 ; todo
	object_event 11, 14, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityUrsulaScript, -1 ; todo 
	object_event 29, 20, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilitySilasScript, -1 ; todo 
	object_event 12, 14, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityBethScript, -1 ; todo 
	object_event 26, 19, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilitySandraScript, -1 ; todo 
	object_event 28, 18, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilitySybilScript, -1 ; todo 
	object_event 16, 12, SPRITE_BRIGADER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityTysonScript, -1 ; todo 
	object_event 16, 18, SPRITE_NOMAD_F, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FacilityNomadFScript, -1	; todo only appears if you return the nomad 
	object_event 25, 17, SPRITE_BARBEAU, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FacilityBarbeauScript, -1  ; todo 
	object_event 12, 20, SPRITE_KANNA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityPetraScript, -1  ; todo 
	object_event 12, 18, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityAmosScript, -1 ; todo 
	object_event 12, 18, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityAmosScript, -1 ; todo 
	object_event  3, 19, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FacilityPiperScript, -1 ; todo 


	object_const_def


FacilityNatuScript:
	opentext
	writetext NatuFacilityText
	promptbutton
	special PokemonCenterPC
	endtext
	end

NatuFacilityText:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."
	done	

StadiumGroundsFaciltyPrepClerkScript:
	faceplayer
	opentext
	writetext FacilityPrep_ExplainText
	waitbutton
	yesorno
	iffalse .NoExplain
	writetext FacilityPrep_ExplainFullText
.NoExplain:
	; check if > 1 in your party
	; if > 1, .PleaseReducePartySize
	writetext FacilityPrep_AreYouReadyText
	waitbutton
	yesorno
	iffalse_jumptext FacilityPrep_GetReadyText
	; movement, warp you and the clerk to the Facility 
	end
	
FacilityPrep_ExplainText:
	text "Welcome to the"
	line "Gauldenrod"
	cont "Stadium!"
	
	para "It's a true test"
	line "for trainers to"
	para "demonstrate their"
	line "skills in battle"
	para "and in catching"
	line "#mon."
	
	para "Would you like me"
	line "to explain how"
	cont "it works?"
	done

FacilityPrep_ExplainFullText:
	text "You enter with 1"
	line "#mon and try"
	para "to get through"
	line "5 rounds."
	
	para "Each round has"
	line "the following"
	cont "structure:"
	
	para "First, you will"
	line "battle a #mon"
	para "that you have the"
	line "option to catch."
	
	para "If you fail to"
	line "catch it, then"
	para "you will have one"
	line "more chance to"
	para "catch a different"
	line "#mon."
	
	para "Then your team is"
	line "healed by one of"
	cont "our clerks,"
	
	para "and you can set"
	line "your new team's"
	para "items, moves,"
	line "and party order."
	
	para "Then there is a"
	line "gauntlet of three"
	para "ordinary trainers"
	line "and then a final"
	para "boss for the"
	line "round."
	
	para "You may enter at"
	line "whatever level"
	para "you like, but I"
	line "suggest Lv. 100."
	done

FacilityPrep_AreYouReadyText:
	text "Are you ready?"
	done

FacilityPrep_GetReadyText:
	text "OK, you need"
	line "more time."
	done
