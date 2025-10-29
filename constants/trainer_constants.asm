__trainer_class__ = 0

trainerclass: MACRO
\1 EQU __trainer_class__
__trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm).
; - TrainerClassAttributes (see data/trainers/attributes.asm).
; - TrainerClassDVsAndPersonality (see data/trainers/dvs.asm).
; - TrainerGroups (see data/trainers/party_pointers.asm).
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm).
; - TrainerPicPointers (see data/trainers/pic_pointers.asm).
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

KRIS EQU __trainer_class__
	trainerclass CARRIE ; 1

	trainerclass CAL ; 2

	trainerclass FALKNER ; 3

	trainerclass BUGSY ; 4

	trainerclass WHITNEY ; 5

	trainerclass MORTY ; 6

	trainerclass CHUCK ; 7

	trainerclass JASMINE ; 8

	trainerclass PRYCE ; 9

	trainerclass CLAIR ; a

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

	trainerclass MEJIMI ; 93

	trainerclass BRUNO ; d

	trainerclass SANDRA ; e replaces karen

	trainerclass KURT_FINAL ; f replaces lance and champion 

	trainerclass BROCK ; 10

	trainerclass SAMSARA ; 11 replaces misty

	trainerclass LT_SURGE ; 12

	trainerclass ERIKA ; 13

	trainerclass JANINE ; 14

	trainerclass SABRINA ; 15

	trainerclass HOLLIS ; 16 replaces blaine

	trainerclass BLUE ; 17

	trainerclass RED ; 18

	trainerclass LEAF ; 19

	trainerclass RIVAL0 ; 1a

	trainerclass RIVAL1 ; 1b
	const RIVAL1_4
	const RIVAL1_5
	const RIVAL1_6;
	const RIVAL1_7
	const RIVAL1_8
	const RIVAL1_9;
	const RIVAL1_10
	const RIVAL1_11
	const RIVAL1_12;
	const RIVAL1_13
	const RIVAL1_14
	const RIVAL1_15;

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
	const PETRY
	const GLYN
	const SMILTE

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
	const GRACE
	const REBECCA
	const DORIS
	const ESTHER
	const MATILDA
	const BETHANY

	trainerclass KIMONO_GIRL_1 ; 3d, red 
	const SAYO ; flareon 
	const AKARI ; JOLTEON 
	const MASAKO ; wc fire 
	const KROMA ; tinder garden 

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
	const LI
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
	const GAILANDELI1
	const GAILANDELI2
	const DUFFANDEDA1
	const DUFFANDEDA2
	const FOXANDRAE1
	const FOXANDRAE2
	const MOEANDLULU1
	const MOEANDLULU2
	const VICANDTARA1
	const VICANDTARA2
	const TIMANDSUE1
	const TIMANDSUE2
	const JOEANDJO1
	const JOEANDJO2

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

	trainerclass LADY ; 47
	const JESSICA

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
	const JEROME
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
	const DUNCAN
	const ORSON
	const COREY
	const PETE
	const LOUIS

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
	const INIGO
	const MANFORD
	const ANDER
	const TAKEO

	trainerclass BATTLE_GIRL ; 55
	const SUBARU
	const DIANE
	const KAGAMI
	const NOZOMI
	const RONDA
	const PADMA
	const EMY

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
	const BERNIE
	const LANG
	const HUGO
	const HOWARD
	const DWG
	const GOETH ; goethite 
	const NOBEL ; tnt, dynamite
	const INGSOL ; inventor of drill 


	trainerclass TEACHER ; 58
	const COLETTE


	trainerclass GUITARISTM ; 59
	const CLYDE


	trainerclass GUITARISTF ; 5a
	const JANET


	trainerclass BIKER ; 5b
	const DWAYNE


	trainerclass ROUGHNECK ; 5c
	const BRIAN


	trainerclass TAMER ; 5d
	const BRETT
	const VINCE
	const OSWALD

	trainerclass ARTIST ; 5e
	const REINA


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
	const CHESTER
	const HARI

	trainerclass SIGHTSEERF ; 63
	const ROSIE
	const KAMILA
	const NOELLE
	const PILAR
	const LENIE

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
	const COOLTRAINERM_COREY
	const COOLTRAINERM_RAYMOND
	const FERGUS

	trainerclass COOLTRAINERF ; 66
	const BETH1
	const BETH2
	const BETH3
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
	const SALMA
	const BONITA
	const SERA
	const NEESHA
	const CHIARA

	trainerclass ACE_DUO ; 67
	const ELANANDIDA1
	const ELANANDIDA2
	const ARAANDBELA1
	const ARAANDBELA2
	const THOMANDKAE1
	const THOMANDKAE2
	const ZACANDJEN1
	const ZACANDJEN2
	const JAKEANDBRI1
	const JAKEANDBRI2
	const DANANDCARA1
	const DANANDCARA2

	trainerclass NOMAD_M ; MOVED  ; FORMERLY BUCK 
	const NOMAD_M_JOEL
	const NOMAD_M_GLENN
	const NOMAD_M_DALE
	const NOMAD_M_JACOB
	const NOMAD_M_AIDEN
	const NOMAD_M_DAN
	const NOMAD_M_TEDDY
	const NOMAD_M_TYRONE 

	trainerclass NOMAD_F ; MOVED  ; FORMERLY CAITLIN 
	const NOMAD_F_REINA
	const NOMAD_F_ALINA
	const NOMAD_F_MARLENE
	const NOMAD_F_RIN
	const NOMAD_F_COLETTE
	const NOMAD_F_HILLARY
	const NOMAD_F_SHIRLEY
	const NOMAD_F_KATHRYN
	const NOMAD_F_CLARICE

	trainerclass VETERANM ; 68
	const MATT
	const REMY
	const BARKHORN

	trainerclass VETERANF ; 69
	const JOANNE
	const SYLVIE
	const LITVYAK

	trainerclass PROTON ; 6a
	const PROTON1
	const PROTON2

	trainerclass PETREL ; 6b
	const PETREL1
	const PETREL2

	trainerclass ARCHER ; 6c
	const ARCHER1
	const ARCHER2

	trainerclass ARIANA ; 6d
	const ARIANA1
	const ARIANA2

	trainerclass GIOVANNI ; 6e
	const GIOVANNI1
	const GIOVANNI2

	trainerclass PROF_OAK ; 6f

	trainerclass PROF_ELM ; 70

	trainerclass PROF_IVY ; 71

	trainerclass MYSTICALMAN ; 72
	const EUSINE

	trainerclass KARATE_KING ; 73
	const KIYO

	trainerclass OSTENE ; 74

	trainerclass JESSIE_JAMES ; 75

	trainerclass LORELEI ; 76

	trainerclass AGATHA ; 77

	trainerclass STEVEN ; 78

	trainerclass CYNTHIA ; 79

	trainerclass AMOS ; 7a INVER

	trainerclass CHERYL ; 7b

	trainerclass RILEY ; 7c

	trainerclass MARLEY ; 7e

	trainerclass MIRA ; 7f

	trainerclass LANNA ; 80 anabel

	trainerclass DARACH ; 81

	trainerclass BOBESH ; 83 CANDELA
	const BOBESH1
	const BOBESH2

	trainerclass ADRINNA ; 84 BLANCHE
	const ADRINNA1
	const ADRINNA2
	const ADRINNA3

	trainerclass BARBEAU ; 85 SPARK_T

	trainerclass FLANNERY ; 86

	trainerclass KANNA ; 87

	trainerclass SKYLA ; 88

	trainerclass VALERIE ; 89

	trainerclass KUKUI ; 8a

	trainerclass VICTOR  ; 8b

	trainerclass BILL_T ; 8c

	trainerclass TAMMY ; 8d

	trainerclass SILVER ; 8e

	trainerclass IMAKUNI ; 8f

	trainerclass KENSEY ; 90 lawrence
	const KENSEY1
	const KENSEY2

	trainerclass REI ; 91

NUM_TRAINER_CLASSES EQU __trainer_class__ - 1

	trainerclass OMASTAR_FOSSIL ; 92

	trainerclass KABUTOPS_FOSSIL ; 93

	trainerclass AERODACTYL_FOSSIL ; 94

	trainerclass CUBONE_ARMOR ; 95

	trainerclass METEORITE ; 96

	trainerclass SILHOUETTE ; 97

NUM_TRAINER_CLASS_PICS EQU __trainer_class__ - 1
