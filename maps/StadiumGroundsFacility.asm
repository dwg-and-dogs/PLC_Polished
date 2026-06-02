StadiumGroundsFacility_MapScriptHeader:
	def_scene_scripts
	; going to need a wram variable TODO 
		; wram for trainer 1, 2, 3 ( 1- 10 no repeats) 
		; wram for pokemon 1 (1 - 20) 
	; prevent saving 
	; spawn point here unless you have not yet beaten the game then it sends you to azalea 
	
	def_callbacks
	callback MAPCALLBACK_OBJECTS, StadiumGroundsFacilityNPCs ; c.f. the hidden groto 
	
	def_warp_events
	; you're warped in and out of these 
	
	def_coord_events 



	def_bg_events


	def_object_events
	; pokemon 1 
	; bug maniacs 
	; hollis 

	; pokemon 2
	; aroma ladies
	; sandra 
	
	; pokemon 3
	; sages
	; sybil

	; pokemon 4
	; nomadf
	; remy

	; pokemon 5
	; ninjas 
	; amos


	
	object_const_def


StadiumGroundsFacilityScript:
	; random 1-5, for now we just do these in order
	; set the spawn to gauldenrod 
	opentext
	writethistext
		text "<PLAYER>!"
		line "Prove youself as"
		cont "a master of both"
		cont "catching and"
		cont "battling!"
		done
	waitbutton
	closetext
	
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	; random 1- 5
	loadwildmon SCYTHER, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS -- SCYTHER LEFTIES
;	loadwildmon KLEAVOR, 100 ; CHECK MOVES AT LV 100  HARD STONE 
;	loadwildmon MINSIR, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon YANMEGA, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon HELECTRODE, 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; GLSOWKING 
; HERACROSS 
; FORRETRESS 
; AMAGCARGO 
	startbattle
	ifequal $1, .Continue
	
	; heal the PLAYER
	; allow them to reorganize the party and items 
	; then prompt to start the battles 
	
	; now start the trainers, up to three 

	winlosstext SGF_Tier1_WinText, SGF_Tier1_LoseText
	; START 
; random 1 - 3
	loadtrainer BUG_MANIAC, BUG_MANIAC_SGF_1
	startbattle
	ifequal $1, .Continue2
.Continue2:
	reloadmapafterbattle
; random 4 - 6
	winlosstext SGF_Tier1_WinText, SGF_Tier1_LoseText
	loadtrainer BUG_MANIAC, BUG_MANIAC_SGF_4
	startbattle
	ifequal $1, .Continue2
; random 7 - 9
	winlosstext SGF_Tier1_WinText, SGF_Tier1_LoseText
	loadtrainer BUG_MANIAC, BUG_MANIAC_SGF_7
	startbattle
	ifequal $1, .Continue2






; SANDRAS MONS 
	loadwildmon CLEFABLE, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon RAPIDASH GALARIAN, 100 ; CHECK MOVES AT LV 100 
;	loadwildmon GALARIAN WEEZING, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon SNEASLER, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon RAPIDASH, 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; NIDOQUEEN 
; BLISSEY 
; TOGEKISS 
; AMEGNAIUM 







; SYBIL MONS 
	loadwildmon MISMAGIUS, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon GENGAR, 100 ; CHECK MOVES AT LV 100 
;	loadwildmon WYRDEER, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon CROBAT, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon ANNIHILAPE , 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; NIDOQUEEN 
; HOUNDOOM  
; BSCULAEION  
; DRIFBLIM
; SPIRITOMB
; ENTEI 
; ANOCTOWL 
; AXATU 

; REMY  MONS 
	loadwildmon LANTURN, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon QUGASIRE , 100 ; CHECK MOVES AT LV 100 
;	loadwildmon GDOS, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon JUMPLUFF, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon TENTACRURL , 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; OCTILLERY  
; FROLSASS 
; SUICUNE   



; AMOS   MONS 
	loadwildmon HGOODRA, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon ABOMOASNOW  , 100 ; CHECK MOVES AT LV 100 
;	loadwildmon GALLADE, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon FERALIGAR, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon MEGANIUM , 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; BRONZONG   
; URSALUNA
; AKAZM 
; TTAR
; DNITE
; RAIKOU    
