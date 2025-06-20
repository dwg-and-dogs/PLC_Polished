AnarresTower1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  5,  11, ANARRES_TOWN, 5
	warp_event  6,  11, ANARRES_TOWN, 5
	warp_event   1,   1, ANARRES_TOWER_2F, 1
	warp_event  11,   1, ANARRES_TOWER_2F, 2


	def_coord_events


	def_bg_events


	def_object_events
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherDon, -1
	object_event  0,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherBenny, -1
	object_event  6,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTowerResetScript, EVENT_BEAT_HOLLIS


	object_const_def


AnarresTowerResetScript:
	faceplayer
	opentext
	writetext ResetAnarresTowerTrainersText
	waitbutton
	yesorno
	iffalse .ScriptEnds
	clearevent EVENT_BEAT_BUG_CATCHER_DON
	clearevent EVENT_BEAT_BUG_CATCHER_WAYNE	
	writetext AnaressTowerTrainersResetText
	waitbutton	
.ScriptEnds:
	closetext
	end

ResetAnarresTowerTrainersText:
	text "Hey, the guards"
	line "are keeping any-"
	cont "one out!"
	
	para "Did you battle"
	line "them already?"
	done

AnaressTowerTrainersResetText:
	text "I'll tell them to"
	line "look out for you"
	cont "again."
	done


GenericTrainerBugCatcherDon:
	generictrainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugCatcherDonSeenText, BugCatcherDonBeatenText

	text "The Elder is"
	line "so wise."
	done

BugCatcherDonSeenText:
	text "The Elder's HM"
	line "is so powerful!"
	done

BugCatcherDonBeatenText:
	text "Are you cut"
	line "out for it?"
	done


GenericTrainerBugCatcherBenny:
	generictrainer BUG_CATCHER, BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText

	text "Bug types can"
	line "win on stamina."
	done

BugCatcherBennySeenText:
	text "My bugs will"
	line "swarm you!"
	done

BugCatcherBennyBeatenText:
	text "Maybe I need"
	line "even more..."
	done
