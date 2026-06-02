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



	def_object_events ; depending on day of the week 
	; clerk
	; rematch ursula, hollis
	; beth, sandra
	; sybil
	; nomadf mom, barbeau 
	; petra
	; tyson 
	; amos
	; kimono girl from celebi 
	; kurt's natu 
	
	object_const_def




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
	done

FacilityPrep_AreYouReadyText:
	text "Are you ready?"
	done

FacilityPrep_GetReadyText:
	text "OK, you need"
	line "more time."
	done
