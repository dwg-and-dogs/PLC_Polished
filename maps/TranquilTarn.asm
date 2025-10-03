TranquilTarn_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, TranquilTarnFlyPoint
	callback MAPCALLBACK_TILES, TranquilTarnCallback  


	def_warp_events


	def_coord_events


	def_bg_events  
	bg_event 16, 29, BGEVENT_READ, TranquilTarnShrineScript

	def_object_events
	object_event  28,  20, SPRITE_BIRD_KEEPER, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBirdKeeperHank, EVENT_BEAT_KANNA
	object_event 29, 20, SPRITE_BRIGADER, 	SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TranquilTarnBrigaderScript, -1
	pokemon_event  30, 20, GYARADOS, -1, -1, PAL_NPC_BLUE, GyaradosText, EVENT_BEAT_KANNA
	object_event  22,  10, SPRITE_HIKER, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerRuinManiacJones, EVENT_BEAT_KANNA
	object_event  18,  19, SPRITE_HIKER, 	SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerRuinManiacLeland, EVENT_BEAT_KANNA
	object_event  26,  25, SPRITE_BUG_MANIAC, 	SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBugManiacRob, EVENT_BEAT_KANNA
	object_event 20, 6, SPRITE_AROMA_LADY, 	SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TranquilTarnNPC1Script, EVENT_BEAT_KANNA
	object_event 11, 10, SPRITE_BLACK_BELT, 	SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TranquilTarnNPC2Text, EVENT_BEAT_KANNA
	object_event 23, 10, SPRITE_BRIGADER, 	SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TranquilTarnBrigaderScript, -1
	pokemon_event  24, 10, GYARADOS, -1, -1, PAL_NPC_BLUE, GyaradosText, EVENT_BEAT_KANNA
	fruittree_event 19, 30, FRUITTREE_TRANQIL_TARN_1, TOUGH_LEAVES, PAL_NPC_GREEN;OK
	fruittree_event 36,  5, FRUITTREE_TRANQIL_TARN_2, RADIANT_OPAL, PAL_NPC_RED;OK
	tmhmball_event 31, 29, TM_AVALANCHE, EVENT_TM_AVALANCHE
	itemball_event 26, 33, ENERGY_ROOT, 1, EVENT_TARN_ITEM_1
	itemball_event 38, 14, REVIVAL_HERB, 1, EVENT_TARN_ITEM_2
	cuttree_event 11, 27, EVENT_EXTENT_TREE



TranquilTarnCallback:
	checkevent EVENT_BEAT_KANNA
	iffalse .Done
	changeblock 26, 8, $CB
	changeblock 32, 8, $CB 
	changeblock 26, 10, $CB 
	changeblock 32, 10, $CB 
	changeblock 24, 12, $CB 
	changeblock 32, 12, $CB 
	changeblock 24, 14, $CB 
	changeblock 30, 14, $CB 
	changeblock 22, 16, $CB 
	changeblock 28, 16, $CB 
	changeblock 22, 18, $CB 
	changeblock 28, 18, $CB 
	changeblock 24, 20, $CB 
	changeblock 26, 20, $CB 
.Done:
	endcallback

TranquilTarnFlyPoint:
	setflag ENGINE_FLYPOINT_TRANQUIL_TARN
	endcallback
	
TranquilTarnShrineScript:
	opentext
	writetext AskToTimeTravelText_TT
	yesorno
	iffalse_jumpopenedtext NoTimeTravelText_TT
	writetext YesTimeTravelText_TT
	waitbutton
	closetext
	playsound SFX_SNORE
	special FadeOutPalettes
	waitsfx
	blackoutmod LAKE_OF_RAGE
	warp LAKE_OF_RAGE, 21, 32  
	end

AskToTimeTravelText_TT:
	text "It's a shrine to"
	line "a blue and gray"
	para "sauropod-like"
	line "#mon."
	
	para "Give an offering?"
	done

NoTimeTravelText_TT:
	text "None given."
	done
	
YesTimeTravelText_TT:
	text "There's a roar!"
	done

GenericTrainerBirdKeeperHank:
	generictrainer BIRD_KEEPER, HANK, EVENT_BEAT_BIRD_KEEPER_HANK, HankSeenText, HankBeatenText

	text "Hisui birds are"
	line "not suited to"
	cont "Johto."
	done

HankBeatenText:
	text "You whirled us"
	line "out of the air!"
	done
	
HankSeenText:
	text "Fly, fly! My bird"
	line "#mon!"
	done

GenericTrainerRuinManiacJones:
	generictrainer RUIN_MANIAC, JONES, EVENT_BEAT_RUIN_MANIAC_JONES, RuinManiacJonesSeenText, RuinManiacJonesBeatenText

	text "There's something"
	line "magic about the"
	para "ground under my"
	line "feet in Johto."
	done

RuinManiacJonesBeatenText:
	text "Rgh! You made me"
	line "lose my temper!"
	done
	
RuinManiacJonesSeenText:
	text "Hisui steel won't"
	line "melt!"
	done

GenericTrainerRuinManiacLeland:
	generictrainer RUIN_MANIAC, ROB, EVENT_BEAT_RUIN_MANIAC_ROB, RuinManiacLelandSeenText, RuinManiacLelandBeatenText

	text "There's something"
	line "more energized"
	para "about Johto this"
	line "trip."
	done

RuinManiacLelandBeatenText:
	text "I couldn't"
	line "even beat you?"
	done
	
RuinManiacLelandSeenText:
	text "I've explored all"
	line "Hisui's caves - "
	
	para "I know a thing or"
	line "two!"
	done

GenericTrainerBugManiacRob:
	generictrainer BUG_MANIAC, ROB, EVENT_BEAT_BUG_MANIAC_ROB, BugManiacRobSeenText, BugManiacRobBeatenText

	text "Bug types were"
	line "Elite in Hisui,"
	para "but Elite means"
	line "something else"
	cont "in Johto."
	done

BugManiacRobBeatenText:
	text "Hm, not quite"
	line "strong enough."
	done
	
BugManiacRobSeenText:
	text "Hisui's bugs are"
	line "strong, right?"
	done

TranquilTarnBrigaderScript:
	faceplayer
	checkevent EVENT_BEAT_KANNA
	iftrue_jumptext TarnBrigaderText2
	jumpthistext
	
	text "Hey kid, want a"
	line "Gyarados? They're"
	para "full of Dragon"
	line "energy."
	
	para "Far stronger than"
	line "your #mon."
	
	para "Go find General"
	line "Adrinna if so."
	done
	
TarnBrigaderText2:
	text "General Adrinna's"
	line "plan worked!"
	
	para "Some of the His-"
	line "uians joined our"
	cont "brigade!"
	
	para "And now, a great"
	line "Lake to raise up"
	cont "Gyarados!"
	done

TranquilTarnNPC1Script:
	faceplayer
	checkevent EVENT_BEAT_KANNA
	iffalse_jumptext TarnNPC1Text
	jumpthistext
	
	text "Did the soldiers"
	line "know what they"
	cont "were doing?"
	
	para "The tarn will"
	line "never be the"
	cont "same again."
	done

	
TarnNPC1Text:
	text "What happened to"
	line "Johto? Last time"
	para "we visited from"
	line "Hisui, there were"
	cont "no soldiers."
	done

TranquilTarnNPC2Text:
	text "Those brigaders"
	line "have no control"
	cont "of their #mon!"
	
	para "Where is their"
	line "discipline?"
	done

GyaradosText:
	text "Gayash!"
	done
