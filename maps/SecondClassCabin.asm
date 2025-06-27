SecondClassCabin_MapScriptHeader: 
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  8,  5, MAGNET_TRAIN_TUNNEL, 3 ;ok
	warp_event  9,  5, MAGNET_TRAIN_TUNNEL, 3 ;ok

	def_coord_events



	def_bg_events



	def_object_events
	object_event  4,  4, SPRITE_JUGGLER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_KYLE, -1
	object_event  1,  4, SPRITE_JUGGLER, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SecondClassCabinJuggler2, -1
	object_event  8,  3, SPRITE_YOUNGSTER, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SecondClassCabinYoungster, -1
	object_event  8,  2, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, SecondClassCabinMatronText, -1


	
SecondClassCabinMatronText:
	text "There, there..."
	
	para "It'll be OK."
	
	para "There's nothing"
	line "to be afraid"
	cont "of."
	
	para "The clown can't"
	line "hurt you."	
	done
	

SecondClassCabinYoungster:
	faceplayer
	opentext
	writetext YoungsterIsScaredText
	waitbutton
	closetext
	end
	
YoungsterIsScaredText:
	text "Snivel..."
	
	para "Waaa!"
	
	done
	
SecondClassCabinJuggler2:
	faceplayer
	opentext
	writetext SecondClassCabinJuggler2Text
	promptbutton
	closetext
	end

SecondClassCabinJuggler2Text:
	text "My buddy wants"
	line "to be a clown"
	cont "so bad."
	
	para "He really wants"
	line "to make a ball-"
	para "oon animal for"
	line "that kid, but"
	para "we don't have"
	line "any helium to"
	cont "fill 'em up."
	done

