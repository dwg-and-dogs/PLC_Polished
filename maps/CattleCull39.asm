CattleCull39_MapScriptHeader: ;TODO putthe locations of everything 
	def_scene_scripts


	def_callbacks


	def_warp_events



	def_coord_events



	def_bg_events
	bg_event 14,  6, BGEVENT_JUMPTEXT, CattleCull39SignText


	def_object_events
	object_event 11, 16, SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, GenericTrainerNomadMDale, -1
	object_event 13, 20 SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, GenericTrainerNomadMJacob, -1
	object_event 7,  7, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, GenericTrainerNomadFMarlene, -1
	object_event 5,  29, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, GenericTrainerNomadFRin, -1
	object_event 13, 10, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CattleCullKurtText, EVENT_TALKED_TO_BARBEAU
	pokemon_event  5, 10, TAUROS, -1, -1, PAL_NPC_RED, TaurosText, -1;
	pokemon_event  4, 11, MILTANK, -1, -1, PAL_NPC_RED, Miltank39Text, -1;
	pokemon_event  9, 12, MILTANK, -1, -1, PAL_NPC_RED, Miltank39Text, -1;
	pokemon_event  6, 12, MILTANK, -1, -1, PAL_NPC_RED, Miltank39Text, -1;
	fruittree_event 2, 17, FRUITTREE_CATTLE_CULL_30, SITRUS_BERRY, PAL_NPC_RED
	object_event 5, 13, SPRITE_NOMAD_F, SSPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer, CattleCull39HoneClaws, -1	
	
	object_const_def

GenericTrainerNomadFMarlene:
   generictrainer NOMAD_F, MARLENE, EVENT_BEAT_NOMAD_F_MARLENE, NomadMarleneSeenText, NomadMarleneBeatenText


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
   generictrainer NOMAD_M, DALE, EVENT_BEAT_NOMAD_M_DALE, NomadDaleSeenText, NomadDaleBeatenText

   text "We read storms to"
   line "guide our kin."
   para "Now guards watch"
   line "our paths..."
   para "Who guards our"
   line "old wisdom?"
   done

NomadDaleSeenText:
   text "The winds speak"
   line "to wanderers..."
   para "Their weathermen"
   line "are deaf."
   done

NomadDaleBeatenText:
   text "You flow like the"
   line "changing tides."
   done



GenericTrainerNomadFRin:
   generictrainer NOMAD_F, RIN, EVENT_BEAT_NOMAD_F_RIN, NomadRinSeenText, NomadRinBeatenText

   text "Their new healing"
   line "house rises..."
   para "But health flowed"
   line "with movement."
   para "What sickness do"
   line "they fear most?"
   done

NomadRinSeenText:
   text "Our lives moved"
   line "with seasons."
   done

NomadRinBeatenText:
   text "True strength needs"
   line "freedom..."
   done

GenericTrainerNomadMJacob:
   generictrainer NOMAD_M, JACOB, EVENT_BEAT_NOMAD_M_JACOB, NomadJacobSeenText, NomadJacobBeatenText

   text "They say their"
   line "routes are safe."
   para "Safe for gold,"
   line "perhaps..."
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
	text "Emperor's Road-"
	line "Follow through"
	para "Cattle Cull to"
	line "Trader's Landing"
	done

CattleCullKurtText:
	text "I keep thinking"
	line "about your dad's"
	cont "Apricorn."
	
	para "The problem was,"
	line "they don't hold"
	cont "forever."
	
	para "If you stop"
	line "interacting, "
	cont "the #mon"
	cont "inside will go."
	
	para "So when your Dad"
	line "went off to work"
	cont "in Olivine, he"
	para "left the Cynda-"
	line "quil for me to"
	cont "take care."
	done

CattleCull39HoneClaws: ;CF THE ROUTE34GATE TEACHER
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
	cont "cliffs for the"
	cont "time being."
	
	para "Learning a new"
	line "skill is a good"
	cont "way to keep your"
	para "mind and body"
	line "on their toes!"
	
	para "Take this. Don't"
	line "be afraid of lea-"
	cont "rning new skills!"
	done
