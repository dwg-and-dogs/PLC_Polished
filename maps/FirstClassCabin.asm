FirstClassCabin_MapScriptHeader: ;	def_scene_scripts
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  2,  7, MAGNET_TRAIN_TUNNEL, 4 ;ok
	warp_event  3,  7, MAGNET_TRAIN_TUNNEL, 4 ;ok

	def_coord_events



	def_bg_events



	def_object_events
	object_event 1, 4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FirstClassCabinGentleman1, EVENT_GENTLEMAN_READ_TRAIN_MAIL
	object_event 4, 5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FirstClassCabinGentleman2, -1
	object_event 10, 5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FirstClassCabinTeacher, -1

	object_const_def

FirstClassCabinGentleman2:
    jumptextfaceplayer FirstClassCabinGentleman2Text
	
FirstClassCabinTeacher:
    jumptextfaceplayer FirstClassCabinTeacherText
	
FirstClassCabinGentleman1:
    faceplayer
    opentext
    checkevent EVENT_GOT_KENYA
    iftrue .GotKenya
    writetext CabinGentlemanNormalText
    waitbutton
    closetext
    end

.GotKenya
    writetext CabinGentlemanReadMailText
    waitbutton
    closetext
    end
	
CabinGentlemanNormalText:
	text "Looks like I"
	line "picked the wrong"
	cont "day to ride the"
	cont "train!"
	done
	
CabinGentlemanReadMailText:
	text "Oh, you have a"
	line "piece of mail"
	cont "for me?"
	
	para "What'd it say?"
	
	para "Ah, a little"
	line "too late..."
	
	para "Wish he would"
	line "have used the"
	cont "Spearow Express."
	done
	
FirstClassCabinTeacherText:
	text "I heard static"
	line "further down the"
	cont "tunnel..."
	
	para "What if the train"
	line "attracts mische-"
	cont "vious #mon?"
	done

FirstClassCabinGentleman2Text:
	text "This subterranean"
	line "sojourn took "
	cont "quite the turn."

	para "Next time I'll"
	line "opt for a less"
	para "attractive mode"
	line "of transport."
	done
