OlivineMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_OLIVINE
	object_event  6,  2, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineMartCooltrainerFText, -1
	object_event  1,  6, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineMartLassText, EVENT_BEAT_CHUCK
; ability patch vendor 
	object_event 2,  5, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AbilityPatchVendorScript, -1



OlivineMartCooltrainerFText:
	text "Chuck's Slowking"
	line "is just another"
	para "invention. It may"
	line "disrupt a few"
	para "jobs, but I can't"
	line "imagine doing"
	cont "mine without it."
	done

OlivineMartLassText:
	text "Jasmine hasn't"
	line "responded to any"
	para "calls asking her"
	line "to look in to the"
	para "effect that the"
	line "Desal Plant is"
	para "having on the"
	line "shoreline."
	done

AbilityPatchVendorScript:
	faceplayer
	opentext
	writetext GivingPatchText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext NoMoneyTextPatch
	checkmoney $0, 30000
	ifequal $2, PatchVendorNotEnoughMoney 
	promptbutton
	giveitem ABILITYPATCH
	iffalse_jumpopenedtext NoRoomTextPatch
	playsound SFX_TRANSACTION
	takemoney $0, 30000
	special PlaceMoneyTopRight
	writetext GotPatchText
	waitbutton
	closetext
	end

PatchVendorNotEnoughMoney:
	jumptext NoMoneyTextPatch

GivingPatchText:
	text "Thanks to using"
	line "OMLAS Sloking,"
	
	para "I've developed an"
	line "Ability Patch to"
	cont "change #mon"
	para "to their Hidden"
	line "ability!"
	
	para "I'll sell to you"
	line "for 30k. Deal?"
	done
	
GotPatchText:
	text "Try it out! I have"
	line "as many as you"
	cont "need."
	done

NoMoneyTextPatch:
	text "This isn't easy"
	line "to make!"
	done

NoRoomTextPatch:
	text "Oh! You won't"
	line "take it?"
	done