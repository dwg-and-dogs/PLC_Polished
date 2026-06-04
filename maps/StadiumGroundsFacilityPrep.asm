StadiumGroundsFacilityPrep_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	
	
	def_warp_events
	warp_event 13, 23, STADIUM_GROUNDS, 6
	warp_event 14, 23, STADIUM_GROUNDS, 6
	; todo warp in from stadium grounds 
	
	def_coord_events 


	def_bg_events




	def_object_events ; depending on time of day TODO 
	; time of day 
; FROM POLISHED azalea mart 
;	object_event  8,  6, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, (1 << EVE) | (1 << NITE), PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaMartRockerText, -1
; 	object_event  5,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, PlayersNeighborsHusbandText, -1

	object_event 11, 14, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityUrsulaScript, -1  ; morning 
	object_event 29, 20, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilitySilasScript, -1 ; day 
	object_event 12, 14, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, FacilityBethScript, -1 ; morning 
	object_event 26, 19, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, FacilitySandraScript, -1 ; night 
	object_event 28, 18, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilitySybilScript, -1 ; day 
	object_event 16, 12, SPRITE_BRIGADER, SPRITEMOVEDATA_WANDER, 1, 1, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, FacilityTysonScript, -1 ; night 
	object_event 16, 18, SPRITE_NOMAD_F, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FacilityNomadFScript, EVENT_NOMAD_ISLANDS_HOUSE ; morning
	object_event 25, 17, SPRITE_BARBEAU, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FacilityBarbeauScript, -1   ; day 
	object_event 12, 20, SPRITE_KANNA, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityPetraScript, -1  ; night 
	object_event 12, 18, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FacilityAmosScript, -1  ; morning 
	object_event  3, 19, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FacilityPiperScript, -1 ; day 
	; permanent 
;	object_event 13, 11, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumGroundsFaciltyPrepClerkScript, -1
	object_event 14, 11, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumGroundsFaciltyPrepClerkScript2, -1
	object_event 15, 20, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityNatuScript, -1
	object_event 0, 17, SPRITE_SILVER_TROPHY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, SilverTrophyText, EVENT_FACILITY_SILVER_TROPHY
;	object_event 34, 74, SPRITE_TROPHY_MON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TrophyPokemonScript, EVENT_TROPHY_MON  todo initialize 
;	object_event 1, 17, SPRITE_GOLD_TROPHY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldTrophyScript, EVENT_FACILITY_GOLD_TROPHY ; todo add, and initialize 
	; trophy / doll of pokemon that you beat the gauntlet with by itself 


	object_const_def
	const FACILITY_URSULA
	const FACILITY_SILAS
	const FACILITY_BETH
	const FACILITY_SANDRA
	const FACILITY_SYBIL
	const FACILITY_TYSON
	const FACILITY_NOMAD_F
	const FACILITY_BARBEAU
	const FACILITY_PETRA
	const FACILITY_AMOS
	const FACILITY_PIPER

FacilityNatuScript:
	opentext
	writetext NatuFacilityText
	promptbutton
	special PokemonCenterPC
	endtext
	end

NatuFacilityText:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."
	done	

StadiumGroundsFaciltyPrepClerkScript:
	faceplayer
	opentext
	writetext FacilityPrep_ExplainText
	waitbutton
	yesorno
	iffalse .NoExplain
	writetext FacilityPrep_ExplainFullText
	waitbutton
.NoExplain:
	; check if > 1 in your party
	; if > 1, .PleaseReducePartySize
	writetext FacilityPrep_AreYouReadyText
	waitbutton
	yesorno
	iffalse_jumptext FacilityPrep_GetReadyText
	; movement, warp you and the clerk to the Facility 
	end
	
FacilityPrep_ExplainText:
	text "Welcome to the"
	line "Gauldenrod"
	cont "Stadium!"
	
	para "It's a true test"
	line "for trainers to"
	para "demonstrate their"
	line "skills in battle"
	para "and in catching"
	line "#mon."
	
	para "Would you like me"
	line "to explain how"
	cont "it works?"
	done

FacilityPrep_ExplainFullText:
	text "You enter with 1"
	line "#mon and try"
	para "to get through"
	line "5 rounds."
	
	para "Each round has"
	line "the following"
	cont "structure:"
	
	para "First, you will"
	line "battle a #mon"
	para "that you have the"
	line "option to catch."
	
	para "If you fail to"
	line "catch it, then"
	para "you will have one"
	line "more chance to"
	para "catch a different"
	line "#mon."
	
	para "Then your team is"
	line "healed by one of"
	cont "our clerks,"
	
	para "and you can set"
	line "your new team's"
	para "items, moves,"
	line "and party order."
	
	para "Then there is a"
	line "gauntlet of three"
	para "ordinary trainers"
	line "and then a final"
	para "boss for the"
	line "round."
	
	para "You may enter at"
	line "whatever level"
	para "you like, but I"
	line "suggest Lv. 100."
	done

FacilityPrep_AreYouReadyText:
	text "Are you ready?"
	done

FacilityPrep_GetReadyText:
	text "OK, you need"
	line "more time."
	done

FacilityPiperScript:
	faceplayer
	opentext
	writetext FacilityPiperIntroText
	waitbutton
	writetext FacilityPiperQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityPiperRefusedText
	winlosstext FacilityPiperWinText, FacilityPiperLossText
	setlasttalked FACILITY_PIPER
	loadtrainer KIMONO_GIRL_1, PIPER_KG 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByPiper
	setevent EVENT_FACILITY_BEAT_PIPER
.DefeatedByPiper:
	showtext FacilityPiperAfter
	special HealPartyEvenForNuzlocke
	end

FacilityPiperIntroText:	
	text_high
    text " Piper: "
	next
	text_start 

	text "<PLAYER>, thank"
	line "you for your help"
	cont "at the Tapestry."
	
	para "Surely your story"
	line "will be told for"
	para "hundreds of years"
	line "from now!"
	
	para "You showed us we"
	line "should not hide"
	para "our gifts in fear"
	line "but share them"
	cont "with others!"	
	done
	
FacilityPiperAfter:
	text_high
    text " Piper: "
	next
	text_start 
	text "We can battle as"
	line "much as you like."
	done

FacilityPiperQuestionText:
	text_high
    text " Piper: "
	next
	text_start 
	text "I've been training"
	line "a #mon team."
	
	para "Would you like to"
	line "battle?"
	done

FacilityPiperRefusedText:
	text_high
    text " Piper: "
	next
	text_start 
	text "Some other time!"
	done

FacilityPiperWinText:
	text "Wow, I learned a"
	line "lot from you!"
	done

FacilityPiperLossText:
	text "Wow! I'm getting"
	line "good at this!"
	done
	
FacilityUrsulaScript:
	faceplayer
	opentext
	writetext FacilityUrsulaIntroText
	waitbutton
	writetext FacilityUrsulaQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityUrsulaRefusedText
	winlosstext FacilityUrsulaWinText, FacilityUrsulaLossText
	setlasttalked FACILITY_URSULA
	loadtrainer TAMMY, URSULA_FACILITY ; party is done 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByUrsula
	setevent EVENT_FACILITY_BEAT_URSULA
.DefeatedByUrsula:
	showtext FacilityUrsulaAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityUrsulaIntroText:
	text_high
    text " Ursula: "
	next
	text_start 
	text "<PLAYER>, thank"
	line "you for your help"
	cont "at Anarres."
	
	para "The Pineco are no"
	line "longer a threat"
	cont "to the forest."
	done
	
FacilityUrsulaAfter:
	text_high
    text " Ursula: "
	next
	text_start 
	text "What have you"
	line "taught someone"
	cont "lately?"
	done

FacilityUrsulaQuestionText:
	text_high
    text " Ursula: "
	next
	text_start 
	text "I've been training"
	line "a lot since we"
	cont "first battled."
	
	para "Would you like to"
	line "battle again?"
	done
	
FacilityUrsulaRefusedText:
	text "Some other time."
	done
	
FacilityUrsulaWinText:
	text "You're still a"
	line "tough trainer!"
	done

FacilityUrsulaLossText:
	text "Hah! This time I"
	line "came out ahead!"
	done

FacilitySilasScript:
	faceplayer
	opentext
	writetext FacilitySilasIntroText
	waitbutton
	writetext FacilitySilasQuestionText
	yesorno
	iffalse_jumpopenedtext FacilitySilasRefusedText
	winlosstext FacilitySilasWinText, FacilitySilasLossText
	setlasttalked FACILITY_SILAS
	loadtrainer HOLLIS, HOLLIS_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedBySilas
	setevent EVENT_FACILITY_BEAT_SILAS
.DefeatedBySilas:
	showtext FacilitySilasAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilitySilasIntroText:
	text_high
    text " Silas: "
	next
	text_start 
	text "<PLAYER>, thank"
	line "you for helping"
	para "me to see that"
	line "some adaptation"
	para "is necessary to"
	line "grow."
	
	para "With the forest"
	line "in crisis, I was"
	para "afraid of Ursula's"
	line "invention."
	para "I thought I knew"
	line "it all!"
	
	para "I hope the Ilex"
	line "Forest doesn't"
	para "have a crisis"
	line "like that for a"
	cont "long time."
	done

FacilitySilasAfter:
	text_high
    text " Silas: "
	next
	text_start 
	text "Say, how's your"
	line "grandpa?"
	done

FacilitySilasQuestionText:
	text_high
    text " Silas: "
	next
	text_start 
	text "Say, think I can"
	line "teach you a few"
	cont "things in battle?"
	done

FacilitySilasRefusedText:
	text "Some other time."
	done

FacilitySilasWinText:
	text "Ha! I still have"
	line "so much to learn!"
	done

FacilitySilasLossText:
	text "Ha! You still"
	line "have so much to"
	cont "learn!"
	done

FacilityBethScript:
	faceplayer
	opentext
	writetext FacilityBethIntroText
	waitbutton
	writetext FacilityBethQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityBethRefusedText
	winlosstext FacilityBethWinText, FacilityBethLossText
	setlasttalked FACILITY_BETH
	loadtrainer COOLTRAINERF, BETH_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByBeth
	setevent EVENT_FACILITY_BEAT_BETH
.DefeatedByBeth:
	showtext FacilityBethAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityBethIntroText:
	text_high
    text " Beth: "
	next
	text_start 
	text "<PLAYER>, thank"
	line "you for helping"
	para "us save Sandra at"
	line "the Stadium."
	
	para "It's surreal to"
	line "be here after"
	cont "Tyrus is gone."	
	done
	
FacilityBethAfter:
	text_high
    text " Beth: "
	next
	text_start 
	text "I'm going to keep"
	line "training to be as"
	cont "strong as Sandra!"
	done

FacilityBethQuestionText:
	text_high
    text " Beth: "
	next
	text_start 
	text "Say, I've been"
	line "training up my"
	para "#mon since we"
	line "last talked."
	
	para "Want to battle?"
	done

FacilityBethRefusedText:
	text "Some other time."
	done
	
FacilityBethWinText:
	text "You really dug"
	line "deep!"
	done

FacilityBethLossText:
	text "I need to dig"
	line "deeper!"
	done

FacilitySandraScript:
	faceplayer
	opentext
	writetext FacilitySandraIntroText
	waitbutton
	writetext FacilitySandraQuestionText
	yesorno
	iffalse_jumpopenedtext FacilitySandraRefusedText
	winlosstext FacilitySandraWinText, FacilitySandraLossText
	setlasttalked FACILITY_SANDRA
	loadtrainer SANDRA, SANDRA_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedBySandra
	setevent EVENT_FACILITY_BEAT_SANDRA
.DefeatedBySandra:
	showtext FacilitySandraAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilitySandraIntroText:
	text_high
    text " Sandra: "
	next
	text_start 
	text "<PLAYER>, thank"
	line "you for your help"
	cont "at the Stadium."
	
	para "I hope that you"
	line "learned what the"
	para "most dangerous"
	line "invention is."
	
	para "Now that Tyrus is"
	line "gone, we can make"
	para "the stadium into"
	line "a positive place"
	para "for trainers to"
	line "share battling"
	cont "strategies."
	done
	
FacilitySandraAfter:
	text_high
    text " Sandra: "
	next
	text_start 
	text "Remember, a tree"
	line "needs its highest"
	para "branches and its"
	line "deepest roots."
	done
	
FacilitySandraQuestionText:
	text_high
    text " Sandra: "
	next
	text_start 

	text "Speaking of "
	line "#mon battles,"
	
	para "would you like to"
	line "battle me?"
	done

FacilitySandraRefusedText:
	text "Some other time."
	done

FacilitySandraWinText:
	text "Your connection"
	line "is still strong!"
	done
	
FacilitySandraLossText:
	text "Now that was"
	line "thrilling!"
	done

FacilitySybilScript:
	faceplayer
	opentext
	writetext FacilitySybilIntroText
	waitbutton
	writetext FacilitySybilQuestionText
	yesorno
	iffalse_jumpopenedtext FacilitySybilRefusedText
	winlosstext FacilitySybilWinText, FacilitySybilLossText
	setlasttalked FACILITY_SYBIL
	loadtrainer SAMSARA, SAMSARA_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedBySybil
	setevent EVENT_FACILITY_BEAT_SYBIL
.DefeatedBySybil:
	showtext FacilitySybilAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilitySybilIntroText:
	text_high
    text " Sybil: "
	next
	text_start 
	text "<PLAYER>, thank"
	line "you for your help"
	cont "at the Tin Tower."
	
	para "todo"
	done
	
FacilitySybilAfter:
	text_high
    text " Sybil: "
	next
	text_start 
	text "May Johto never"
	line "forget what was"
	cont "sacrificed at the"
	cont "Burned Tower."
	done

FacilitySybilQuestionText:
	text_high
    text " Sybil: "
	next
	text_start 

	text "Would you like to"
	line "battle?"
	done

FacilitySybilRefusedText:
	text "Some other time."
	done

FacilitySybilWinText:
	text "Your battle style"
	line "is a revelation!"
	done

FacilitySybilLossText:
	text "I had the spirits"
	line "on my side!"
	done

FacilityTysonScript:
	faceplayer
	opentext
	writetext FacilityTysonIntroText
	waitbutton
	writetext FacilityTysonQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityTysonRefusedText
	winlosstext FacilityTysonWinText, FacilityTysonLossText
	setlasttalked FACILITY_TYSON
	loadtrainer BRIGADER, 22
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByTyson
	setevent EVENT_FACILITY_BEAT_TYSON
.DefeatedByTyson:
	showtext FacilityTysonAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityTysonIntroText:
	text_high
    text " Tyson: "
	next
	text_start 
	text "I trained under"
	line "General Andrea"
	cont "for years."
	
	para "I left behind my"
	line "family and my"
	cont "friends pursuing"
	cont "glory under her."
	
	para "The mine is gone!"
	line "The sweat of my"
	cont "brow, gone like a"
	cont "drop of dew in"
	cont "the evening."
	
	para "I hope it's not"
	line "too late to start"
	cont "over."
	done
	
FacilityTysonAfter:
	text_high
    text " Tyson: "
	next
	text_start 
	text "Please forgive me"
	line "for my mistakes."
	done
	
FacilityTysonQuestionText:
	text_high
    text " Tyson: "
	next
	text_start 
	text "Will you battle"
	line "me again?"
	
	para "I need to see"
	line "your connection."
	done

FacilityTysonRefusedText:
	text_high
    text " Tyson: "
	next
	text_start 
	text "Why? Why do you"
	line "refuse me!"
	done

FacilityTysonWinText:
	text "What do you have"
	line "that I lack?"
	done

FacilityTysonLossText:
	text "Glory is mine!"
	done

FacilityNomadFScript:
	faceplayer
	opentext
	writetext FacilityNomadFIntroText
	waitbutton
	writetext FacilityNomadFQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityNomadFRefusedText
	winlosstext FacilityNomadFWinText, FacilityNomadFLossText
	setlasttalked FACILITY_NOMAD_F
	loadtrainer NOMAD_F, NOMAD_F_MOTHER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByNomadF
	setevent EVENT_FACILITY_BEAT_NOMADF
.DefeatedByNomadF:
	showtext FacilityNomadFAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityNomadFIntroText:
	text_high
    text " Maia: "
	next
	text_start 
	text "<PLAYER>, thank"
	line "you for helping"
	para "my son return"
	line "home safely."
	done
	
FacilityNomadFAfter:
	text_high
    text " Maia: "
	next
	text_start 
	text "You must be so"
	line "proud of your"
	cont "#mon!"
	done
	
FacilityNomadFQuestionText:
	text_high
    text " Maia: "
	next
	text_start 
	text "I would like to"
	line "battle you, if"
	cont "you accept."
	done
	
FacilityNomadFRefusedText:
	text "Some other time."
	done

FacilityNomadFWinText:
	text "You must come"
	line "from a strong"
	cont "community!"
	done

FacilityNomadFLossText:
	text "I've still got"
	line "my battle skills!"
	done

FacilityBarbeauScript:
	faceplayer
	opentext
	writetext FacilityBarbeauIntroText
	waitbutton
	writetext FacilityBarbeauQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityBarbeauRefusedText
	winlosstext FacilityBarbeauWinText, FacilityBarbeauLossText
	setlasttalked FACILITY_BARBEAU
	loadtrainer BARBEAU, REMY_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByBarbeau
	setevent EVENT_FACILITY_BEAT_BARBEAU
.DefeatedByBarbeau:
	showtext FacilityBarbeauAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityBarbeauIntroText:
	text_high
    text " Remy: "
	next
	text_start 
	text "<PLAYER>, I see"
	line "that I had my"
	para "head stuck in the"
	line "sand when it came"
	para "to relying on"
	line "Lugia for our"
	cont "livelihoods."
	
	para "I'm learning that"
	line "the winds help"
	para "those who help"
	line "themselves."
	
	done
	
FacilityBarbeauAfter:
	text_high
    text " Remy: "
	next
	text_start 
	
	text "The Landing still"
	line "doesn't feel like"

	para "home. I think I'll"
	line "make a home at"
	para "that rocky shore"
	line "to the west of"
	cont "the islands."
		
	done
	
FacilityBarbeauQuestionText:
	text_high
    text " Remy: "
	next
	text_start 
	text "I've been training"
	line "my #mon since"
	cont "we last met."
	
	para "Would you like to"
	line "battle?"
	done
	
FacilityBarbeauRefusedText:
	text "Some other time."
	done

FacilityBarbeauWinText:
	text "Hah! The wind was"
	line "in your sails!"
	done

FacilityBarbeauLossText:
	text "The wind was with"
	line "my #mon!"
	done

FacilityPetraScript:
	faceplayer
	opentext
	writetext FacilityPetraIntroText
	waitbutton
	writetext FacilityPetraQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityPetraRefusedText
	winlosstext FacilityPetraWinText, FacilityPetraLossText
	setlasttalked FACILITY_PETRA
	loadtrainer KANNA, KANNA_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByPetra
	setevent EVENT_FACILITY_BEAT_PETRA
.DefeatedByPetra:
	showtext FacilityPetraAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityPetraIntroText:
	text_high
    text " Petra: "
	next
	text_start 
	text "The Hisuians will"
	line "not return for"
	cont "the annual ritual"
	
	para "but I still have"
	line "interest in"
	cont "visiting."
	
	para "Especially now"
	line "that the Emperor"
	cont "is gone."
	
	para "We Hisuians are"
	line "born to explore,"
	para "then return to "
	line "our home with the"
	cont "learning we find."
	done
	
FacilityPetraAfter:
	text_high
    text " Petra: "
	next
	text_start 
	text "Say, do you know"
	line "if the alpine"
	para "villages to the"
	line "east will ever"
	cont "open up?"
	done
	
FacilityPetraQuestionText:
	text_high
    text " Petra: "
	next
	text_start 
	text "Would you like to"
	line "battle, to show"
	para "me something new?"
	done

FacilityPetraRefusedText:
	text "Some other time."
	done
	
FacilityPetraWinText:
	text "What a unique"
	line "battle strategy!"
	done
	
FacilityPetraLossText:
	text "I hope you were"
	line "paying attention!"
	done

FacilityAmosScript:
	faceplayer
	opentext
	writetext FacilityAmosIntroText
	waitbutton
	writetext FacilityAmosQuestionText
	yesorno
	iffalse_jumpopenedtext FacilityAmosRefusedText
	winlosstext FacilityAmosWinText, FacilityAmosLossText
	setlasttalked FACILITY_AMOS
	loadtrainer AMOS, AMOS_FACILITY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .DefeatedByAmos
	setevent EVENT_FACILITY_BEAT_AMOS
.DefeatedByAmos:
	showtext FacilityAmosAfter
	special HealPartyEvenForNuzlocke
	end
	
FacilityAmosIntroText:
	text_high
    text " Amos: "
	next
	text_start 
	text "<PLAYER>, I'm glad"
	line "to see you made"
	para "it out of the"
	line "Burned Tower."
	
	para "Ho-Oh must have "
	line "seen that your"
	cont "heart is pure."
	done
	
FacilityAmosAfter:
	text_high
    text " Amos: "
	next
	text_start 
	text "Where do you see"
	line "yourself in the"
	cont "future?"
	
	done
	
FacilityAmosQuestionText:
	text_high
    text " Amos: "
	next
	text_start 
	text "Would you like to"
	line "battle, for old"
	cont "time's sake?"
	done
	
FacilityAmosRefusedText:
	text "Some other time."
	done
	
FacilityAmosWinText:
	text "Your skills are"
	line "still sharp!"
	done
	
FacilityAmosLossText:
	text "Your skills are"
	line "becoming dull!"
	done

SilverTrophyText:
	text "It's the Silver"
	line "trophy!"
	done

StadiumGroundsFaciltyPrepClerkScript2:
	faceplayer
	opentext
	checkevent EVENT_FACILITY_SILVER_TROPHY
	iffalse_jumptext CongratsSilverTrophyText
	writetext SilverTrophyExplainText
	waitbutton
	checkevent EVENT_FACILITY_BEAT_URSULA
	iffalse_jumptext FacilityRecruitUrsula
	checkevent EVENT_FACILITY_BEAT_SILAS
	iffalse_jumptext FacilityRecruitSilas
	checkevent EVENT_FACILITY_BEAT_BETH
	iffalse_jumptext FacilityRecruitBeth
	checkevent EVENT_FACILITY_BEAT_SANDRA
	iffalse_jumptext FacilityRecruitSandra
	checkevent EVENT_FACILITY_BEAT_SYBIL
	iffalse_jumptext FacilityRecruitSybil
	checkevent EVENT_FACILITY_BEAT_TYSON
	iffalse_jumptext FacilityRecruitTyson
	checkevent EVENT_NOMAD_ISLANDS_HOUSE
	iftrue_jumptext FacilityRecruitNomadf2
	checkevent EVENT_FACILITY_BEAT_NOMADF
	iffalse_jumptext FacilityRecruitNomadf
	checkevent EVENT_FACILITY_BEAT_BARBEAU
	iffalse_jumptext FacilityRecruitBarbeau
	checkevent EVENT_FACILITY_BEAT_PETRA
	iffalse_jumptext FacilityRecruitPetra
	checkevent EVENT_FACILITY_BEAT_AMOS
	iffalse_jumptext FacilityRecruitAmos
	checkevent EVENT_FACILITY_BEAT_PIPER
	iffalse_jumptext FacilityRecruitPiper
	
	clearevent EVENT_FACILITY_SILVER_TROPHY
	jumptext CongratsSilverTrophyText2
		
SilverTrophyExplainText:
	text "The Stadium was"
	line "abandoned by the"
	cont "Emperor, but it"
	
	para "attracts strong"
	line "trainers from"
	cont "around Johto."
	
	para "If you defeat all"
	line "of them,"
	
	para "I can award you a"
	line "Silver Trophy!"
	
	para "Let's check!"
	done
	
CongratsSilverTrophyText:
	text "Congratulations"
	line "on earning the"
	cont "Silver Trophy!"
	
	para "It's on display"
	line "at the Trophy"
	cont "room."
	done

CongratsSilverTrophyText2:
	text "Congratulations"
	line "on earning the"
	cont "Silver Trophy!"
	
	para "It will be on"
	line "display soon."
	done

FacilityRecruitUrsula:
	text "Oh, you haven't"
	line "beaten Ursula."
	
	para "She visits in the"
	line "morning."
	done

FacilityRecruitSilas:
	text "Oh, you haven't"
	line "beaten Silas."
	
	para "He visits during"
	line "the day."
	done

FacilityRecruitBeth:
	text "Oh, you haven't"
	line "beaten Beth."
	
	para "She visits in the"
	line "morning."
	done

FacilityRecruitSandra:
	text "Oh, you haven't"
	line "beaten Sandra."
	
	para "She visits at"
	line "night."
	done

FacilityRecruitSybil:
	text "Oh, you haven't"
	line "beaten Sybil."
	
	para "She visits during"
	line "the day."
	done

FacilityRecruitTyson:
	text "Oh, you haven't"
	line "beaten Tyson."
	
	para "He visits during"
	line "the night."
	done

FacilityRecruitNomadf:
	text "Oh, you haven't"
	line "beaten Maia."
	
	para "She visits in the"
	line "morning."
	done

FacilityRecruitBarbeau:
	text "Oh, you haven't"
	line "beaten Remy."
	
	para "He visits during"
	line "the day."
	done

FacilityRecruitPetra:
	text "Oh, you haven't"
	line "beaten Petra."
	
	para "She visits during"
	line "the night."
	done

FacilityRecruitAmos:
	text "Oh, you haven't"
	line "beaten Amos."
	
	para "He visits in the"
	line "morning."
	done

FacilityRecruitPiper:
	text "Oh, you haven't"
	line "beaten Piper."
	
	para "She visits during"
	line "the day."
	done

FacilityRecruitNomadf2:
	text "Oh, Maia from the"
	line "Landing hasn't"
	cont "checked in yet."
	
	para "She's been worried"
	line "about her son."
	done
