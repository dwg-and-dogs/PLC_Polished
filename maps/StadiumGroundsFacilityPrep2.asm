StadiumGroundsFacilityPrep2_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	
	
	def_warp_events
	warp_event 0, 22, STADIUM_GROUNDS_FACILITY_PREP, 3
	warp_event 2, 22, STADIUM_GROUNDS_FACILITY_PREP, 4
	
	def_coord_events 


	def_bg_events




	def_object_events

	object_event 23, 17, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_BT_1, -1 
	object_event 24, 17, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD,  MART_BT_2, -1	
	object_event 25, 17, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_BT_3, -1	

	object_event 23, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_BT_1, -1 
	object_event 23, 15, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_BT_1, -1 ; TODO 

	object_event 3, 12, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityPrepAttackTrainer,  -1 ; todo test all of these 
	object_event 4, 12, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, MACHAMP, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, FacilityMachampText, -1

	object_event 11, 16, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT,0,  FacilityPrepSpAtkTrainer,   -1	
	object_event 12, 16, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, ALAKAZAM, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptext, FacilityAlakazamText, -1

	object_event 7, 11, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT,0,  FacilityPrepSpeedTrainer,   -1	
	object_event 8, 11, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, ELECTRODE, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, FacilityElectrodeText, -1 ; todo 

	object_event 11, 12, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FacilityPrepHPTrainer,  -1	
	object_event 12, 12, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NIDOQUEEN, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptext, FacilityNidoqueenText, -1	

	object_event 3, 16, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FacilityPrepDefenseTrainer,  -1	
	object_event 4, 16, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, GOLEM, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptext, FacilityGolemText, -1	; todo 

	object_event 7, 15, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FacilityPrepSPDefTrainer,  -1	; todo 
	object_event 8, 15, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, POLITOED, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, FacilityPolitoedText, -1	



FacilityPrepAttackTrainer:
	faceplayer
	opentext
	writethistext
		text "I'm the Attack"
		line "EV trainer."
		done
	waitbutton
	writetext EVTrainerAskToBattle
	yesorno
	iffalse_jumptext DVTrainerNoBattleText
	winlosstext FacilityEVWinText, FacilityEVLoseText
	loadtrainer TAMER, TAMER_ATTACK
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityEVAfter
	special HealPartyEvenForNuzlocke
	end

FacilityPrepSpAtkTrainer:
	faceplayer
	opentext
	writethistext
		text "I'm the Special"
		line "Attack EV Trainer."
		done
	waitbutton
	writetext EVTrainerAskToBattle
	yesorno
	iffalse_jumptext DVTrainerNoBattleText
	winlosstext FacilityEVWinText, FacilityEVLoseText
	loadtrainer TAMER, TAMER_SPATK
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityEVAfter
	special HealPartyEvenForNuzlocke
	end

FacilityPrepSpeedTrainer:
	faceplayer
	opentext
	writethistext
		text "I'm the Speed"
		line "EV Trainer."
		done
	waitbutton
	writetext EVTrainerAskToBattle
	yesorno
	iffalse_jumptext DVTrainerNoBattleText
	winlosstext FacilityEVWinText, FacilityEVLoseText
	loadtrainer TAMER, TAMER_SPEED
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityEVAfter
	special HealPartyEvenForNuzlocke
	end


FacilityPrepHPTrainer:
	faceplayer
	opentext
	writethistext
		text "I'm the HP"
		line "EV Trainer."
		done
	waitbutton
	writetext EVTrainerAskToBattle
	yesorno
	iffalse_jumptext DVTrainerNoBattleText
	winlosstext FacilityEVWinText, FacilityEVLoseText
	loadtrainer TAMER, TAMER_HP
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityEVAfter
	special HealPartyEvenForNuzlocke
	end

FacilityPrepDefenseTrainer:
	faceplayer
	opentext
	writethistext
		text "I'm the Defense"
		line "EV Trainer."
		done
	waitbutton
	writetext EVTrainerAskToBattle
	yesorno
	iffalse_jumptext DVTrainerNoBattleText
	winlosstext FacilityEVWinText, FacilityEVLoseText
	loadtrainer TAMER, TAMER_DEFENSE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityEVAfter
	special HealPartyEvenForNuzlocke
	end


FacilityPrepSPDefTrainer
	faceplayer
	opentext
	writethistext
		text "I'm the Special"
		line "Defense EV Trainer."
		done
	waitbutton
	writetext EVTrainerAskToBattle
	yesorno
	iffalse_jumptext DVTrainerNoBattleText
	winlosstext FacilityEVWinText, FacilityEVLoseText
	loadtrainer TAMER, TAMER_SPDEF
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext FacilityEVAfter
	special HealPartyEvenForNuzlocke
	end

EVTrainerAskToBattle:
	text "Would you like to"
	line "battle?"
	done

DVTrainerNoBattleText:
	text "No worries."
	done

FacilityEVWinText:
	text "Well played!"
	done

FacilityEVLoseText:
	text "Better luck next"
	line "time."
	done

FacilityEVAfter:
	text "There is no 510"
	line "EV limit. #mon"
	para "can max out all"
	line "EVs in Gen2."
	done

FacilityAlakazamText:
	text "It seems Bashful."
	done

FacilityElectrodeText:
	text "It seems serious."
	done

FacilityMachampText:
	text "It seems hardy."
	done

FacilityNidoqueenText:
	text "It looks quite"
	line "content."
	done

FacilityGolemText:
	text "It seems docile."
	done

FacilityPolitoedText:
	text "It gives a quirky"
	line "grin."
	done
