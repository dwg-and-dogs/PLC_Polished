CreditsPokemonAll_MapScriptHeader:
	def_scene_scripts
	scene_script CreditsPokemonAllScene

	def_callbacks


	def_warp_events
	;  warp in at 4, 5

	def_coord_events


	def_bg_events


	def_object_events




CreditsPokemonAllScene: 
	applyonemovement PLAYER, hide_object

	special FadeOutPalettes
	loadmem wCurForm, -1 ; force
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies... seems to work either way 
	callasm LoadSelectedMonData ; Calculates everything for Slot 2 automatically    
    opentext
	loadmem wCurForm, -1

	loadmem wCurPartyMon, 1    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic2 0	
    writethistext
        text_ram wStringBuffer1 ; "PIDGEY"
        text " Lv."             ; " Lv."
        text_ram wStringBuffer3 ; "  5"
        line " "                ; New line
        text_ram wStringBuffer2 ; "BIRDY"
        done
    pause 30
	waitbutton
	closetext
	warp STADIUM_GROUNDS_CREDIT, 8, 35
	end
