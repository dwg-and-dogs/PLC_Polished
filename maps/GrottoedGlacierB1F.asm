GrottoedGlacierB1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_STONETABLE, GrottoedGlacierBoulders

	def_warp_events
	warp_event 15, 9, GROTTOED_GLACIER_1F, 2
	warp_event 3, 21, GROTTOED_GLACIER_B2F, 1
;HOLES 
	warp_event 2, 17, GROTTOED_GLACIER_B2F, 2
	warp_event 8, 21, GROTTOED_GLACIER_B2F, 2


	def_coord_events


	def_bg_events


	def_object_events
	strengthboulder_event 3, 7, EVENT_BOULDER1_IN_GLACIER
	strengthboulder_event 11, 12, EVENT_BOULDER2_IN_GLACIER
	object_event 12,  9, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerMediumEsther, EVENT_BEAT_KANNA
	object_event  4, 19, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSageVirgil, EVENT_BEAT_KANNA
	itemball_event 13, 14, NEVERMELTICE, 1, EVENT_GLACIER_B1F_ITEM_1
	itemball_event 21, 15, REVIVAL_HERB, 1, EVENT_GLACIER_B1F_ITEM_2

	object_const_def
	const GROTTOEDGLACIER_BOULDER1
	const GROTTOEDGLACIER_BOULDER2

GrottoedGlacierBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 3, GROTTOEDGLACIER_BOULDER1, .Disappear1
	stonetable 4, GROTTOEDGLACIER_BOULDER2, .Disappear2
	db -1 ; end

.Disappear1:
	disappear GROTTOEDGLACIER_BOULDER1
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	jumpthistext

	text "The boulder fell"
	line "through!"
	done
	
.Disappear2:
	disappear GROTTOEDGLACIER_BOULDER2
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	jumpthistext

	text "The boulder fell"
	line "through!"
	done


GenericTrainerMediumEsther:
	generictrainer MEDIUM, ESTHER, EVENT_BEAT_MEDIUM_ESTHER, .SeenText, .BeatenText

.BeatenText:
	text "Elder Kanna will"
	line "handle Adrinna."
	
	para "You don't need to"
	line "be here."
	done

.SeenText:
	text "You're not from"
	line "Hisui - are you"
	cont "with Adrinna?"	
	done



GenericTrainerSageVirgil:
	generictrainer SAGE, VIRGIL, EVENT_BEAT_SAGE_VIRGIL, .SeenText1, .BeatenText1

.BeatenText1:
	text "I hope I held"
	line "you back long"
	cont "enough."	
	done

.SeenText1:
	text "The ceremony must"
	line "not be stopped!"	
	done

