SlowpokeDreams_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events



	def_coord_events



	def_bg_events



	def_object_events
	object_event  4, 4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SLOWKING, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SlowkingDreamsScript, EVENT_SLOWKING_DREAMS
	itemball_event 6, 9, POKE_BALL, 1, EVENT_DREAMS_POKEBALL

	object_const_def



SlowkingDreamsScript:
	opentext
	writetext SlowkingWiseText
	waitbutton
	cry SLOWKING
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SLOWKING, 40
	startbattle
	ifequal $1, .Continue
.Continue:
	reloadmapafterbattle
	showtext SlowkingAfterText
	special HealParty
	setevent EVENT_SLOWKING_DREAMS
	setmapscene OLIVINE_LIGHTHOUSE_6F, $1
	warp OLIVINE_LIGHTHOUSE_6F, 9, 10 
	end

	
SlowkingWiseText:
	text "Tentacruel toxins"
	line "on my axons cause"
	para "my brain to go to"
	line "a higher plane."

	para "I see every poss-"
	line "ible outcome:"
	para "every butterfly"
	line "wing flap is like"
	cont "a concussion."
	
	para "Though I am in "
	line "such pain, I can"
	cont "not walk away."
	
	para "My analytical an-"
	line "xiety saves you"
	para "from yourselves,"
	line "for now."
	
	para "Two hurricanes,"
	line "I smothered in"
	para "tropics before"
	line "making landfall."
	
	para "But eventually, "
	line "I will pass on."
	
	para "And how will you"
	line "navigate this"
	cont "world without me?"
	done

SlowkingAfterText:
	text "Ha! Though I saw"
	line "so much, I failed"
	cont "to see this."
	
	para "It is time for me"
	line "to step back."
	
	para "My false sense of"
	line "security was a"
	cont "curse on you."
	
	para "A changing world"
	line "is not doomed."
	done
