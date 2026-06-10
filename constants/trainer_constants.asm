__trainer_class__ = 0

trainerclass: MACRO
\1 EQU __trainer_class__
__trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)..
; - TrainerClassAttributes (see data/trainers/attributes.asm)..
; - TrainerClassDVsAndPersonality (see data/trainers/dvs.asm)..
; - TrainerGroups (see data/trainers/party_pointers.asm)..
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)..
; - TrainerPicPointers (see data/trainers/pic_pointers.asm). ; todo from here 
; - TrainerPalettes (see data/trainers/palettes.asm).
; - BTTrainerClassSprites (see data/trainers/sprites.asm).
; - BTTrainerClassGenders (see data/trainers/genders.asm).
; trainer constants are indexes for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_LYRA
	const PHONECONTACT_BUENA

KRIS EQU __trainer_class__ ; 
	trainerclass CARRIE ; 1 unused 

	trainerclass CAL ; 2 unused 

	trainerclass FALKNER ; 3 done  
	const FALKNER_EASY
	const FALKNER_NORMAL
	const FALKNER_HARD
	

	trainerclass BUGSY ; 4 DONE 
	const BUGSY_EASY
	const BUGSY_NORMAL
	const BUGSY_HARD

	trainerclass WHITNEY ; 5 DONE 
	const WHITNEY_EASY
	const WHITNEY_NORMAL
	const WHITNEY_HARD

	trainerclass MORTY ; 6 done 
	const MORTY_EASY
	const MORTY_NORMAL
	const MORTY_HARD

	trainerclass CHUCK ; 7 done
	const CHUCK_EASY
	const CHUCK_NORMAL
	const CHUCK_HARD

	trainerclass JASMINE ; 8 done 
	const JASMINE_EASY
	const JASMINE_NORMAL
	const JASMINE_HARD

	trainerclass PRYCE ; 9 done
	const PRYCE_EASY
	const PRYCE_NORMAL
	const PRYCE_HARD

	trainerclass CLAIR ; a DONE 
	const CLAIR_EASY
	const CLAIR_NORMAL
	const CLAIR_HARD

	trainerclass KURT ; 92
	const KURT1 ; HOLLIS , rowlet pikachu teddiursa cyndaquil gastly lv 9 
	const KURT2 ; SANDRA , oshawott yanma chikorita skiploom snubbul lv 14 
	const KURT3 ; WHITNEY , clefairy pinsir nidorina mareep sunflora lv 17 
	const KURT4 ; FALKNER , hitmontop magmar dratini electabuzz magnemite lv 21 
	const KURT5 ; dance theatre , stantler growlithe poliwhirl dugtrio grimer lv 24 
	const KURT6 ; wc dorms , eevee skarmory misdreavus dunsparce togetic lv 26
	const KURT7 ; BARBEAU , grotle gligar girafarig tauros slowpoke lv 29
	const KURT8 ; JASMINE , persian froslass drifblim seadra shuckle lv 33
	const KURT9 ; PRYCE , tauros houndour miltank muk corsola lv 36 
	const KURT10 ; SINJOH , donphan azumarill bastiodon lopunny kirlia lv 40 
	const KURT11 ; AMOS , starvia drapion roselia lucario hbraviary lv 43 
	const KURT12 ; whispering way , nidoking nidoqueen yanmega ursaring snorlax lv 46 
	const KURT13 ; TOP OF TIN TOWER , in the bell tower, high exp yield pokemon 

	trainerclass MEJIMI ; 93 DONE 
	const MEJIMI_EASY
	const MEJIMI_NORMAL
	const MEJIMI_HARD

	trainerclass BRUNO ; d

	trainerclass SANDRA ; e replaces karen DONE
	const SANDRA1_EASY
	const SANDRA1_NORMAL
	const SANDRA1_HARD
	const SANDRA2_EASY ; DONE 2
	const SANDRA2_NORMAL
	const SANDRA2_HARD
	const SANDRA_FACILITY

	trainerclass KURT_FINAL ; f DONE 
	const KURT_FINAL_EASY
	const KURT_FINAL_NORMAL
	const KURT_FINAL_HARD

	trainerclass BROCK ; 10

	trainerclass SAMSARA ; 11 replaces misty DONE 
	const SAMSARA_EASY
	const SAMSARA_NORMAL
	const SAMSARA_HARD
	const SAMSARA_FACILITY

	trainerclass LT_SURGE ; 12

	trainerclass ERIKA ; 13

	trainerclass JANINE ; 14

	trainerclass SABRINA ; 15

	trainerclass HOLLIS ; 16 replaces blaine
	const HOLLIS1_EASY ;DONE
	const HOLLIS1_NORMAL
	const HOLLIS1_HARD
	const HOLLIS2_EASY; DONE 
	const HOLLIS2_NORMAL
	const HOLLIS2_HARD
	const HOLLIS_FACILITY

	trainerclass BLUE ; 17

	trainerclass RED ; 18

	trainerclass LEAF ; 19

	trainerclass RIVAL0 ; 1a

	trainerclass RIVAL1 
	const RIVAL1_1_EASY
	const RIVAL1_1_NORMAL
	const RIVAL1_1_HARD
	const RIVAL1_2_EASY
	const RIVAL1_2_NORMAL
	const RIVAL1_2_HARD
	const RIVAL1_3_EASY
	const RIVAL1_3_NORMAL
	const RIVAL1_3_HARD
	const RIVAL1_4_EASY
	const RIVAL1_4_NORMAL
	const RIVAL1_4_HARD
	const RIVAL1_5_EASY
	const RIVAL1_5_NORMAL
	const RIVAL1_5_HARD
	const RIVAL1_6_EASY
	const RIVAL1_6_NORMAL
	const RIVAL1_6_HARD
	const RIVAL1_7_EASY
	const RIVAL1_7_NORMAL
	const RIVAL1_7_HARD
	const RIVAL1_8_EASY
	const RIVAL1_8_NORMAL
	const RIVAL1_8_HARD
	const RIVAL1_9_EASY
	const RIVAL1_9_NORMAL
	const RIVAL1_9_HARD
	const RIVAL1_10_EASY
	const RIVAL1_10_NORMAL
	const RIVAL1_10_HARD
	const RIVAL1_11_EASY
	const RIVAL1_11_NORMAL
	const RIVAL1_11_HARD
	const RIVAL1_12_EASY
	const RIVAL1_12_NORMAL
	const RIVAL1_12_HARD
	const RIVAL1_13_EASY
	const RIVAL1_13_NORMAL
	const RIVAL1_13_HARD
	const RIVAL1_14_EASY
	const RIVAL1_14_NORMAL
	const RIVAL1_14_HARD
	const RIVAL1_15_EASY
	const RIVAL1_15_NORMAL
	const RIVAL1_15_HARD

	trainerclass RIVAL2 ; 1c

	trainerclass NINJA ; 1d FORMERLY LYRA1
	const NINJA1
	const NINJA2
	const NINJA3
	const NINJA4
	const NINJA5
	const NINJA6
	const NINJA7
	const NINJA8
	const NINJA9
	const NINJA10
	const NINJA11
	const NINJA12

	trainerclass LYRA2 ; 1e

	trainerclass YOUNGSTER ; 1f
	const JOEY1
	const MIKEY
	const ALBERT
	const GORDON
	const WARREN
	const JIMMY
	const OWEN
	const JASON
	const YOUNGSTER_JOSH
	const REGIS
	const ALFIE
	const OLIVER
	const CHAZ
	const TYLER

	trainerclass BUG_CATCHER ; 20
	const WADE1
	const ARNIE1
	const DON
	const BENNY
	const AL
	const JOSH
	const KEN
	const WAYNE
	const OSCAR
	const CALLUM
	const DAVID

	trainerclass CAMPER ; 21
	const TODD1
	const TODD2
	const TODD3
	const TODD4
	const TODD5
	const ROLAND
	const IVAN
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const TED
	const JOHN
	const JERRY
	const SPENCER
	const QUENTIN
	const GRANT
	const CRAIG
	const FELIX
	const TANNER
	const CLARK
	const PEDRO

	trainerclass PICNICKER ; 22
	const LIZ1
	const GINA1
	const GINA2
	const GINA3
	const GINA4
	const GINA5
	const ERIN1
	const ERIN2
	const ERIN3
	const TIFFANY1
	const TIFFANY2
	const TIFFANY3
	const TIFFANY4
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const HEIDI
	const EDNA
	const TANYA
	const LILY
	const PIPER
	const GINGER
	const CHEYENNE
	const ADRIAN

	trainerclass TWINS ; 23
	const AMYANDMAY1
	const AMYANDMAY2
	const ANNANDANNE1
	const ANNANDANNE2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2
	const DAYANDDANI1
	const DAYANDDANI2
	const KAYANDTIA1
	const KAYANDTIA2

	trainerclass FISHER ; 24
	const RALPH1
	const RALPH2
	const RALPH3
	const RALPH4
	const RALPH5
	const TULLY
	const TULLY2
	const TULLY3
	const TULLY4
	const WILTON1
	const WILTON2
	const WILTON3
	const JUSTIN
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const ANDRE
	const RAYMOND
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const SCOTT
	const PATON
	const KILEY
	const FRANCIS
	const LEROY
	const KYLER
	const MURPHY
	const LIAM
	const GIDEON
	const DUNDEE
	const HALL
	const DALLAS

	trainerclass BIRD_KEEPER ; 25
	const VANCE1
	const VANCE2
	const VANCE3
	const JOSE1
	const JOSE2
	const JOSE3
	const ROD
	const ABE
	const THEO
	const TOBY
	const DENIS
	const HANK
	const HANK1
	const BORIS
	const BOB
	const PETER
	const PERRY
	const BRET
	const MICK
	const POWELL
	const BIRD_KEEPER_TONY
	const JULIAN
	const BIRD_KEEPER_JUSTIN
	const GAIL
	const BIRD_KEEPER_JOSH
	const BERT
	const ERNIE
	const KINSLEY
	const EASTON
	const BRYAN
	const TRENT

	trainerclass HIKER ; 26
	const ANTHONY1;
	const ANTHONY2
	const ANTHONY3
	const ANTHONY4
	const ANTHONY5
	const PARRY1;
	const PARRY2
	const PARRY3
	const RUSSELL;
	const PHILLIP;
	const LEONARD
	const BENJAMIN
	const ERIK
	const MICHAEL
	const TIMOTHY
	const BAILEY
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const EDWIN
	const DEVIN
	const SEAMUS
	const TONY
	const MARCOS
	const GERARD
	const DENT
	const BRUCE
	const DWIGHT
	const LESTER
	const GRADY
	const STEVE
	const DERRICK
	const FLOYD

	trainerclass BRIGADER

	trainerclass GRUNTF

	trainerclass POKEFANM
	const DEREK1
	const DEREK2
	const DEREK3
	const WILLIAM
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const ALEX
	const REX
	const ALLAN

	trainerclass POKEFANF ; 2a
	const BEVERLY1
	const BEVERLY2
	const BEVERLY3
	const RUTH
	const GEORGIA
	const JAIME
	const BOONE
	const ELEANOR

	trainerclass OFFICERM ; 2b
	const KEITH
	const DIRK

	trainerclass OFFICERF ; 2c
	const JAMIE
	const MARA
	const JENNY

	trainerclass NURSE ; 2d
	const JOY

	trainerclass POKEMANIAC ; 2e
	const BRENT1
	const BRENT2
	const BRENT3
	const BRENT4
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const RON
	const ETHAN
	const ISSAC
	const DONALD
	const ZACH
	const MILLER
	const AIDAN
	const CLIVE

	trainerclass COSPLAYER ; 2f
	const CLARA
	const CHLOE
	const BROOKE
	const KUROKO

	trainerclass SUPER_NERD ; 30
	const STAN
	const ERIC
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const HUGH
	const MARKUS
	const CARY
	const WALDO
	const MERLE
	const LUIS
	const JOVAN
	const MIGUEL
	const RORY
	const GREGG
	const FOOTE
	const DAVE
	const MAKO

	trainerclass LASS ; 31
	const DANA1
	const DANA2
	const DANA3
	const DANA4
	const DANA5
	const CATHY
	const AMANDA
	const KRISE
	const CONNIE
	const LINDA
	const LAURA
	const SHANNON
	const MICHELLE
	const ELLEN
	const IRIS
	const MIRIAM
	const LAYLA
	const ROSE
	const MEADOW
	const JENNIFER
	const GINA
	const ALICE
	const DUPLICA

	trainerclass BEAUTY ; 32
	const VICTORIA
	const SAMANTHA
	const CASSIE
	const JULIA
	const VALENCIA
	const OLIVIA
	const CALLIE
	const CASSANDRA
	const CHARLOTTE
	const BRIDGET
	const VERONICA
	const BEAUTY_NICOLE
	const RACHAEL
	const IOANA

	trainerclass BUG_MANIAC ; 33
	const LOU
	const ROB
	const ED
	const DOUG
	const DANE
	const DION
	const STACEY
	const ELLIS
	const ABNER
	const KENTA
	const ROBBY
	const PIERRE
	const DYLAN
	const KAI

	trainerclass RUIN_MANIAC ; 34 
	const JONES
	const LELAND
	const PETRY1_EASY 
	const PETRY1_NORMAL
	const PETRY1_HARD
	const PETRY2_EASY 
	const PETRY2_NORMAL
	const PETRY2_HARD

	trainerclass FIREBREATHER ; 35
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE
	const JAY
	const OLEG
	const TALA

	trainerclass JUGGLER ; 36
	const IRWIN1
	const FRITZ
	const HORTON

	trainerclass SCHOOLBOY ; 37
	const JACK1
	const JACK2
	const JACK3
	const JACK4
	const JACK5
	const ALAN1
	const ALAN2
	const ALAN3
	const ALAN4
	const ALAN5
	const CHAD1
	const CHAD2
	const CHAD3
	const CHAD4
	const CHAD5
	const KIPP
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const NATE
	const RICKY
	const SHERMAN
	const SCHOOLBOY_CONNOR
	const TORIN
	const TRAVIS

	trainerclass SCHOOLGIRL ; 38
	const MOLLY
	const ELIZA
	const FAITH
	const SARAH
	const ISABEL
	const IMOGEN

	trainerclass PSYCHIC_T ; 39
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY
	const LEON


	trainerclass HEX_MANIAC ; 3a
	const TAMARA
	const ASHLEY
	const AMY
	const LUNA
	const NATALIE
	const VIVIAN


	trainerclass SAGE ; 3b
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const URI
	const VIRGIL

	trainerclass MEDIUM ; 3c
	const MARTHA
	const REBECCA
	const DORIS
	const MATILDA ; HM?
	const BETHANY ; HM? 

	trainerclass KIMONO_GIRL_1 ; 3d, red 
	const SAYO ; flareon 
	const AKARI ; JOLTEON 
	const MASAKO ; wc fire 
	const KROMA ; tinder garden 
	const PIPER_KG ; facility 

	trainerclass KIMONO_GIRL_2 ; 3e, purple? 
	const ZUKI ; ESPEON 
	const EMI ; SYLVEON 

	trainerclass KIMONO_GIRL_3 ; 3f, green 
	const NAOKO ; leafeon 

	trainerclass KIMONO_GIRL_4 ; 40, blue 
	const IZUMI ; glaceon 
	const KUNI ; vaporeon 
	const HARUKO ; wc water 

	trainerclass KIMONO_GIRL_5 ; 41, brown / orange 
	const MIKI
	const TAMIKO ; wc electric 

	trainerclass ELDER ; 42
	const LI_EASY
	const LI
	const LI_HARD
	const GAKU ; STUDY 
	const MASA ; PROPER
	const KOJI ; PEACE 
	;new
	const NOBORU ; RISE fly 
	const TAKASHI ; NOBLE dragon 
	const ISAMU ; COURAGE  
	const KAITO ; SEA, SOAR water 
	const HIROSHI ; GENEROUS 
	const AKIRA ; BRIGHT electric 
	const TADAO ; LOYAL ground 
	const SATORU ; WISE psychic 
	const YOSHI_SAGE ; VIRTUOUS 


	trainerclass SR_AND_JR ; 43
	const JOANDCATH1
	const JOANDCATH2
	const IVYANDAMY1
	const IVYANDAMY2
	const BEAANDMAY1
	const BEAANDMAY2

	trainerclass COUPLE ; 44


	trainerclass GENTLEMAN ; 45
	const PRESTON
	const EDWARD
	const GREGORY
	const ALFRED
	const MILTON
	const CAMUS
	const GEOFFREY

	trainerclass RICH_BOY ; 46
	const WINSTON
	const GERALD
	const IRVING
	const IRVING_HARD ; DONE 

	trainerclass HISUI_FEMALE ; 47
	const DARLA
	const LORENA
	const GRACE
	const ESTHER

	trainerclass BREEDER ; 48
	const JULIE
	const THERESA
	const JODY
	const CARLENE
	const SOPHIE
	const BRENDA

	trainerclass BAKER ; 49
	const CHELSIE
	const SHARYN
	const MARGARET
	const OLGA

	trainerclass COWGIRL ; 4a
	const ANNIE
	const APRIL


	trainerclass SAILOR ; 4b
	const HUEY1
	const HUEY2
	const HUEY3
	const HUEY4
	const EUGENE ; ANCHORAGE
	const TERRELL; ANCHORAGE
	const KENT; ANCHORAGE
	const ERNEST; ANCHORAGE
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const PARKER
	const EDDIE
	const HARVEY

	trainerclass SWIMMERM ; 4c
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE ; leader 
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const GEORGE_HARD ; DONE 
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const WALTER
	const LEWIS
	const MICHEL
	const LUCAS
	const FRANK
	const NADAR
	const CONRAD
	const ROMEO
	const MALCOLM
	const ARMAND
	const THOMAS
	const SWIMMERM_LUIS
	const ELMO
	const DUANE
	const ESTEBAN
	const EZRA
	const ASHE

	trainerclass SWIMMERF ; 4d
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const MARY
	const DAWN
	const NICOLE
	const LORI
	const NIKKI
	const DIANA
	const BRIANA
	const VIOLA
	const KATIE
	const JILL
	const LISA
	const ALISON
	const STEPHANIE
	const CAROLINE
	const NATALIA
	const BARBARA
	const SALLY
	const TARA
	const MINA
	const LEONA
	const CHELAN
	const KENDRA
	const WODA
	const RACHEL
	const MARINA

	trainerclass BURGLAR ; 4e


	trainerclass PI ; 4f
	const LOOKER

	trainerclass SCIENTIST ; 50
	const LOWELL
	const DENNETT
	const LINDEN
	const OSKAR
	const BRAYDON
	const CARL
	const DEXTER
	const JOSEPH
	const NIGEL
	const PIOTR
	const ARI

	trainerclass ROCKET_SCIENTIST ; 51
	const ROSS

	trainerclass BOARDER ; 52
	const RONALD
	const BRAD
	const DOUGLAS
	const SHAUN
	const BRYCE
	const STEFAN
	const MAX

	trainerclass SKIER ; 53
	const ROXANNE
	const CLARISSA
	const CADY
	const MARIA
	const BECKY

	trainerclass BLACKBELT_T ; 54
	const KENJI1
	const YOSHI
	const LAO
	const NOB
	const LUNG
	const WAI


	trainerclass BATTLE_GIRL ; 55
	const SUBARU
	const DIANE
	const KAGAMI
	const NOZOMI
	const RONDA


	trainerclass DRAGON_TAMER ; 56
	const PAUL
	const DARIN
	const HANK2
	const JONES2
	const LELAND2
	const AEGON

	trainerclass ENGINEER ; 57
	const SMITH
	const CAMDEN
	const CAMDEN_HARD
	const BERNIE
	const LANG
	const HUGO
	const HOWARD
	const DWG
	const GOETH ; goethite 
	const NOBEL ;
	const INGSOL ;  


	trainerclass TEACHER ; 58


	trainerclass GUITARISTM ; 59



	trainerclass GUITARISTF ; 5a


	trainerclass BIKER ; 5b


	trainerclass ROUGHNECK ; 5c


	trainerclass TAMER ; 5d
	const BRETT
	const VINCE
	const OSWALD

	trainerclass ARTIST ; 5e
	const REINA
	const MARIO 

	trainerclass AROMA_LADY ; 5f 
	const DAHLIA
	const BRYONY
	const HEATHER
	const HOLLY
	const PEONY
	const ROSA


	trainerclass WAITER ; 60

	trainerclass WAITRESS ; 61

	trainerclass SIGHTSEERM ; 62
	const JASKA
	const BLAISE
	const GARETH


	trainerclass SIGHTSEERF ; 63
	const ROSIE
	const KAMILA
	const NOELLE
	const PILAR
	const LENIE
	const FLO
	const SOFIE

	trainerclass SIGHTSEERS ; 64



	trainerclass COOLTRAINERM ; 65
	const GAVEN1
	const GAVEN2
	const GAVEN3
	const NICK
	const AARON
	const CODY
	const MIKE
	const RYAN
	const BLAKE
	const ANDY
	const SEAN
	const KEVIN
	const ALLEN
	const FRENCH
	const HENRI
	const CONNOR
	const KIERAN
	const FINCH
	const PETRIE


	trainerclass COOLTRAINERF ; 66
	const BETH1_EASY ; done 
	const BETH2_NORMAL
	const BETH3_HARD 
	const BETH_FACILITY
	const REENA1
	const REENA2
	const REENA3
	const GWEN
	const LOIS
	const FRAN
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const MEGAN
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN


	trainerclass ACE_DUO ; 67


	trainerclass NOMAD_M ; MOVED 
	const NOMAD_M_JOEL
	const NOMAD_M_GLENN
	const NOMAD_M_DALE
	const NOMAD_M_JACOB


	trainerclass NOMAD_F ; MOVED   
	const NOMAD_F_REINA
	const NOMAD_F_ALINA
	const NOMAD_F_MARLENE
	const NOMAD_F_RIN
	const NOMAD_F_MOTHER

	trainerclass VETERANM ; 68
	const MATT

	trainerclass VETERANF ; 69
	const JOANNE
	const SYLVIE

	trainerclass PROTON ; 6a CHECKED

	trainerclass PETREL ; 6b CHECKED

	trainerclass ARCHER ; 6c CHECKED

	trainerclass ARIANA ; 6d CHECKED

	trainerclass GIOVANNI ; 6e CHECKED

	trainerclass PROF_OAK ; 6f CHECKED

	trainerclass PROF_ELM ; 70 CHECKED

	trainerclass PROF_IVY ; 71 CHECKED

	trainerclass MYSTICALMAN ; 72 CHECKED
	const EUSINE

	trainerclass KARATE_KING ; 73 CHECKED

	trainerclass OSTENE ; 74 CHECKED

	trainerclass JESSIE_JAMES ; 75 CHECKED

	trainerclass LORELEI ; 76 CHECKED

	trainerclass AGATHA ; 77 CHECKED

	trainerclass STEVEN ; 78 CHECKED

	trainerclass CYNTHIA ; 79 CHECKED

	trainerclass AMOS ; 7a  ; CHECKED
	const AMOS1_EASY
	const AMOS1_NORMAL
	const AMOS1_HARD ; DONE 
	const AMOS2_EASY
	const AMOS2_NORMAL
	const AMOS2_HARD ; DONE 
	const AMOS_FACILITY

	trainerclass CHERYL ; 7b CHECKED

	trainerclass RILEY ; 7c CHECKED

	trainerclass MARLEY ; 7e CHECKED

	trainerclass NOMAD_F_FACILITY ; 7f CHECKED

	trainerclass BRIGADER_FACILITY ; 80 CHECKED todo convert to BRIGADER-FACILITY 

	trainerclass NINJA_FACILITY ; 81 todo convert to NINJA-FACLIITY  

	trainerclass BOBESH ; 83 CANDELA CHECKED
	const BOBESH1_EASY
	const BOBESH1_NORMAL
	const BOBESH1_HARD ; DONE 
	const BOBESH2_EASY
	const BOBESH2_NORMAL
	const BOBESH2_HARD
	const BOBESH2_HARD_POST  

	trainerclass ADRINNA ; 84 BLANCHE CHECKED
	const ADRINNA1_EASY
	const ADRINNA1_NORMAL
	const ADRINNA1_HARD ; DONE 
	const ADRINNA2_EASY
	const ADRINNA2_NORMAL
	const ADRINNA2_HARD ; DONE 
	const ADRINNA3_EASY
	const ADRINNA3_NORMAL
	const ADRINNA3_HARD
	const ADRINNA3_HARD_POST  

	trainerclass BARBEAU ; 85 DONE 
	const REMY1_EASY
	const REMY1_NORMAL
	const REMY1_HARD
	const REMY2_EASY
	const REMY2_NORMAL
	const REMY2_HARD
	const REMY_FACILITY

	trainerclass SAGE_FACILITY ; todo convert to SAGE-FACILITY

	trainerclass KANNA ; 87 DONE 
	const KANNA_EASY
	const KANNA_NORMAL
	const KANNA_HARD
	const KANNA_FACILITY

	trainerclass PKMN_TRAINER_HF_FACILITY ; 88 todo convert to PKMN-TRAINER-HF-FACILITY 

	trainerclass BUG_MANIAC_FACILITY ; 89 todo convert to BUGCATCHER-FACILITY

	trainerclass PKMN_TRAINER_HF ; 8a todo conver to PKMN-TRAINER-HF

	trainerclass PKMN_TRAINER_HM  ; 8b todo convert to PKMN-TRAINER-HM

	trainerclass TRAINEE ; 8c todo convert to TRAINEE 

	trainerclass TAMMY ; 8d DONE
	const TAMMY_EASY
	const TAMMY_NORMAL
	const TAMMY_HARD 
	const URSULA_FACILITY

	trainerclass SILVER ; 8e DONE  
	const SILVER_EASY
	const SILVER_NORMAL
	const SILVER_HARD 

	trainerclass IMAKUNI ; 8f checked 

	trainerclass KENSEY ; 90 CHECKED 
	const KENSEY1_EASY
	const KENSEY1_NORMAL
	const KENSEY1_HARD ; DONE 
	const KENSEY2_EASY
	const KENSEY2_NORMAL
	const KENSEY2_HARD
	const KENSEY2_HARD_POST  

	trainerclass REI ; 91 checked 

NUM_TRAINER_CLASSES EQU __trainer_class__ - 1

	trainerclass OMASTAR_FOSSIL ; 92

	trainerclass KABUTOPS_FOSSIL ; 93

	trainerclass AERODACTYL_FOSSIL ; 94

	trainerclass CUBONE_ARMOR ; 95

	trainerclass METEORITE ; 96

	trainerclass SILHOUETTE ; 97

NUM_TRAINER_CLASS_PICS EQU __trainer_class__ - 1
