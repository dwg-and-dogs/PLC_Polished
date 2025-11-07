GauldenrodGuild_MapScriptHeader:
	def_scene_scripts
	scene_script MasterBallTrigger 

	def_callbacks

	def_warp_events
	warp_event 3, 7, GAULDENROD, 3
	warp_event 4, 7, GAULDENROD, 3

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, GSApricornBenchScript
	bg_event  2,  2, BGEVENT_READ, GSApricornBenchScript
	bg_event  1,  2, BGEVENT_READ, GSApricornBenchScript


	def_object_events
	object_event 2, 3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, GauldenrodGuildMasterBallScript, -1
	object_event 7, 2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GauldenrodGuildNPC1Script, -1
	object_event 1, 4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GauldenrodGuildNPC2Script, -1
	object_event 8, 5, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodGuildNPC3Script, -1

	object_const_def
	const GUILD_SAGE

MasterBallTrigger:
	sdefer .TradeScript
	end
	
.TradeScript:
	applyonemovement PLAYER, step_up
	showemote EMOTE_SAD, GUILD_SAGE, 30
	setscene $1
	end

GauldenrodGuildMasterBallScript:
	faceplayer
	opentext	
	checkevent EVENT_GAVE_MASTER_BALL
	iftrue_jumpopenedtext TextGaveMasterBall2
	writetext NeedSweetHoneyText
	waitbutton
	checkkeyitem SWEET_HONEY_K
	iffalse_jumpopenedtext Text_NoHoney
	writetext Text_HoneyQuestion ;;
	takekeyitem SWEET_HONEY_K
	setevent EVENT_GAVE_MASTER_BALL
	waitbutton
	writetext TextGaveMasterBall 
	waitbutton
	verbosegiveitem MASTER_BALL
	writetext TextGaveMasterBall2
	waitbutton
	closetext
	end
	
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
	text "That aroma! Sweet"
	line "Honey!"
	
	para "Just what these"
	line "old bones need"
	para "to finish my"
	line "project!"
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
    
    para "I'll give you one"
	line "as thanks."
	done


TextGaveMasterBall2:
    text "That ball will"
    line "catch any"
    cont "#mon."
    	
	para "Go on. What dream"
	line "would you chase,"
	para "if you knew you"
	line "would catch it?"
    done

GauldenrodGuildNPC1Script:
	jumptextfaceplayer GauldenrodGuildNPC1Text

GauldenrodGuildNPC1Text:
	text "I used to help"
	line "people repair"
	cont "their wood homes."

	para "If the Consul's"
	line "plan to import"
	para "Steel happens,"
	line "what'll I do?"
	done

GauldenrodGuildNPC2Script:
	faceplayer
	opentext
	writetext GuildNPC2IntroText
	yesorno
	iffalse .End
	writetext GuildNPC2BallsText
	waitbutton
.End:
	writetext GuildNPC2OutroText
	waitbutton
	closetext
	end


GuildNPC2IntroText:
	text "I'm an expert in"
	line "crafting from"
	cont "raw materials!"
	
	para "Want to hear how"
	line "each type of ball"
	cont "works?"
	done

GuildNPC2OutroText:
	text "Happy crafting!"
	done

GuildNPC2BallsText:
	text "Hollow Rocks can"
	line "make Geodes, for"
	
	para "Rock, Ground, "
	line "and Steels types,"
	
	para "Opals can make"
	line "Jeze Balls, for"
	para "Dark, Psychic,"
	line "and Fairy types,"
	
	para "Shore Foam can"
	line "make Bub Balls"
	para "for Water and"
	line "Ice types,"
	
	para "Fixed Charges"
	line "make Deci Balls"
	cont "for Electrics,"
	
	para "Tough Leaves make"
	line "Herb Balls for"
	para "Grass, Bug, and"
	line "Poison types,"
	
	para "Pnk Apricorns can"
	line "make Love Balls,"
	para "better for oppos-"
	line "ite gender, and"
	cont "raise friendship,"
	
	para "Wht Apricorns can"
	line "make fast balls,"
	para "better early in a"
	line "battle."
	done


GauldenrodGuildNPC3Script:
	jumptextfaceplayer GauldenrodGuildNPC3Text

GauldenrodGuildNPC3Text:
	text "We used to live a"
	line "lot like Anarres."
	
	para "But now we have to"
	line "pay taxes to the"
	cont "Consul."
	
	para "The brigade makes"
	line "sure no one tries"
	para "to talk about"
	line "that, though."
	done
