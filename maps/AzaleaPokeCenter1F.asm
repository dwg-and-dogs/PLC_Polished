AzaleaPokeCenter1F_MapScriptHeader:
	def_scene_scripts
	scene_script AzaleaPokeCenterMintLeafTrigger

	def_callbacks

	def_warp_events
	warp_event  5,  7, AZALEA_TOWN, 1
	warp_event  6,  7, AZALEA_TOWN, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalBugsyScript

	def_object_events
	object_event  4,  5, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaPokeCenter1FPokefanScript, -1
	pc_nurse_event  5, 1
	object_event  8,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokeCenter1FToughLeavesScript, -1 ; apricorn trader 
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FGentlemanText, -1
	object_event  9,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FGentlemanText2, -1
	object_event  8,  1, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FSightseermText, -1
	object_event  9,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV4Script, -1

	object_const_def
	const AZALEA_POKECENTER_1F_MINTY
	
AzaleaPokeCenterMintLeafTrigger:
	sdefer .MintLeafScript
	end
	
.MintLeafScript:
	showemote EMOTE_HAPPY, AZALEA_POKECENTER_1F_MINTY, 30
	setscene $1
	end

PokemonJournalBugsyScript:
	setflag ENGINE_READ_BUGSY_JOURNAL
	jumpthistext
	text_high
    text "Bugsy's Journal:"
	next
	text_start 	
	text "I studied the"
	line "tree rings in"
	cont "Ilex Forest."
	
	para "Very few are"
	line "older than 160"
	cont "years old. Why?"
	done

AzaleaPokeCenter1FToughLeavesScript:
	faceplayer
	opentext
	writetext PearlForToughLeavesText ;;
	waitbutton
	checkitem BIG_PEARL
	iffalse .NoBigPearl
	writetext PearlForToughLeavesQuestionText ;;
	yesorno
	iffalse .NoBigPearl
	takeitem BIG_PEARL
	giveapricorn TOUGH_LEAVES, 5 ; ez mode
	jumpopenedtext PearlForToughLeavesEndText ;;

.NoBigPearl
	jumpopenedtext NoPearlForToughLeavesText ;;

PearlForToughLeavesText:
	text "Hey, did you know"
	line "that leaves in"
	para "Ilex Forest are"
	line "are the toughest"
	cont "in the world!"
	done

PearlForToughLeavesQuestionText:
	text "Why, if I was you,"
	line "I'd trade a big"
	para "pearl for a few of"
	line "these withered-"
	para "I mean, verdant"
	line "leaves."
	done

PearlForToughLeavesEndText:
	text "<PLAYER> got 5"
	line "TOUGH LEAVES."

	para "Come back any"
	line "time."
	done

NoPearlForToughLeavesText:
	text "Oh, I thought you"
	line "had a big pearl."
	
	para "You can fish one "
	line "up anywhere."
	done

AzaleaPokeCenter1FGentlemanText:
	text "I wonder if the"
	line "drought is conne-"
	para "cted to the Slow-"
	line "poke being driven"
	cont "out of the well."
	done

AzaleaPokeCenter1FSightseermText:
	text "Hard to believe"
	line "that <RIVAL> is"
	para "ready for the"
	line "ceremony."
	
	para "Seems like just"
	line "yesterday, he"
	para "lost his dad's"
	line "Farfetch'd."
	done

AzaleaPokeCenter1FPokefanScript: 
	faceplayer
	opentext	
	checkevent EVENT_GOT_MINT_LEAF
	iftrue_jumpopenedtext GiveMintLeafText
	writetext MintLeafGiftText
	promptbutton
	verbosegivekeyitem MINT_LEAF_K
	setevent EVENT_GOT_MINT_LEAF
	jumpopenedtext GiveMintLeafText 

MintLeafGiftText: 
	text "A new trainer!"
	line "When I was your"
	para "age, I traveled"
	line "light."
	
	para "I chewed on these"
	line "instead of using"
	cont "toothpaste."
	done
	
GiveMintLeafText:
	text "That Mint Leaf"
	line "will freshen"
	cont "your breath."
	
	para "Share it with"
	line "someone who"
	para "wants to freshen"
	line "their breath."
	
	para "Just come back if"
	line "you ever lose it."
	done

IlexExcelsiorV4Script:
	opentext
	writetext WeirdTextAzaleaCenter
	waitbutton
	closetext
	unowntypeface
	showtext IlexExcelsiorV4Text
	waitbutton
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextAzaleaCenter:
	text "Hm? What's this"
	line "weird pamphlet?"
	done

IlexExcelsiorV4Text:
	text "Ilex Excelsior"
	
	para "When the tree"
	line "rings will"
	cont "you answer"
	
	para "Fourth Edition"

	para "Silph has no"
	line "right to trees"	
	done
	
	
AzaleaPokeCenter1FGentlemanText2:
	text "What a strange"
	line "pamphlet, left"
	para "here on the "
	line "table. Who can"
	cont "even read this?"
	done
	