CattleCull39_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events



	def_coord_events



	def_bg_events
	bg_event 14,  6, BGEVENT_JUMPTEXT, CattleCull39SignText
	bg_event 12, 31, BGEVENT_JUMPTEXT, TradersLandingAheadText
	bg_event  10, 8, BGEVENT_ITEM + SILVER_LEAF, EVENT_CC39_HIDDEN_1
	bg_event   6, 30, BGEVENT_ITEM + PP_MAX, EVENT_CC39_HIDDEN_2


	def_object_events
	object_event 11, 16, SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerNomadMDale, -1
	object_event 13, 20, SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerNomadMJacob, -1
	object_event 7,  7, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNomadFMarlene, -1
	object_event 5,  29, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNomadFRin, -1
	object_event 13, 10, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CattleCullKurtScript, -1
	pokemon_event  5, 10, TAUROS, -1, -1, PAL_NPC_BROWN, TaurosText, -1;
	pokemon_event  4, 11, MILTANK, -1, -1, PAL_NPC_RED, Miltank39Text, -1;
	pokemon_event  9, 12, MILTANK, -1, -1, PAL_NPC_RED, Miltank39Text, -1;
	pokemon_event  6, 12, MILTANK, -1, -1, PAL_NPC_RED, Miltank39Text, -1;
	fruittree_event 2, 17, FRUITTREE_CATTLE_CULL_39, SITRUS_BERRY, PAL_NPC_RED
	object_event 5, 13, SPRITE_NOMAD_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer, CattleCull39HoneClaws, -1	
	
	object_const_def

GenericTrainerNomadFMarlene:
   generictrainer NOMAD_F, NOMAD_F_MARLENE, EVENT_BEAT_NOMAD_F_MARLENE, NomadMarleneSeenText, NomadMarleneBeatenText


   text "They fear barbari-"
   line "ans will kidnap"
   cont "our children."
   para "But here, we lose"
   line "them anyway..."
   done

NomadMarleneSeenText:
   text "My child won't"
   line "know our ways..."
   para "They call this"
   line "safety?"
   done

NomadMarleneBeatenText:
   text "My little one saw"
   line "our strength..."
   done


GenericTrainerNomadMDale:
   generictrainer NOMAD_M, NOMAD_M_DALE, EVENT_BEAT_NOMAD_M_DALE, NomadDaleSeenText, NomadDaleBeatenText

   text "We read storms to"
   line "guide our path."
   done

NomadDaleSeenText:
   text "The winds speak"
   line "to wanderers."
   para "Their weathermen"
   line "are deaf."
   done

NomadDaleBeatenText:
   text "Their guards watch"
   line "our paths."
   para "Meanwhile, our"
   line "traditions are"
   cont "running away."
   done



GenericTrainerNomadFRin:
   generictrainer NOMAD_F, NOMAD_F_RIN, EVENT_BEAT_NOMAD_F_RIN, NomadRinSeenText, NomadRinBeatenText

   text "There's a season"
   line "for everything."
   
   para "Does the consul"
   line "think he controls"
   cont "the heavens?"
   done

NomadRinSeenText:
   text "Our lives moved"
   line "with seasons."
   done

NomadRinBeatenText:
   text "We've been made"
   line "stagnant, though."
   done

GenericTrainerNomadMJacob:
   generictrainer NOMAD_M, NOMAD_M_JACOB, EVENT_BEAT_NOMAD_M_JACOB, NomadJacobSeenText, NomadJacobBeatenText

   text "They say their"
   line "routes are safe."
   para "But they don't"
   line "know how to navig-"
   cont "ate the fog."
   done

NomadJacobSeenText:
   text "I knew every cove"
   line "and inlet..."
   para "Their maps make"
   line "us worthless."
   done

NomadJacobBeatenText:
   text "You battle like a"
   line "true navigator."
   done

CattleCull39SignText:
	text "Consul's Road-"
	line "Follow through"
	para "Cattle Cull to"
	line "Trader's Landing"
	done

CattleCullKurtScript:
	faceplayer
	opentext
	writetext HearAStory_4Text
	yesorno
	iffalse DontHearHearStory4
	writetext KurtCattleCullStoryText
	waitbutton
	clearevent EVENT_KURTS_HOUSE_BOOK_4
	closetext
	end

DontHearHearStory4:
	writetext SomeOtherTime_4Text
	waitbutton
	closetext
	end

HearAStory_4Text:
	text "This reminds me"
	line "of the first time"
	
	para "I was in Olivine"
	line "with your dad."
	
	para "Want to hear "
	line "about it?"
	done

SomeOtherTime_4Text:
	text "Some other time."
	done

KurtCattleCullStoryText:
	text "I keep thinking"
	line "about your dad's"
	cont "Apricorn."
	
	para "The problem was,"
	line "they don't hold"
	cont "forever."
	
	para "If you stop"
	line "interacting, "
	para "the #mon"
	line "inside will go."
	
	para "So when your Dad"
	line "went off to start"
	para "his career with"
	line "for Silph's #-"
	para "ball R&D in"
	line "Kanto, he left"
	para "Cyndaquil for me"
	line "to take care of."

	para "Cyndaquil and I"
	line "watched him sail"
	cont "away from."

	para "If you ever want"
	line "to hear it again,"
	para "check the journal"
	line "in my house."
	done

CattleCull39HoneClaws:
	checkevent EVENT_GOT_HONE_CLAWS
	iftrue_jumptextfaceplayer NomadF_GotHoneClaws
	faceplayer
	opentext
	writetext HoneClawsText
	promptbutton
	verbosegivetmhm TM_HONE_CLAWS
	setevent EVENT_GOT_HONE_CLAWS
	jumpthisopenedtext

NomadF_GotHoneClaws:
	text "It's Hone Claws."
	line "Stay sharp!"
	done
	
HoneClawsText:
	text "We're adapting to"
	line "living on these"
	cont "cliffs for perpe-"
	cont "tuity, not just"
	cont "seasonal."
	
	para "Learning a new"
	line "skill is a good"
	cont "way to keep your"
	para "mind and body"
	line "on their toes!"
	
	para "Take this. Don't"
	line "be afraid of lea-"
	cont "rning new skills!"
	done

TaurosText:
	text "Tauros:"
	line "Mooo!"
	done

Miltank39Text:
	text "Miltank:"
	line "Moooooo!"
	done

TradersLandingAheadText:
	text "Trader's Landing"
	line "ahead: Managed"
	para "by the cerebral"
	line "General Kensey"
	done
