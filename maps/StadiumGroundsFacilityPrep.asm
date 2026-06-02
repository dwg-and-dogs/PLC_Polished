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
	; time of day 
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
	object_event  3, 19, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FacilityPiperScript, -1 ; todo 
	; permanent 
	object_event 14, 10, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumGroundsFaciltyPrepClerkScript, -1 ; todo
	object_event 15, 20, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityNatuScript, -1

	object_const_def
	const FACILITY_URSULA
	const FACILITY_SILAS
	const FACILITY_BETH
	const FACILITY_SANDRA
	const FACILITY_SYBIL
	const FACILITY_TYSON
	const FACILITY_NOMAD_F
	const FACILITY_BARBEAU
	const FACILITY_PETRA
	const FACILITY_AMOS
	const FACILITY_PIPER

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

FacilityPiperScript:
	faceplayer
	opentext
	writetext FacilityPiperIntroText
	waitbutton
	writetext FacilityPiperQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityPiperRefusedText
	winlosstext FacilityPiperWinText, FacilityPiperLossText
	setlasttalked FACILITY_PIPER
	loadtrainer KIMONO_GIRL_1, PIPER ; CHECK THE PALETTE TODO 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityPiperAfter
	special HealPartyEvenForNuzlocke
	end

FacilityPiperIntroText:	
	text "TODO"
	done
	
FacilityPiperAfter:
	text "TODO"
	done

FacilityPiperQuestionText:
	text "TODO"
	done

FacilityPiperRefusedText:
	text "TODO"
	done

FacilityPiperWinText:
	text "TODO"
	done

FacilityPiperLossText:
	text "TODO"
	done
FacilityUrsulaScript:
	faceplayer
	opentext
	writetext FacilityUrsulaIntroText
	waitbutton
	writetext FacilityUrsulaQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityUrsulaRefusedText
	winlosstext FacilityUrsulaWinText, FacilityUrsulaLossText
	setlasttalked FACILITY_URSULA
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityUrsulaAfter
	special HealPartyEvenForNuzlocke
	end
FacilityUrsulaIntroText:
	text "TODO"
	done
FacilityUrsulaAfter:
	text "TODO"
	done
FacilityUrsulaQuestionText:
	text "TODO"
	done
FacilityUrsulaRefusedText:
	text "TODO"
	done
FacilityUrsulaWinText:
	text "TODO"
	done
FacilityUrsulaLossText:
	text "TODO"
	done

FacilitySilasScript:
	faceplayer
	opentext
	writetext FacilitySilasIntroText
	waitbutton
	writetext FacilitySilasQuestionText
	yesorno
	iffalse_jumpopenedtext FacilitySilasRefusedText
	winlosstext FacilitySilasWinText, FacilitySilasLossText
	setlasttalked FACILITY_SILAS
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilitySilasAfter
	special HealPartyEvenForNuzlocke
	end
FacilitySilasIntroText:
	text "TODO"
	done
FacilitySilasAfter:
	text "TODO"
	done
FacilitySilasQuestionText:
	text "TODO"
	done
FacilitySilasRefusedText:
	text "TODO"
	done
FacilitySilasWinText:
	text "TODO"
	done
FacilitySilasLossText:
	text "TODO"
	done

FacilityBethScript:
	faceplayer
	opentext
	writetext FacilityBethIntroText
	waitbutton
	writetext FacilityBethQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityBethRefusedText
	winlosstext FacilityBethWinText, FacilityBethLossText
	setlasttalked FACILITY_BETH
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityBethAfter
	special HealPartyEvenForNuzlocke
	end
FacilityBethIntroText:
	text "TODO"
	done
FacilityBethAfter:
	text "TODO"
	done
FacilityBethQuestionText:
	text "TODO"
	done
FacilityBethRefusedText:
	text "TODO"
	done
FacilityBethWinText:
	text "TODO"
	done
FacilityBethLossText:
	text "TODO"
	done

FacilitySandraScript:
	faceplayer
	opentext
	writetext FacilitySandraIntroText
	waitbutton
	writetext FacilitySandraQuestionText
	yesorno
	iffalse_jumpopenedtext FacilitySandraRefusedText
	winlosstext FacilitySandraWinText, FacilitySandraLossText
	setlasttalked FACILITY_SANDRA
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilitySandraAfter
	special HealPartyEvenForNuzlocke
	end
FacilitySandraIntroText:
	text "TODO"
	done
FacilitySandraAfter:
	text "TODO"
	done
FacilitySandraQuestionText:
	text "TODO"
	done
FacilitySandraRefusedText:
	text "TODO"
	done
FacilitySandraWinText:
	text "TODO"
	done
FacilitySandraLossText:
	text "TODO"
	done

FacilitySybilScript:
	faceplayer
	opentext
	writetext FacilitySybilIntroText
	waitbutton
	writetext FacilitySybilQuestionText
	yesorno
	iffalse_jumpopenedtext FacilitySybilRefusedText
	winlosstext FacilitySybilWinText, FacilitySybilLossText
	setlasttalked FACILITY_SYBIL
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilitySybilAfter
	special HealPartyEvenForNuzlocke
	end
FacilitySybilIntroText:
	text "TODO"
	done
FacilitySybilAfter:
	text "TODO"
	done
FacilitySybilQuestionText:
	text "TODO"
	done
FacilitySybilRefusedText:
	text "TODO"
	done
FacilitySybilWinText:
	text "TODO"
	done
FacilitySybilLossText:
	text "TODO"
	done

FacilityTysonScript:
	faceplayer
	opentext
	writetext FacilityTysonIntroText
	waitbutton
	writetext FacilityTysonQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityTysonRefusedText
	winlosstext FacilityTysonWinText, FacilityTysonLossText
	setlasttalked FACILITY_TYSON
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityTysonAfter
	special HealPartyEvenForNuzlocke
	end
FacilityTysonIntroText:
	text "TODO"
	done
FacilityTysonAfter:
	text "TODO"
	done
FacilityTysonQuestionText:
	text "TODO"
	done
FacilityTysonRefusedText:
	text "TODO"
	done
FacilityTysonWinText:
	text "TODO"
	done
FacilityTysonLossText:
	text "TODO"
	done

FacilityNomadFScript:
	faceplayer
	opentext
	writetext FacilityNomadFIntroText
	waitbutton
	writetext FacilityNomadFQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityNomadFRefusedText
	winlosstext FacilityNomadFWinText, FacilityNomadFLossText
	setlasttalked FACILITY_NOMAD_F
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityNomadFAfter
	special HealPartyEvenForNuzlocke
	end
FacilityNomadFIntroText:
	text "TODO"
	done
FacilityNomadFAfter:
	text "TODO"
	done
FacilityNomadFQuestionText:
	text "TODO"
	done
FacilityNomadFRefusedText:
	text "TODO"
	done
FacilityNomadFWinText:
	text "TODO"
	done
FacilityNomadFLossText:
	text "TODO"
	done

FacilityBarbeauScript:
	faceplayer
	opentext
	writetext FacilityBarbeauIntroText
	waitbutton
	writetext FacilityBarbeauQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityBarbeauRefusedText
	winlosstext FacilityBarbeauWinText, FacilityBarbeauLossText
	setlasttalked FACILITY_BARBEAU
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityBarbeauAfter
	special HealPartyEvenForNuzlocke
	end
FacilityBarbeauIntroText:
	text "TODO"
	done
FacilityBarbeauAfter:
	text "TODO"
	done
FacilityBarbeauQuestionText:
	text "TODO"
	done
FacilityBarbeauRefusedText:
	text "TODO"
	done
FacilityBarbeauWinText:
	text "TODO"
	done
FacilityBarbeauLossText:
	text "TODO"
	done

FacilityPetraScript:
	faceplayer
	opentext
	writetext FacilityPetraIntroText
	waitbutton
	writetext FacilityPetraQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityPetraRefusedText
	winlosstext FacilityPetraWinText, FacilityPetraLossText
	setlasttalked FACILITY_PETRA
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityPetraAfter
	special HealPartyEvenForNuzlocke
	end
FacilityPetraIntroText:
	text "TODO"
	done
FacilityPetraAfter:
	text "TODO"
	done
FacilityPetraQuestionText:
	text "TODO"
	done
FacilityPetraRefusedText:
	text "TODO"
	done
FacilityPetraWinText:
	text "TODO"
	done
FacilityPetraLossText:
	text "TODO"
	done

FacilityAmosScript:
	faceplayer
	opentext
	writetext FacilityAmosIntroText
	waitbutton
	writetext FacilityAmosQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityAmosRefusedText
	winlosstext FacilityAmosWinText, FacilityAmosLossText
	setlasttalked FACILITY_AMOS
	loadtrainer DUMMY_CLASS, DUMMY_POINTER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityAmosAfter
	special HealPartyEvenForNuzlocke
	end
FacilityAmosIntroText:
	text "TODO"
	done
FacilityAmosAfter:
	text "TODO"
	done
FacilityAmosQuestionText:
	text "TODO"
	done
FacilityAmosRefusedText:
	text "TODO"
	done
FacilityAmosWinText:
	text "TODO"
	done
FacilityAmosLossText:
	text "TODO"
	done