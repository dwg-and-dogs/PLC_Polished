TinTowerOld1F_MapScriptHeader: 
	def_scene_scripts
	scene_script TinTowerOldMasterBallTrigger ;she should have a happy emote t

	def_callbacks


	def_warp_events
	warp_event 7, 15, WESTERN_CAPITAL, 9
	warp_event 8, 15, WESTERN_CAPITAL, 9
	warp_event 8, 3, TIN_TOWER_OLD_3F, 1
	warp_event 2, 12, TIN_TOWER_OLD_2F, 1
	warp_event 2, 3, TIN_TOWER_OLD_2F, 2


	def_coord_events



	def_bg_events



	def_object_events
	object_event  7,  13, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MasterBallScript, -1
	object_event 12,  7, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTowerOld1FNPC1Text, -1 ; done
	object_event 11, 12, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTowerOld1FNPC2Text, -1 ; done
	object_event 13, 2, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTowerOld1FNPC3Text, -1 ; done

	object_const_def
	const TIN_TOWER_OLD_1F_MASTER_BALL_SAGE 

	
TinTowerOldMasterBallTrigger:
	sdefer .TradeScript
	end
	
.TradeScript:
	showemote EMOTE_HAPPY, TIN_TOWER_OLD_1F_MASTER_BALL_SAGE, 20
	setscene $1
	end

TinTowerOld1FNPC1Text:
	text "This tower was"
	line "modernized with"
	para "metals thanks to"
	line "Hisui crafters."
	done

TinTowerOld1FNPC2Text:
	text "The towers are a"
	line "veritable maze"
	para "from Vespera's"
	line "#mon powers."
	done

TinTowerOld1FNPC3Text:
	text "Vespera is the"
	line "chief priestess."
	
	para "She determines "
	line "who is worthy"
	para "to cross the"
	line "Capital's moat."
	done

MasterBallScript:
	faceplayer
	opentext	
	checkevent EVENT_GAVE_MASTER_BALL
	iftrue_jumpopenedtext TextGaveMasterBall2
	writetext NeedSweetHoneyText
	waitbutton
	checkitem SWEET_HONEY
	iffalse_jumpopenedtext Text_NoHoney
	writetext Text_HoneyQuestion ;;
	yesorno
	iffalse_jumpopenedtext Text_NoHoney
	takeitem SWEET_HONEY
	verbosegiveitem MASTER_BALL
	setevent EVENT_GAVE_MASTER_BALL
	setscene $1
	iffalse_endtext
	jumpopenedtext TextGaveMasterBall 

NeedSweetHoneyText: 
    text "I'm working on 2"
    line "ideal apricorns."
    
    para "When complete,"
    line "they'll surpass"
    cont "any ever made!"
    
    para "But these old"
    line "hands need some"
    para "Honey to steady"
    line "themselves."
    done

Text_HoneyQuestion:
	text "Oh, you are the"
	line "one Vespera told"
	cont "me about!"
	
	para "And that aroma-"
	line "you must have a"
	cont "bit of honey!"
	
	para "Just what these"
	line "old bones need"
	para "to finish my"
	line "project."
    done

Text_NoHoney:
    text "Back to work..."
    line "carefully now."
    done

TextGaveMasterBall: 
    text "Now... Each"
    line "piece must be"
    cont "placed with great"
    cont "care..."
    
    para "There! Perfect"
    line "at last!"
    
    para "Young trainer, I"
    line "want you to have"
    cont "one. But first-"
; drop through 

TextGaveMasterBall2:
    text "That ball will"
    line "catch any"
    cont "#mon, without"
    cont "fail."
    
    para "Like a powerful"
    line "technique, its"
    cont "power demands"
    cont "wisdom."
    
    para "That's why I've"
    line "chosen to share"
    cont "it with you, yet"
    cont "make no more."
	
	para "Go on. What dream"
	line "would you chase,"
	cont "if you knew you"
	cont "would catch it?"
    done
