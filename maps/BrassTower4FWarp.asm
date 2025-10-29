BrassTower4FWarp_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 4, 9, BRASS_TOWER_4F, 2
	warp_event 5, 9, BRASS_TOWER_4F, 2


	def_coord_events


	def_bg_events


	def_object_events
	object_event  5,  4, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BrassTowerAdrinna, -1


BrassTowerAdrinna:
	checkevent EVENT_BEAT_ADRINNA_TOWER
	iftrue_jumptextfaceplayer AdrinnaAfterText
	checkpoke CELEBI
	iftrue .DeclinedDueToCelebi
	faceplayer
	opentext
	writetext AdrinnaTowerSeenText
	pause 30
	yesorno
	iftrue .YesToAdrinna
.Declined:
	writetext NoToAdrinnaText
	waitbutton
	closetext
	winlosstext BeatenTextAdrinnaWarp, 0
	loadtrainer ADRINNA, 3
	startbattle
	reloadmapafterbattle
	showtext AdrinnaAfterText
	setevent EVENT_BEAT_ADRINNA_TOWER
	end

.DeclinedDueToCelebi:
	showtext AdrinnaSeenText0
	sjump .Declined
	end

.YesToAdrinna:
	writetext AreYouSureAdrinna
	yesorno
	iffalse .Declined ; jumps above
	setevent EVENT_ACCEPTED_ADRINNA
	writetext AdrinnaTakesOverText
	waitbutton
	closetext
	setevent EVENT_BEAT_ADRINNA_TOWER
	end

AdrinnaSeenText0:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "I knew your tal-"
	line "ents would rise"
	cont "you to the top."
	
	para "<PLAYER>. You"
	line "could be so much"
	para "more without your"
	line "grandfather."
	
	para "If you shed those"
	line "antiquated bonds,"
	para "you'd be revered"
	line "around the world!"
	
	para "What do you say?"
	line "Join with"
	para "me. We only need"
	line "a cult of self."
	
	para "Hm? I can see in"
	line "your eyes, you're"
	cont "as weak as your"
	cont "Grandfather."
	done


AdrinnaTowerSeenText:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "I knew your tal-"
	line "ents would rise"
	cont "you to the top."
	
	para "<PLAYER>. You"
	line "could be so much"
	para "more without your"
	line "grandfather."
	
	para "If you shed those"
	line "antiquated bonds,"
	para "you'd be revered"
	line "around the world!"
	
	para "What do you say?"
	line "Join me. We only"
	cont "need a cult of"
	cont "the self."
	done


BeatenTextAdrinnaWarp:
	text "Unbelievable."
	line "I had the"
	para "strongest #mon"
	line "and still lost."

	para "Your bonds..."
	line "how do they"
	cont "overcome me?"
	done


AdrinnaAfterText:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Goodbye <PLAYER>."
	line "One day, you'll"
	cont "look around and"
	para "see corruption"
	line "metastasize, and"
	para "you'll wish that"
	line "you had excised"
	para "it when you had"
	line "the chance."
	done


AdrinnaTakesOverText:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Excellent. Meet"
	line "me on the roof."
	para "We will show"
	line "Johto how little"
	cont "it needs Consul"
	cont "Urgaust."
	done

AreYouSureAdrinna:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Really? You will"
	line "join me in tear-"
	cont "ing down Johto's"
	cont "traditions?"
	done

NoToAdrinnaText:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Disappointing."
	line "No matter - I'll"
	cont "destroy you, and"
	cont "then the Consul!"
	done
