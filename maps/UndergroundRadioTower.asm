UndergroundRadioTower_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 37, 7, WAREHOUSE_ENTRANCE, 3
	warp_event  3, 3, RADIO_TOWER_1F, 4

    def_coord_events

    def_bg_events

    def_object_events
    object_event  3,  5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UndergroundRadioTowerKurtScript, EVENT_KURT_UNDERGROUND
    object_event 32,  7, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBirdKeeperVance1, EVENT_FOUGHT_RADIO_TOWER_RIVAL;
    object_event 28,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltKenji, EVENT_FOUGHT_RADIO_TOWER_RIVAL;
    object_event 20,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerBeautySamantha, EVENT_FOUGHT_RADIO_TOWER_RIVAL;
    object_event  8,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerBeautyCassie, EVENT_FOUGHT_RADIO_TOWER_RIVAL;
    object_event  9,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerBeautyJulia, EVENT_FOUGHT_RADIO_TOWER_RIVAL;

	object_const_def
	const UNDERGROUND_KURT
	
TrainerBirdKeeperVance1:
    trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVance1SeenText, BirdKeeperVance1BeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext BirdKeeperVance1AfterText
    waitbutton
    closetext
    end

TrainerBlackbeltKenji:
    trainer BLACKBELT_T, KENJI1, EVENT_BEAT_BLACKBELT_KENJI, BlackbeltKenjiSeenText, BlackbeltKenjiBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext BlackbeltKenjiAfterText
    waitbutton
    closetext
    end

TrainerBeautySamantha:
    trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext BeautySamanthaAfterText
    waitbutton
    closetext
    end

TrainerBeautyCassie:
    trainer BEAUTY, CASSIE, EVENT_BEAT_BEAUTY_CASSIE, BeautyCassieSeenText, BeautyCassieBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext BeautyCassieAfterText
    waitbutton
    closetext
    end

TrainerBeautyJulia:
    trainer BEAUTY, JULIA, EVENT_BEAT_BEAUTY_JULIA, BeautyJuliaSeenText, BeautyJuliaBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext BeautyJuliaAfterText
    waitbutton
    closetext
    end

UndergroundRadioTowerKurtScript:
    faceplayer
    opentext
    writetext KurtThankYouText
    special HealParty
    playsound SFX_FULL_HEAL
    waitsfx
    writetext KurtAfterHealText
    yesorno
    iffalse .NotReady
    writetext KurtReadyText
    promptbutton
    verbosegivetmhm HM_FLY
    setevent EVENT_GOT_FLY_KURT
	setevent EVENT_RIVAL_RADIO_TOWER
    writetext KurtAfterFlyText
    waitbutton
    closetext
	applymovement UNDERGROUND_KURT, UndergroundKurtMoves
	disappear UNDERGROUND_KURT
	setevent EVENT_KURT_UNDERGROUND
    end
	
.NotReady
    writetext KurtNotReadyText
    waitbutton
    closetext
    end


BirdKeeperVance1SeenText:
    text "We're fighting for"
    line "fair competition!"
    done

BirdKeeperVance1BeatenText:
    text "Silph creates new"
    line "tech, but you need"
    cont "their whole system"
    para "Take the flower"
    line "shop: they own it"
    cont "all! Is Silph that"
    cont "much better than"
    cont "Gloria?"
    done

BirdKeeperVance1AfterText:
    text "Silph creates new"
    line "tech, but you need"
    cont "their whole system"
    para "Take the flower"
    line "shop: they own it"
    cont "all! Is Silph that"
    cont "much better than"
    cont "Gloria?"
    done

BlackbeltKenjiSeenText:
    text "We'll make our"
    line "voices heard!"
    done

BlackbeltKenjiBeatenText:
    text "Whitney and Silph"
    line "have all channels."
    para "How's it free"
    line "speech when no one"
    cont "else can talk?"
    done

BlackbeltKenjiAfterText:
    text "Whitney and Silph"
    line "have all channels."
    para "How's it free"
    line "speech when no one"
    cont "else can talk?"
    done

BeautySamanthaSeenText:
    text "I tried to follow"
    line "Whitney's advice."
    done

BeautySamanthaBeatenText:
    text "Why am I here? I"
    line "tried to 'roll in"
    cont "not roll out'."
    para "But I can't do all"
    line "Whitney does, I"
    cont "lack her resources"
    done

BeautySamanthaAfterText:
    text "Why am I here? I"
    line "tried to 'roll in"
    cont "not roll out'."
    para "But I can't do all"
    line "Whitney does, I"
    cont "lack her resources"
    done

BeautyCassieSeenText:
    text "Cute #mon need"
    line "fair chances too!"
    done

BeautyCassieBeatenText:
    text "Whitney says she's"
    line "helping cute mon,"
    para "but one trainer"
    line "isn't enough to"
    cont "protect them all."
    done

BeautyCassieAfterText:
    text "Whitney says she's"
    line "helping cute mon,"
    para "but one trainer"
    line "isn't enough to"
    cont "protect them all."
    done

BeautyJuliaSeenText:
    text "This tunnel has"
    line "quite a history."
    done

BeautyJuliaBeatenText:
    text "This tunnel was"
    line "found recently."
    para "It was a waterway,"
    line "now dry from the"
    cont "drought."
    done

BeautyJuliaAfterText:
    text "This tunnel was"
    line "found recently."
    para "It was a waterway,"
    line "now dry from the"
    cont "drought."
    done

KurtThankYouText:
    text "<PLAYER>,"
    line "thank you for"
    cont "coming."

	para "There might be"
	line "a few fights up"
	cont "ahead."
	
    para "Let me heal your"
    line "#mon."
    done

KurtAfterHealText:
    text "These trainers,"
	line "eh, we have a"
	cont "common cause."
	
	para "We're going to"
	line "take out the"
	cont "power here."
	
	para "We're going to"
	line "take Whitney's"
	cont "show off the air"
	para "and then sneak"
	line "out of the city"
	cont "through the pass"
	cont "to the East."

    para "Her show..."
	line "It makes people"
	cont "think their fan-"
	cont "dom of Whitney"
	
	para "is more import-"
	line "ant than their"
	cont "family or heri-"
	cont "tage!"

    para "Are you ready?"

    done



KurtNotReadyText:
    text "OK. Let me know if"
    line "you change your"
    cont "mind."
    done

KurtReadyText:
    text "Thank you. This"
    line "ladder leads to"
    cont "the Radio Tower."
	
	para "While the lights"
	line "are off, we can"
	cont "sneak past the"
	cont "guards."
	
    done

KurtAfterFlyText:
	text "By the way, you"
	line "should have this"
	cont "now."
    para "This HM will help"
    line "us escape if"
    cont "we need to."
    done

UndergroundKurtMoves:
	step_up
	step_up
	step_end
	