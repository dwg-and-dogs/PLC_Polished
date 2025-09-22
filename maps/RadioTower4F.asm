RadioTower4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, RADIO_TOWER_5F, 1
	warp_event 17,  0, RADIO_TOWER_3F, 2

	def_coord_events

	def_bg_events
	bg_event 15,  0, BGEVENT_JUMPTEXT, RadioTower4FStudio2SignText

	def_object_events
    object_event 14,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower4FKurtScript, EVENT_BEAT_WHITNEY
	object_event  15,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhitneysNoteScript, -1

RadioTower4FProductionSignText:
	text "4F Production"
	done

RadioTower4FStudio2SignText:
	text "4F Studio 2"
	done


RadioTower4FKurtScript:
    faceplayer
    opentext
    writetext RadioTower4FKurtHealText
    waitbutton
    closetext

	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic


    opentext
    writetext RadioTower4KurtRemindText
    waitbutton
    closetext
	setevent EVENT_BEAT_RADIO_TOWER_RIVAL
    end

RadioTower4FKurtHealText:
    text "<PLAYER>!"
    line "You made it. Let"
    cont "me heal you."
    done

RadioTower4KurtRemindText:
    text "We're almost to"
    line "the top floor."
	
	para "Let's get Whitney's"
	line "show off the air"
	cont "for good!"
	
	para "Then, we'll sneak"
	line "through the train"
	cont "station to Violet"
	cont "City."
    done

WhitneysNoteScript:	
    opentext
    writetext NoticeRadioScriptText
    yesorno
    iffalse .DeclineRead
    checkevent EVENT_READ_WHITNEY_RADIO_SCRIPT
    iftrue .AlreadyRead
    writetext WhitneyRadioText
    promptbutton
    giveitem DESTINY_KNOT
    iffalse .BagFull
    setevent EVENT_READ_WHITNEY_RADIO_SCRIPT
    writetext ReceiveDestinyKnotText
    waitbutton
    closetext
    end

.AlreadyRead:
    writetext WhitneyRadioText
    waitbutton
    closetext
    end

.DeclineRead:
    waitbutton
    closetext
    end

.BagFull:
    writetext RadioTowerBagFullText
    waitbutton
    closetext
    end

NoticeRadioScriptText:
	text "It's Whitney's"
	line "script. Read?"
    done

ReceiveDestinyKnotText:
    text "There's a"
    line "Destiny Knot"
    cont "attached to the"
    cont "script!"
    done

RadioTowerBagFullText:
    text "Oh, too full!"
    done

WhitneyRadioText:
    text "(Charm!) Welcome"
    line "back to the only"
    cont "show that truly"
    cont "gets you."

    para "Let's embrace"
    line "the beautiful"
    cont "chaos of now."
	
	para "We have a very"
	line "special guest-"
	
	para "Someone like a"
	line "lot of you."
	
	para "His talents were"
	line "not appreciated."

	para "Now, with Silph,"
	line "he is an award-"
	cont "winning inventor!"
	
	para "He just might be"
	line "the one to save"
	para "us from this "
	line "drought."

    para "Just another ex-"
	line "ample of how the"
	para "old traditions"
    line "don't work in this"
    cont "day and age."

    para "After all, it's"
    line "all made up - so"
    cont "make it amazing."
    done
