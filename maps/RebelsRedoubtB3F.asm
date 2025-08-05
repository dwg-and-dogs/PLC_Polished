RebelsRedoubtB3F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 7, REBELS_REDOUBT_B2F, 2
	warp_event 21, 15, REBELS_REDOUBT_B2F, 3
	warp_event 27, 7, REBELS_REDOUBT_B2F, 4
;holes 
	warp_event 15, 2, REBELS_REDOUBT_B2F, 5
	warp_event 16, 2, REBELS_REDOUBT_B2F, 5


	def_coord_events

	def_bg_events

	def_object_events
	object_event 22, 11, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 1, RedoubtHollisScript, EVENT_BEAT_AMOS
	object_event 19, 11, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, RedoubtSandraScript, EVENT_BEAT_AMOS
	object_event  8,  7, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, RedoubtBarbeauScript, EVENT_BEAT_AMOS
	itemball_event 2, 15, REVIVAL_HERB, 1, EVENT_REDOUBT_ITEM_3
	itemball_event 13, 15, ENERGY_ROOT, 1, EVENT_REDOUBT_ITEM_4
	itemball_event 15, 11, LUM_BERRY, 1, EVENT_REDOUBT_ITEM_5

RedoubtHollisScript: 
	refreshscreen
	trainerpic HOLLIS
	waitbutton
	closepokepic
	faceplayer
	opentext
	checkevent EVENT_BEAT_HOLLIS_REDOUBT
	iftrue .FightDone
	writetext HollisRedoubtText_Intro
	waitbutton
	closetext
	winlosstext HollisRedoubtText_Impressed, 0
	loadtrainer HOLLIS, 2
	startbattle
	reloadmapafterbattle
.FightDone:
	opentext
	writetext Text_HollisRedoubt2
	setevent EVENT_BEAT_HOLLIS_REDOUBT
	promptbutton
	closetext
	end


HollisRedoubtText_Intro:
	text_high
    text " Hollis: " 
	next
	text_start
	text "<PLAYER>, you're"
	line "far from home."
	
	para "I wanted to stay"
	line "out of politics,"
	para "but that's not"
	line "possible."	
	para "From you, I lea-"
	line "rned to share my"
	cont "power."
	
	para "why does Amos say"
	line "you would help"
	para "Adrinna entrench"
	line "herself?"
	
	para "Are you true to"
	line "your roots?"
	done


HollisRedoubtText_Impressed:
	text "Ha! I knew you"
	line "were true!"
	done


Text_HollisRedoubt2:
	text_high
    text " Hollis: " 
	next
	text_start
	text "I'll tell Amos"
	line "you are a trust-"
	cont "worthy partner."
	done


RedoubtSandraScript: 
	refreshscreen
	trainerpic SANDRA
	waitbutton
	closepokepic
	faceplayer
	opentext
	checkevent EVENT_BEAT_SANDRA_REDOUBT
	iftrue .FightDone
	writetext SandraRedoubtText_Intro
	waitbutton
	closetext
	winlosstext SandraRedoubtText_Impressed, 0
	loadtrainer SANDRA, 2
	startbattle
	reloadmapafterbattle
.FightDone:
	opentext
	writetext Text_SandraRedoubt2
	setevent EVENT_BEAT_SANDRA_REDOUBT
	promptbutton
	closetext
	end

SandraRedoubtText_Intro:
	text_high
    text " Sandra: " 
	next
	text_start
	text "<PLAYER>, please"
	line "take no offense,"
	
	para "I am still grate-"
	line "ful for the help"
	cont "you gave to"
	cont "Gauldenrod-"
	
	para "But now that you"
	line "are so versed in"
	cont "battle, I must"
	
	para "know if you have"
	line "forgotten the "
	cont "sacrifices that"
	
	para "made it possible."
	line "Do you still feel"
	cont "the Sonder?"

	para "We Johto Elders"
	line "are sacrificing"
	cont "so much to take"
	
	para "back control of"
	line "the region from"
	cont "Consul Urgaust."
	
	para "We must know if"
	line "you would do the"
	cont "same!"
	done


SandraRedoubtText_Impressed:
	text "Mmm... I knew you"
	line "were true."
	done

Text_SandraRedoubt2:
	text_high
    text " Sandra: " 
	next
	text_start
	text "I'll tell Amos"
	line "you are a trust-"
	cont "worthy partner."
	done


RedoubtBarbeauScript: 
	refreshscreen
	trainerpic BARBEAU
	waitbutton
	closepokepic
	faceplayer
	opentext
	checkevent EVENT_BEAT_BARBEAU_REDOUBT
	iftrue .FightDone
	writetext BarbeauRedoubtText_Intro
	waitbutton
	closetext
	winlosstext BarbeauRedoubtText_Impressed, 0
	loadtrainer BARBEAU, 2
	startbattle
	reloadmapafterbattle
.FightDone:
	opentext
	writetext Text_BarbeauRedoubt2
	setevent EVENT_BEAT_BARBEAU_REDOUBT
	promptbutton
	closetext
	end

BarbeauRedoubtText_Intro:
	text_high
    text " Barbeau: " 
	next
	text_start
	text "<PLAYER>, you and"
	line "your grandfather"
	cont "are infamous"
	
	para "in the Landing"
	line "for what happened"
	cont "with Lugia."
	
	para "But the way that"
	line "Kurt piloted her,"
	para "so reckless, I "
	line "cannot shore up"
	para "support for you"
	line "without seeing"
	para "how you treat"
	line "your own #mon"
	cont "in battle."
	
	para "One day, you will"
	line "have to stand at"
	para "a shore, watching"
	line "your descendants"
	para "sail away - would"
	line "they come back to"
	para "sustain you in"
	line "the next season?"
	done


BarbeauRedoubtText_Impressed:
	text "Magnificent! Your"
	line "#mon would"
	cont "go to the last"
	cont "breath for you."
	done

Text_BarbeauRedoubt2:
	text_high
    text " Barbeau: " 
	next
	text_start
	text "I'll tell Amos"
	line "you are a trust-"
	cont "worthy partner."
	done

