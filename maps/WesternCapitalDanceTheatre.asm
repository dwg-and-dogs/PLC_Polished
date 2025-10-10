WesternCapitalDanceTheatre_MapScriptHeader: ;	def_scene_scripts
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  5, 13, WESTERN_CAPITAL, 4
	warp_event  6, 13, WESTERN_CAPITAL, 4

	def_coord_events

	def_bg_events


	def_object_events


	object_event  2,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerKimono_girlMasako, EVENT_BEAT_ADRINNA_MOUNT_MORTAR ;
	object_event  5,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerKimono_girlHaruko, EVENT_BEAT_ADRINNA_MOUNT_MORTAR ; FLAREON, kimono girl 1 -- DONE
	object_event  8,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerKimono_girlTamiko, EVENT_BEAT_ADRINNA_MOUNT_MORTAR ; GLACEON, kimono girl 4 -- DONE
	object_event  1, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WC_DanceTheatreNPC1Script, -1
	object_event  10, 8, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WC_DanceTheatreNPC2Script, -1
	object_event  6,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_WESTERN_CAPITAL_MON, -1
;	object_event  8,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_GOLDENROD_3F, -1
;	mart_clerk_event  1, 6, MARTTYPE_STANDARD, MART_WESTERN_CAPITAL_MON	



WC_DanceTheatreNPC1Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ADRINNA_MOUNT_MORTAR
	iftrue_jumpopenedtext WC_DT_NPC1_Text1
	jumpthistext
	
	text "The Kimono Girls"
	line "are leaning into"
	cont "battling. "
	
	para "Seems like a few"
	line "aren't buying it"
	cont "since a few of"
	para "them haven't been"
	line "seen in a few"
	cont "weeks."
	
	done

WC_DT_NPC1_Text1:
	text "The Kimono Girls"
	line "disappeared last"
	para "night. I wonder"
	line "where they went?"
	done

WC_DanceTheatreNPC2Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ADRINNA_MOUNT_MORTAR
	iftrue_jumpopenedtext WC_DT_NPC2_Text1
	checkevent EVENT_GOT_FLASH_CANNON
	iftrue_jumpopenedtext GotFlashCannonText
	checkevent EVENT_BEAT_KIMONO_GIRL_MASAKO
	iffalse_jumpopenedtext WC_DT_NPC2_Text2
	checkevent EVENT_BEAT_KIMONO_GIRL_HARUKO
	iffalse_jumpopenedtext WC_DT_NPC2_Text2
	checkevent EVENT_BEAT_KIMONO_GIRL_TAMIKO
	iffalse_jumpopenedtext WC_DT_NPC2_Text2
	writetext WC_DT_NPC2_Text3
	waitbutton
	verbosegivetmhm TM_FLASH_CANNON
	waitbutton
	setevent EVENT_GOT_FLASH_CANNON
	writetext GotFlashCannonText
	waitbutton
	closetext
	end
	

WC_DT_NPC2_Text3:
	text "Hah! All three,"
	line "just like that!"
	
	para "Your style is so"
	line "flashy, I want"
	cont "to give this to"
	cont "you as thanks."
	done
	
WC_DT_NPC2_Text2:
	text "The Consul's"
	line "generals have"
	cont "taken a heavy"
	para "hand with the Ki-"
	line "mono Theatre."
	
	para "I can't defeat"
	line "even one!"
	done

WC_DT_NPC2_Text1:
	text "The Kimono Girls"
	line "disappeared last"
	para "night. I wonder"
	line "where they went?"
	done

GotFlashCannonText:
	text "That move is as"
	line "flashy as the"
	cont "dancers!"
	done

GenericTrainerKimono_girlMasako:
	generictrainer KIMONO_GIRL_1, MASAKO, EVENT_BEAT_KIMONO_GIRL_MASAKO, Kimono_girl_1MasakoSeenText, Kimono_girl_1MasakoBeatenText

	text "A bonfire can be"
	line "enchanting."
	
	para "Don't get"
	line "consumed."
	done

Kimono_girl_1MasakoSeenText:
	text "I dance like a"
	line "tongue of fire!"
	done

Kimono_girl_1MasakoBeatenText:
	text "A bonfire can be"
	line "enchanting."
	
	para "Don't get"
	line "consumed."
	done

GenericTrainerKimono_girlHaruko:
	generictrainer KIMONO_GIRL_4, HARUKO, EVENT_BEAT_KIMONO_GIRL_HARUKO, Kimono_girl_1HarukoSeenText, Kimono_girl_1HarukoBeatenText

	text "Too much water,"
	line "and any plant"
	cont "would drown."
	done

Kimono_girl_1HarukoSeenText:
	text "Could you grow"
	line "a new world if"
	cont "you had enough"
	cont "water?"
	done

Kimono_girl_1HarukoBeatenText:
	text "Too much water,"
	line "and any plant"
	cont "would drown."
	done

GenericTrainerKimono_girlTamiko: ; BROWN 
	generictrainer KIMONO_GIRL_5, TAMIKO, EVENT_BEAT_KIMONO_GIRL_TAMIKO, Kimono_girl_1TamikoSeenText, Kimono_girl_1TamikoBeatenText

	text "When lightning"
	line "strikes, ground"
	cont "yourself."
	done

Kimono_girl_1TamikoSeenText:
	text "The static comp-"
	line "els your hairs"
	cont "to stand at"
	cont "attention!"
	done

Kimono_girl_1TamikoBeatenText:
	text "When lightning"
	line "strikes, ground"
	cont "yourself."
	done
	