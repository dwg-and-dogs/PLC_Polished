HollysHoltCredit_MapScriptHeader:
	def_scene_scripts
	scene_script HollyHoltCreditScene 

	def_callbacks


	def_warp_events
	warp_event 10, 25, DEBUG_ROOM, 1 ; WARP INTO 


	def_coord_events


	def_bg_events


	def_object_events
	object_event  8, 25, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18, 38, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17, 37, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 

LoadSelectedMonData::
    ; --- 1. FIND ADDRESS OF CHOSEN MON'S STRUCT ---
    ld a, [wCurPartyMon]        ; Get the slot number (0-5)
    ld hl, wPartyMons           ; Start of party data
    ld bc, PARTYMON_STRUCT_LENGTH ; Size of one mon entry
    rst AddNTimes               ; HL = wPartyMons + (Slot * StructSize)
    
    ; HL is now pointing to the start of the specific mon's data
    ; Save this location because we need to peek at it twice (Species & Level)
    push hl                     
    
    ; --- 2. GET SPECIES NAME -> wStringBuffer1 ---
    ld a, [hl]                  ; First byte of struct is ALWAYS Species ID
    ld [wNamedObjectIndex], a   ; Set for lookup
    call GetPokemonName         ; Writes name to wStringBuffer1
    
    pop hl                      ; Restore pointer to the struct
    push hl                     ; Save it again for the Level step
    
    ; --- 3. GET LEVEL -> wStringBuffer3 ---
    ld bc, MON_LEVEL            ; The distance from start of struct to Level byte
    add hl, bc                  ; HL now points directly at the Level byte
    
    ld d, h                     ; Move HL to DE (PrintNum needs Source in DE)
    ld e, l                     
    
    ld hl, wStringBuffer3       ; Destination Buffer
    lb bc, 1, 3                 ; 1 Byte, 3 Digits
    call PrintNum               ; Convert level number to text
    ld [hl], "@"                ; Add terminator

    pop hl                      ; Restore pointer (just to clean up stack)

    ; --- 4. GET NICKNAME -> wStringBuffer2 ---
    ld a, [wCurPartyMon]        ; Reload slot number
    ld hl, wPartyMonNicknames   ; Start of nickname list
    ld bc, MON_NAME_LENGTH      ; Length of one name
    rst AddNTimes               ; HL = wPartyMonNicknames + (Slot * 11)
    
    ld d, h                     ; Move Source to DE (Wait, CopyBytes is HL->DE usually?)
    ld e, l                     ; Let's check standard CopyBytes usage:
                                ; It is usually HL (Source) -> DE (Dest).
                                ; So keep Source in HL.
    
    ld de, wStringBuffer2       ; Destination
    ld bc, MON_NAME_LENGTH      ; Length to copy
    rst CopyBytes               ; Copy the name
    ret

HollyHoltCreditScene: 
	;MOVING CAMERA
	; warp in at 10, 25
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 120
	applymovement PLAYER, HH_Credit_Move1
	pause 120
	applymovement PLAYER, HH_Credit_Move2
	pause 120
	; hall of fame section 
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
    pause 120
	waitbutton
	closetext
; need the following for later cutscenes 
	setevent EVENT_BURNED_TOWER_B1F_BEASTS_1
	clearevent EVENT_BURNED_TOWER_B1F_BEASTS_2
	setevent EVENT_STADIUM_GROUNDS_FIRST_FLOOD
	setevent EVENT_STADIUM_GROUNDS_SECOND_FLOOD
	warp STADIUM_GROUNDS_CREDIT, 8, 35
	end


HH_Credit_Move1: ; goes to 21 25
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

HH_Credit_Move2: ; goes to 21 43
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
