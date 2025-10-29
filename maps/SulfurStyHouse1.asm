SulfurStyHouse1_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3,  7, SULFUR_STY, 1
	warp_event  4,  7, SULFUR_STY, 1


	def_coord_events



	def_bg_events



	def_object_events
	object_event  5,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer, SulfurStyHouse1StoneEdgeScript, -1 ; GIVE false swipe
	pokemon_event 5,  3, MACHAMP, -1, -1, PAL_NPC_BLUE, MachampStoneText, -1



SulfurStyHouse1StoneEdgeScript: ;CF THE ROUTE34GATE TEACHER
	checkevent EVENT_GOT_TM_STONE_EDGE
	iftrue_jumptextfaceplayer GotStoneEdgeText
	faceplayer
	opentext
	writetext GiveStoneEdgeText
	promptbutton
	verbosegivetmhm TM_STONE_EDGE
	setevent EVENT_GOT_TM_STONE_EDGE
	jumpthisopenedtext

GotStoneEdgeText:
	text "Stone Edge-not"
	line "every #mon can"
	para "wield it. It's"
	line "powerful, but"
	cont "inaccurate."
	done
	
GiveStoneEdgeText:
	text "Work, work work!"
	line "That's all that"
	cont "General Adrinna"
	cont "can say!"
	
	para "My poor Machamp"
	line "is No Guard, not"
	para "Guts, so doesn't"
	line "last long in the"
	cont "mine's smog."
	
	para "Can you cover for"
	line "me? Take this TM"
	cont "as a favor."
	done
	
MachampStoneText:
	text "Ma... Macha.."

	para "Its face is blue,"
	line "and wheezing..."
	done
	