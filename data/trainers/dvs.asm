TrainerClassDVsAndPersonality:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 6, TrainerClassDVsAndPersonality
	;  EVs  HP   Def  SAt  Ability  Gender
	;  *    Atk  Spd  SDf  Nature   Form
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; carrie
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; cal
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; falkner
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; bugsy
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; whitney
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; morty
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; chuck
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; jasmine
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; pryce
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; clair
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; KURT
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; MEJIMI
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; bruno
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; SANDRA
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; KURT_FINAL
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; brock
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE  ; Samsara
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; lt surge
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; erika
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; janine
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; sabrina
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; Hollis
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; blue
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; red
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; leaf
	db  0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; rival0
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; rival1
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; rival2
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; lyra1
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; lyra2
	db  0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; youngster
	db  0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; bug catcher
	db  0, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; camper
	db  0, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; picnicker
	db  0, $88, $88, $88, ABILITY_1 | QUIRKY, FEMALE ; twins
	db  0, $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; fisher
	db  0, $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; bird keeper
	db  0, $99, $99, $99, ABILITY_1 | QUIRKY, MALE   ; hiker
	db  0, $88, $88, $88,  ABILITY_1 | QUIRKY, MALE   ; Brigader
	db  0, $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; gruntf
	db  0, $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; pokefanm
	db  0, $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; pokefanf
	db  0, $DD, $BB, $DB, ABILITY_1 | QUIRKY, MALE   ; officerm
	db  0, $7B, $DB, $DD, ABILITY_1 | QUIRKY, FEMALE ; officerf
	db  0, $E5, $FA, $D6, ABILITY_1 | QUIRKY, FEMALE ; nurse
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; pokemaniac
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; cosplayer
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; super nerd
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; lass
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; beauty
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; bug maniac
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; ruin maniac
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; firebreather
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; juggler
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; schoolboy
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; schoolgirl
	db  0, $AA, $CC, $DD, ABILITY_1 | QUIRKY, MALE   ; psychic
	db  0, $AA, $CC, $DD, ABILITY_1 | QUIRKY, FEMALE ; hex maniac
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; sage
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; medium
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 1
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 2
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 3
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 4
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 5
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; elder
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; sr&jr
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; couple
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; gentleman
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; rich boy (high EVs from vitamins)
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; lady
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; breeder (low EVs due to breeding)
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; baker
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; cowgirl
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; sailor
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; swimmerm
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; swimmerf
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; burglar
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; pi
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; scientist
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; rocket scientist
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; boarder
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; skier
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; blackbelt
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; battle girl
	db  0, $DF, $DF, $DD, ABILITY_1 | QUIRKY, MALE   ; dragon tamer
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; engineer
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; teacher
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; guitaristm
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; guitaristf
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; biker
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; roughneck
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; tamer
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; artist
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; aroma lady
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; waiter
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; waitress
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; sightseerm
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; sightseerf
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; sightseers
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; cooltrainerm
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; cooltrainerf
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; ace duo
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; NOMAD_M
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; NOMAD_F
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; veteranm
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; veteranf
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; proton
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; petrel
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; archer
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; ariana
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; giovanni
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; prof oak
	db  0, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; prof elm
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; prof ivy
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; mysticalman
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; karate king
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; towertycoon-OSTENE
	db  0, $BB, $B8, $BB, ABILITY_1 | QUIRKY, MALE   ; jessie&james
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; lorelei
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; agatha
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; steven
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; cynthia
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; inver/AMOS
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; cheryl
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; riley
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; marley
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; mira
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; anabel-LANNA
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; darach
	db  0, $DD, $DD, $DD,  ABILITY_1 | LONELY, FEMALE ; candela/BOBESH
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; blanche/ADRINNA
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; spark/BOBESH
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; flannery
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; maylene/KANNA
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; skyla
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; valerie
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; kukui
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; victor
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; bill
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; yellow/TAMMY
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; silver
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; imakuni
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; lawrence/KENSEY
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; rei
	assert_table_length NUM_TRAINER_CLASSES
