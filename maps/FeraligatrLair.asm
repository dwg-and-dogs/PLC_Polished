FeraligatrLair_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events



	def_coord_events


	def_bg_events
	bg_event 13, 15, BGEVENT_READ, FeraligatrLairIntroScript

	def_object_events
	object_event  13, 8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, FERALIGATR, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FeraligatrLairScript, EVENT_FOUGHT_FERALIGATR_VARIANT
	itemball_event 11, 15, HERB_BALL, 1, EVENT_LAIR_HERBBALL ;

	object_const_def
	const LAIR_FERALIGATR

FeraligatrLairScript:
	opentext
	writetext WeirdFeraligatrText
	waitbutton
	writetext PokemonInterestInFeraligatrText
	waitbutton
	checkmove SPLASH
	iffalse_jumptext NoFeraligatrMoveText
	writetext FeraligatrWiggleText_Splash
	waitbutton
	closetext

	cry FERALIGATR
	loadwildmon FERALIGATR, OTHER_FORM, 35
	startbattle
	disappear LAIR_FERALIGATR
	setevent EVENT_FOUGHT_FERALIGATR_VARIANT
	reloadmapafterbattle
	warp TRANQUIL_TARN, 16, 30 
	end

FeraligatrLairIntroScript:
	unowntypeface
	showtext WeirdFeraligatrText_Unown
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	opentext
	writetext ReturnToTarnText
	waitbutton
	yesorno
	iffalse_jumptext LairText
	warp TRANQUIL_TARN, 16, 30
	end

ReturnToTarnText:
	text "Return to Tarn?"
	done

LairText:
	text "It smells a lot"
	line "like Magikarp in"
	cont "this swamp."
	done
	
WeirdFeraligatrText:	
	text "It's a Feraligatr,"
	line "but it's covered"
	cont "in thick mud."
	
	para "It's intensely"
	line "focused on the"
	para "water, looking"
	line "for any movement."
	done

WeirdFeraligatrText_Unown: 
	text "Lies crouched in"
	line "waiting for prey"
	
	para "looking for the"
	line "smallest sprinkle"
	done

NoFeraligatrMoveText:
	text "The Feraliatr"
	line "stands still."
	done

FeraligatrWiggleText_Splash:
	text "Your #mon"
	line "made a Splash!"
	
	para "Feraligatr thinks"
	line "there's prey in"
	cont "the water!"
	
	para "Feraligatr"
	line "attacks!"
	done

PokemonInterestInFeraligatrText:
	text "Your #mon are"
	line "trying to rouse"
	cont "the Feraligatr!"
	done
