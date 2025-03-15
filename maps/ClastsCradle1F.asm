ClastsCradle1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_STONETABLE, 	Cradle1FBoulders
	callback MAPCALLBACK_TILES, 		Cradle1FCartsCallback

	def_warp_events
	warp_event 19,  7, CLASTS_CRADLE_2F, 2
	warp_event 3, 19, CLASTS_CRADLE_B1F, 1
	; HOLES
	warp_event 14, 21, CLASTS_CRADLE_B1F, 2 ; 3
	warp_event 18, 27, CLASTS_CRADLE_B1F, 2 ; 4 
	warp_event 16, 41, CLASTS_CRADLE_B1F, 2 ; 5


	def_coord_events



	def_bg_events
; HIDDEN ITEMS - BIG_NUGGET X2 AT 30, 11 AND 4, 16 , METAL COAT AT 18, 43


	def_object_events
	strengthboulder_event 22, 16, EVENT_BOULDER_CRADLE1F_1; goes to hole at 3
	strengthboulder_event 30, 23, EVENT_BOULDER_CRADLE1F_2; goes to hole at 4
	strengthboulder_event 23, 35, EVENT_BOULDER_CRADLE1F_3; goes to hole at 5	
	
	object_event  22,  4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader16, EVENT_BEAT_ADRINNA_MINE
	object_event  31, 16, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader17, EVENT_BEAT_ADRINNA_MINE
	object_event   3, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader18, EVENT_BEAT_ADRINNA_MINE

	object_event  14, 28, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerEngineerNobel, EVENT_BEAT_ADRINNA_MINE	
	object_event  11, 39, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerEngineerIngsol, EVENT_BEAT_ADRINNA_MINE

	
	object_event  32, 11, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPIN_CLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerDragonTamerHank2, EVENT_BEAT_ADRINNA_MINE	
	object_event  31, 31, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPIN_CLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerDragonTamerJones2, EVENT_BEAT_ADRINNA_MINE
	object_event  16, 13, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPIN_CLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerDragonTamerLeland2, EVENT_BEAT_ADRINNA_MINE



	itemball_event 9, 9, NUGGET, 1, EVENT_CRADLE_1F_NUGGET
	itemball_event 28, 35, FULL_RESTORE, 1, EVENT_CRADLE_1F_FULL_RESTORE
	itemball_event 19, 33, MAX_REVIVE, 1, EVENT_CRADLE_1F_MAX_REVIVE
	itemball_event 11, 27, ODD_SOUVENIR, 1, EVENT_CRADLE_1F_SOUVENIR
	tmhmball_event 7, 16, TM_SWORDS_DANCE, EVENT_TM_SWORDS_DANCE

	object_const_def
	const CRADLE1F_BOULDER1
	const CRADLE1F_BOULDER2
	const CRADLE1F_BOULDER3

Cradle1FBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 3, CRADLE1F_BOULDER1, .Disappear1
	stonetable 4, CRADLE1F_BOULDER1, .Disappear2
	stonetable 5, CRADLE1F_BOULDER1, .Disappear3
	db -1 ; end

.Disappear1:
	disappear CRADLE1F_BOULDER1
	sjump .BouldersCradle1F
	
.Disappear1:
	disappear CRADLE1F_BOULDER2
	sjump .BouldersCradle1F

.Disappear3:
	disappear CRADLE1F_BOULDER3
;fallthru
.BouldersCradle1F:
	pause 30
	playsound SFX_STRENGTH
	earthquake 40
	jumpthistext

	text "The boulder fell"
	line "through!"
	done

GenericTrainerBrigader16: ; dragons 
	generictrainer BRIGADER, 16, EVENT_BEAT_ROCKET_GRUNTM_16, Brigader16SeenText, Brigader16BeatenText  

Brigader16BeatenText:
	text "..."
	done

Brigader16SeenText:
	text "..."
	done
	
GenericTrainerBrigader17: ; poison
	generictrainer BRIGADER, 17, EVENT_BEAT_ROCKET_GRUNTM_17, Brigader17SeenText, Brigader17BeatenText  

Brigader17BeatenText:
	text "..."
	done

Brigader17SeenText:
	text "..."
	done
	
GenericTrainerBrigader18: ; normal
	generictrainer BRIGADER, 18, EVENT_BEAT_ROCKET_GRUNTM_18, Brigader18SeenText, Brigader18BeatenText  

Brigader18BeatenText:
	text "..."
	done

Brigader18SeenText:
	text "..."
	done