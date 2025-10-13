GoldenrodMuseum2F_MapScriptHeader:
	def_scene_scripts
	scene_script GoldenrodMuseum2FTrigger 

	def_callbacks

	def_warp_events
	warp_event 13,  7, GOLDENROD_MUSEUM_1F, 3

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, LugiaPaintingScript
	bg_event  2,  0, BGEVENT_READ, LugiaPaintingScript
	bg_event  4,  0, BGEVENT_READ, BellTowerPaintingScript
	bg_event  5,  0, BGEVENT_READ, BellTowerPaintingScript
	bg_event  7,  0, BGEVENT_READ, HoOhPaintingScript
	bg_event  8,  0, BGEVENT_READ, HoOhPaintingScript
	bg_event  0,  4, BGEVENT_READ, KabutoPuzzleScript
	bg_event  0,  5, BGEVENT_READ, KabutoPuzzleScript
	bg_event  3,  4, BGEVENT_READ, OmanytePuzzleScript
	bg_event  3,  5, BGEVENT_READ, OmanytePuzzleScript
	bg_event  0,  6, BGEVENT_READ, AerodactylPuzzleScript
	bg_event  0,  7, BGEVENT_READ, AerodactylPuzzleScript
	bg_event  3,  6, BGEVENT_READ, HoOhPuzzleScript
	bg_event  3,  7, BGEVENT_READ, HoOhPuzzleScript
    bg_event 10,  0, BGEVENT_READ, GoldenrodMuseum2FExhibit3
    bg_event 12,  0, BGEVENT_READ, GoldenrodMuseum2FExhibit4

	def_object_events
    object_event  10,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FScientistScript, -1
    object_event 11,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FNPC3Script, -1
    object_event 12,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FNPC4Script, -1
    object_event  5,  5, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FNPC5Script, -1
	
	object_const_def
	const GOLDENROD_MUSEUM_2F_SCIENTIST

GoldenrodMuseum2FTrigger:
	sdefer .TradeQuestScript
	end
	
.TradeQuestScript:
	showemote EMOTE_SAD, GOLDENROD_MUSEUM_2F_SCIENTIST, 60
	setscene $1
	end

LugiaPaintingScript:
	checkevent EVENT_CIANWOODCITY_EUSINE
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "  The Leviathan"
	line "     Awakens"
	done

HoOhPaintingScript:
	checkevent EVENT_BEAT_MEJIMI
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic HO_OH_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "   The Phoenix"
	line "    Ascending"
	done

BellTowerPaintingScript:
	checkevent EVENT_BEAT_MEJIMI
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic BELL_TOWER_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "    Friendship"
	line "     and Hope"
	done

KabutoPuzzleScript:
	checkevent EVENT_SOLVED_KABUTO_PUZZLE
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic CELEBI_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Celebi panel!"
	done

OmanytePuzzleScript:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic BRONZONG_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Bronzong panel!"
	done

AerodactylPuzzleScript:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic LUGIA_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Lugia panel!"
	done

HoOhPuzzleScript:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iffalse_jumptext UnsolvedPuzzleText
	refreshscreen
	paintingpic HEATRAN_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Heatran panel!"
	done

UnsolvedPuzzleText:
	text "The display is"
	line "still empty…"
	done


GoldenrodMuseum2FNPC3Script:
    jumptextfaceplayer GoldenrodMuseum2FNPC3Text

GoldenrodMuseum2FNPC4Script:
    jumptextfaceplayer GoldenrodMuseum2FNPC4Text

GoldenrodMuseum2FNPC5Script:
    jumptextfaceplayer GoldenrodMuseum2FNPC5Text




GoldenrodMuseum2FScientistScript:
    faceplayer
    opentext
	checkevent EVENT_TRADED_RAGECANDYBAR
	iftrue_jumpopenedtext GiveRageCandyBarText
	writetext NeedBrickPieceText
	waitbutton
	checkkeyitem BRICK_PIECE_K
	iffalse_jumpopenedtext Text_NoBrickPiece
	writetext Text_BrickPieceQuestion
	yesorno
	iffalse_jumpopenedtext Text_NoBrickPiece
	takekeyitem BRICK_PIECE_K
	verbosegivekeyitem RAGECANDYBAR_K
	setevent EVENT_TRADED_RAGECANDYBAR
	jumpopenedtext GiveRageCandyBarText
	
NeedBrickPieceText:
    text "I tried to make"
    line "progress studying"
    para "the stadium ruins"
    line "but I can't find"
	cont "any samples."
	
	para "Now I'm stuck"
	line "writing about the"
	para "ruins by the Lake"
	line "of Rage."
    done

Text_BrickPieceQuestion:
    text "Hey, is that from"
	line "the stadium?"
    para "That Brick Piece"
	line "is distinctive!"
    para "I would give you"
    line "a RageCandyBar."
    done

Text_NoBrickPiece:
    text "I wish I had an"
	line "historic sample"
	para "from the old"
	line "stadium."
	
	para "All of them get"
	line "scooped up by"
	cont "schoolkids!"
    done

GiveRageCandyBarText:
    text "That RageCandyBar"
    line "will delight even"
	cont "a picky eater."
    done

GoldenrodMuseum2FExhibit3:
    jumptext GoldenrodMuseum2FExhibit3Text

GoldenrodMuseum2FExhibit4:
    jumptext GoldenrodMuseum2FExhibit4Text

GoldenrodMuseum2FNPC3Text:
    text "If I had to do"
    line "the challenge, I"
    cont "could definitely"
    cont "bring back a lot"
    cont "of unown."
    done

GoldenrodMuseum2FNPC4Text:
    text "Ho-Oh is such a"
    line "wise #mon…"
    para "A cycle of"
    line "violence darkens"
    cont "the heart."
    done

GoldenrodMuseum2FNPC5Text:
    text "I heard that"
    line "Ho-Oh is still"
    para "spotted atop the"
	line "Tin Tower."
    done

GoldenrodMuseum2FExhibit3Text:
    text "A rite of passage"
    line "in old Goldenrod"
    
    para "Young trainers"
    line "would journey to"
    para "the Ruins of"
    line "Alph, carrying a"
	cont "a village elder."
	
	para "Elders would tell"
	line "them about how to"
	para "survive from the"
	line "local flora."
    
    para "Sometimes, groups"
	line "would return with"
	para "#mon from the"
	line "Ruins of Alph."
    done

GoldenrodMuseum2FExhibit4Text:
    text "Goldenrod Tower"
    line "A sacred place"
    
    para "Ho-Oh once"
    line "rested here and"
    cont "at Bell Tower."
    
    para "When Ecruteak"
    line "grew violent,"
    cont "Ho-Oh left."
    
    para "The legendary"
    line "bird appears to"
	cont "those with pure"
	cont "hearts."
    done
