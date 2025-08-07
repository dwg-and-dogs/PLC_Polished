ClastsCradle1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_STONETABLE, 	Cradle1FBoulders
	callback MAPCALLBACK_TILES, Cradle1FCartCallback


	def_warp_events
	warp_event 19,  7, CLASTS_CRADLE_2F, 2
	warp_event 3, 19, CLASTS_CRADLE_B1F, 1
	; HOLES
	warp_event 14, 21, CLASTS_CRADLE_B1F, 2 ; 3
	warp_event 18, 27, CLASTS_CRADLE_B1F, 2 ; 4
	warp_event 16, 41, CLASTS_CRADLE_B1F, 2 ; 5


	def_coord_events



	def_bg_events
	bg_event 25, 22, BGEVENT_READ, CC_1F_Switch1
	bg_event 30, 11, BGEVENT_ITEM + REVIVAL_HERB, EVENT_CRADLE_HIDDEN_1 ; hidden item
	bg_event  4, 16, BGEVENT_ITEM + BIG_NUGGET, EVENT_CRADLE_HIDDEN_2 ; hidden item
	bg_event 18, 43, BGEVENT_ITEM + METAL_COAT, EVENT_CRADLE_HIDDEN_3 ; hidden item

	def_object_events
	strengthboulder_event 22, 16, EVENT_BOULDER_CRADLE1F_1; goes to hole at 3
	strengthboulder_event 30, 23, EVENT_BOULDER_CRADLE1F_2; goes to hole at 4
	strengthboulder_event 23, 35, EVENT_BOULDER_CRADLE1F_3; goes to hole at 5
	; todo add a ninja that tells you there's three boulders we need to push down 
	object_event  16,  6, SPRITE_NINJA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CradleNinjaHelpText, EVENT_BEAT_ADRINNA_MINE
	object_event  22,  4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader16, EVENT_BEAT_ADRINNA_MINE
	object_event  31, 16, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBrigader17, EVENT_BEAT_ADRINNA_MINE
	object_event   3, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader18, EVENT_BEAT_ADRINNA_MINE
	object_event 14, 28, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerEngineerNobel, EVENT_BEAT_ADRINNA_MINE
	object_event 23, 40, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerEngineerIngsol, EVENT_BEAT_ADRINNA_MINE
	object_event  32, 11, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerDragonTamerHank2, EVENT_BEAT_ADRINNA_MINE
	object_event 27, 24, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerDragonTamerJones2, EVENT_BEAT_ADRINNA_MINE
	object_event  16, 13, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerDragonTamerLeland2, EVENT_BEAT_ADRINNA_MINE
	itemball_event 9, 9, NUGGET, 1, EVENT_CRADLE_1F_NUGGET
	itemball_event 28, 35, FULL_RESTORE, 1, EVENT_CRADLE_1F_FULL_RESTORE
	itemball_event 19, 33, MAX_REVIVE, 1, EVENT_CRADLE_1F_MAX_REVIVE
	itemball_event 11, 27, ODD_SOUVENIR, 1, EVENT_CRADLE_1F_SOUVENIR
	tmhmball_event 7, 16, TM_SWORDS_DANCE, EVENT_TM_SWORDS_DANCE

	object_const_def
	const CRADLE1F_BOULDER1
	const CRADLE1F_BOULDER2
	const CRADLE1F_BOULDER3

Cradle1FCartCallback:
	checkevent EVENT_CRADLE_1F_CART
	iffalse .Done
	changeblock 30, 28, $C9
	changeblock 14, 28, $C5
.Done:
	endcallback

Cradle1FBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 3, CRADLE1F_BOULDER1, .Disappear1
	stonetable 4, CRADLE1F_BOULDER2, .Disappear2
	stonetable 5, CRADLE1F_BOULDER3, .Disappear3
	db -1 ; end

.Disappear1:
	disappear CRADLE1F_BOULDER1
	sjump .BouldersCradle1F

.Disappear2:
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

CradleNinjaHelpText:
	text "<PLAYER>. Amos is"
	line "down below, but"
	para "we can't get to"
	line "Adrinna yet."
	
	para "We need to span"
	line "three lava fields"
	cont "to reach her."
	
	para "Hurry! There's"
	line "not much time!"
	done

GenericTrainerBrigader16: ; dragons 
	generictrainer BRIGADER, 16, EVENT_BEAT_ROCKET_GRUNTM_16, Brigader16SeenText, Brigader16BeatenText  

Brigader16BeatenText:
	text "We're getting so"
	line "close. You can't"
	cont "stop us."
	done

Brigader16SeenText:
	text "Intruder! Turn"
	line "back now!"
	done
	
GenericTrainerBrigader17: ; poison
	generictrainer BRIGADER, 17, EVENT_BEAT_ROCKET_GRUNTM_17, Brigader17SeenText, Brigader17BeatenText  

Brigader17BeatenText:
	text "Don't hack up a"
	line "lung."
	done

Brigader17SeenText:
	text "Do you #mon"
	line "find it hard to"
	cont "breathe here?"
	done
	
GenericTrainerBrigader18: ; normal
	generictrainer BRIGADER, 18, EVENT_BEAT_ROCKET_GRUNTM_18, Brigader18SeenText, Brigader18BeatenText  

Brigader18BeatenText:
	text "You won't get any"
	line "further."
	done

Brigader18SeenText:
	text "I've trained with"
	line "Adrinna, I can"
	cont "beat you!"
	done
	
GenericTrainerEngineerNobel:
	generictrainer ENGINEER, NOBEL, EVENT_BEAT_ENGINEER_NOBEL, NobelSeenText, NobelBeatenText  

NobelBeatenText:
	text "I'm on a short"
	line "fuse."
	done

NobelSeenText:
	text "Whoa, watch out!"
	line "I'm holding some"
	cont "dynamite!"
	done


GenericTrainerEngineerIngsol:
	generictrainer ENGINEER, INGSOL, EVENT_BEAT_ENGINEER_INGSOL, IngsolSeenText, IngsolBeatenText  

IngsolBeatenText:
	text "If you listen,"
	line "you can hear the"
	para "magma coursing"
	line "beneath us."	
	done

IngsolSeenText:
	text "We will reach the"
	line "heart of this"
	cont "mountain!"
	done

GenericTrainerDragonTamerHank2:
	generictrainer DRAGON_TAMER, HANK2, EVENT_BEAT_DRAGON_TAMER_HANK2, Hank2SeenText, Hank2BeatenText  


	text "My dragons don't"
	line "rule the ground."
	done

Hank2BeatenText:
	text "They don't rule"
	line "the caves..."
	done

Hank2SeenText:
	text "Dragons will rule"
	line "the sky! From"
	cont "Hisui to Johto!"
	done


GenericTrainerDragonTamerJones2:
	generictrainer DRAGON_TAMER, JONES2, EVENT_BEAT_DRAGON_TAMER_JONES2, Jones2SeenText, Jones2BeatenText  

Jones2BeatenText:
	text "They don't have"
	line "trainers like you"
	cont "in Hisui."
	done

Jones2SeenText:
	text "Can you damage my"
	line "Steel dragons?"
	para "They didn't have"
	line "dragons like this"
	cont "in Hisui!"
	done


GenericTrainerDragonTamerLeland2:
	generictrainer DRAGON_TAMER, LELAND2, EVENT_BEAT_DRAGON_TAMER_LELAND2, Leland2SeenText, Leland2BeatenText  

Leland2BeatenText:
	text "Dragon #mon"
	line "make history. I'm"
	cont "done studying it."
	done

Leland2SeenText:
	text "You'll be history"
	line "when I'm done"
	cont "with you!"
	done

CC_1F_Switch1:
	;debug tech
	setmapscene CLASTS_CRADLE_B1F, $1
	; end debug tech todo 
	opentext
	writetext CartSwitchText
	yesorno
	iffalse_jumptext CartNoSwitchText
	checkevent EVENT_CRADLE_1F_CART_1
	iftrue CC_1F_SwitchBack
	changeblock 30, 28, $C9
	changeblock 14, 28, $C4
	playsound SFX_THUNDER
	waitsfx
	setevent EVENT_CRADLE_1F_CART_1
	reloadmappart
	jumptext CartMovedText 
	
CC_1F_SwitchBack:
	changeblock 30, 28, $C8 
	changeblock 14, 28, $C5
	playsound SFX_THUNDER
	waitsfx
	clearevent EVENT_CRADLE_1F_CART_1
	reloadmappart
	jumptext CartMovedText 
