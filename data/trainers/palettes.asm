TrainerPalettes:
; entries correspond to trainer classes
	table_width PAL_COLOR_SIZE * 2, TrainerPalettes

if !DEF(MONOCHROME)
ChrisPalette:            INCLUDE "gfx/trainers/cal.pal"
KrisPalette:
CarriePalette:           INCLUDE "gfx/trainers/carrie.pal"
CalPalette:              INCLUDE "gfx/trainers/cal.pal"
FalknerPalette:          INCLUDE "gfx/trainers/falkner.pal"
BugsyPalette:            INCLUDE "gfx/trainers/bugsy.pal"
WhitneyPalette:          INCLUDE "gfx/trainers/whitney.pal"
MortyPalette:            INCLUDE "gfx/trainers/morty.pal"
ChuckPalette:            INCLUDE "gfx/trainers/chuck.pal"
JasminePalette:          INCLUDE "gfx/trainers/jasmine.pal"
PrycePalette:            INCLUDE "gfx/trainers/pryce.pal"
ClairPalette:            INCLUDE "gfx/trainers/clair.pal"
KurtPalette:             INCLUDE "gfx/trainers/kurt.pal" ; match falkner, done
MejimiPalette:           INCLUDE "gfx/trainers/mejimi.pal" ; pruple and red
BrunoPalette:            INCLUDE "gfx/trainers/bruno.pal"
SandraPalette:           INCLUDE "gfx/trainers/sandra.pal" ; from karen; should be pink or red, check whitney palette
KurtFinalPalette:        INCLUDE "gfx/trainers/kurtfinal.pal" ; from champion 
BrockPalette:            INCLUDE "gfx/trainers/brock.pal"
SamsaraPalette:          INCLUDE "gfx/trainers/samsara.pal" ;dark blue
LtSurgePalette:          INCLUDE "gfx/trainers/lt_surge.pal"
ErikaPalette:            INCLUDE "gfx/trainers/erika.pal"
JaninePalette:           INCLUDE "gfx/trainers/janine.pal"
SabrinaPalette:          INCLUDE "gfx/trainers/sabrina.pal"
HollisPalette:           INCLUDE "gfx/trainers/hollis.pal" ; match bugsy
BluePalette:             INCLUDE "gfx/trainers/blue.pal"
RedPalette:              INCLUDE "gfx/trainers/red.pal"
LeafPalette:             INCLUDE "gfx/trainers/leaf.pal"
Rival0Palette:           INCLUDE "gfx/trainers/walker.pal" ;done
Rival1Palette:           INCLUDE "gfx/trainers/walker.pal" ;done
Rival2Palette:           INCLUDE "gfx/trainers/walker.pal" ;done
NinjaPalette:            INCLUDE "gfx/trainers/ninja.pal"
Lyra2Palette:            INCLUDE "gfx/trainers/lyra2.pal"
YoungsterPalette:        INCLUDE "gfx/trainers/youngster.pal"
BugCatcherPalette:       INCLUDE "gfx/trainers/bug_catcher.pal"
CamperPalette:           INCLUDE "gfx/trainers/camper.pal"
PicnickerPalette:        INCLUDE "gfx/trainers/picnicker.pal"
TwinsPalette:            INCLUDE "gfx/trainers/twins.pal"
FisherPalette:           INCLUDE "gfx/trainers/fisher.pal"
BirdKeeperPalette:       INCLUDE "gfx/trainers/bird_keeper.pal"
HikerPalette:            INCLUDE "gfx/trainers/hiker.pal"
BrigaderPalette:         INCLUDE "gfx/trainers/brigader.pal" ; purple
GruntfPalette:           INCLUDE "gfx/trainers/grunt_f.pal"
PokefanmPalette:         INCLUDE "gfx/trainers/pokefan_m.pal"
PokefanfPalette:         INCLUDE "gfx/trainers/pokefan_f.pal"
OfficermPalette:         INCLUDE "gfx/trainers/officer_m.pal"
OfficerfPalette:         INCLUDE "gfx/trainers/officer_f.pal"
NursePalette:            INCLUDE "gfx/trainers/nurse.pal"
PokemaniacPalette:       INCLUDE "gfx/trainers/pokemaniac.pal"
CosplayerPalette:        INCLUDE "gfx/trainers/cosplayer.pal"
SuperNerdPalette:        INCLUDE "gfx/trainers/super_nerd.pal"
LassPalette:             INCLUDE "gfx/trainers/lass.pal"
BeautyPalette:           INCLUDE "gfx/trainers/beauty.pal"
BugManiacPalette:        INCLUDE "gfx/trainers/bug_maniac.pal"
RuinManiacPalette:       INCLUDE "gfx/trainers/ruin_maniac.pal"
FirebreatherPalette:     INCLUDE "gfx/trainers/firebreather.pal"
JugglerPalette:          INCLUDE "gfx/trainers/juggler.pal"
SchoolboyPalette:        INCLUDE "gfx/trainers/schoolboy.pal"
SchoolgirlPalette:       INCLUDE "gfx/trainers/schoolgirl.pal"
PsychicTPalette:         INCLUDE "gfx/trainers/psychic_t.pal"
HexManiacPalette:        INCLUDE "gfx/trainers/hex_maniac.pal"
SagePalette:             INCLUDE "gfx/trainers/sage.pal"
MediumPalette:           INCLUDE "gfx/trainers/medium.pal"
KimonoGirl1Palette:      INCLUDE "gfx/trainers/kimono_girl_1.pal"
KimonoGirl2Palette:      INCLUDE "gfx/trainers/kimono_girl_2.pal"
KimonoGirl3Palette:      INCLUDE "gfx/trainers/kimono_girl_3.pal"
KimonoGirl4Palette:      INCLUDE "gfx/trainers/kimono_girl_4.pal"
KimonoGirl5Palette:      INCLUDE "gfx/trainers/kimono_girl_5.pal"
ElderPalette:            INCLUDE "gfx/trainers/elder.pal"
SrAndJrPalette:          INCLUDE "gfx/trainers/sr_and_jr.pal"
CouplePalette:           INCLUDE "gfx/trainers/couple.pal"
GentlemanPalette:        INCLUDE "gfx/trainers/gentleman.pal"
RichBoyPalette:          INCLUDE "gfx/trainers/rich_boy.pal"
LadyPalette:             INCLUDE "gfx/trainers/lady.pal"
BreederPalette:          INCLUDE "gfx/trainers/breeder.pal"
BakerPalette:            INCLUDE "gfx/trainers/baker.pal"
CowgirlPalette:          INCLUDE "gfx/trainers/cowgirl.pal"
SailorPalette:           INCLUDE "gfx/trainers/sailor.pal"
SwimmermPalette:         INCLUDE "gfx/trainers/swimmer_m.pal"
SwimmerfPalette:         INCLUDE "gfx/trainers/swimmer_f.pal"
BurglarPalette:          INCLUDE "gfx/trainers/burglar.pal"
PIPalette:               INCLUDE "gfx/trainers/pi.pal"
ScientistPalette:        INCLUDE "gfx/trainers/scientist.pal"
RocketScientistPalette:: INCLUDE "gfx/trainers/rocket_scientist.pal"
BoarderPalette:          INCLUDE "gfx/trainers/boarder.pal"
SkierPalette:            INCLUDE "gfx/trainers/skier.pal"
BlackbeltTPalette:       INCLUDE "gfx/trainers/blackbelt_t.pal"
BattleGirlPalette:       INCLUDE "gfx/trainers/battle_girl.pal"
DragonTamerPalette:      INCLUDE "gfx/trainers/dragon_tamer.pal"
EngineerPalette:         INCLUDE "gfx/trainers/engineer.pal"
TeacherPalette:          INCLUDE "gfx/trainers/teacher.pal"
GuitaristmPalette:       INCLUDE "gfx/trainers/guitarist_m.pal"
GuitaristfPalette:       INCLUDE "gfx/trainers/guitarist_f.pal"
BikerPalette:            INCLUDE "gfx/trainers/biker.pal"
RoughneckPalette:        INCLUDE "gfx/trainers/roughneck.pal"
TamerPalette:            INCLUDE "gfx/trainers/tamer.pal"
ArtistPalette:           INCLUDE "gfx/trainers/artist.pal"
AromaLadyPalette:        INCLUDE "gfx/trainers/aroma_lady.pal"
WaiterPalette:           INCLUDE "gfx/trainers/waiter.pal"
WaitressPalette:         INCLUDE "gfx/trainers/waitress.pal"
SightseermPalette:       INCLUDE "gfx/trainers/sightseer_m.pal"
SightseerfPalette:       INCLUDE "gfx/trainers/sightseer_f.pal"
SightseersPalette:       INCLUDE "gfx/trainers/sightseers.pal"
CooltrainermPalette:     INCLUDE "gfx/trainers/cooltrainer_m.pal"
CooltrainerfPalette:     INCLUDE "gfx/trainers/cooltrainer_f.pal"
AceDuoPalette:           INCLUDE "gfx/trainers/ace_duo.pal"
NomadMPalette:             INCLUDE "gfx/trainers/nomad_m.pal"
NomadFPalette:          INCLUDE "gfx/trainers/nomad_f.pal"
VeteranmPalette:         INCLUDE "gfx/trainers/veteran_m.pal"
VeteranfPalette:         INCLUDE "gfx/trainers/veteran_f.pal"
ProtonPalette:           INCLUDE "gfx/trainers/proton.pal"
PetrelPalette:           INCLUDE "gfx/trainers/petrel.pal"
ArcherPalette:           INCLUDE "gfx/trainers/archer.pal"
ArianaPalette:           INCLUDE "gfx/trainers/ariana.pal"
GiovanniPalette:         INCLUDE "gfx/trainers/giovanni.pal"
ProfOakPalette:          INCLUDE "gfx/trainers/oak.pal"
ProfElmPalette:          INCLUDE "gfx/trainers/elm.pal"
ProfIvyPalette:          INCLUDE "gfx/trainers/ivy.pal"
MysticalmanPalette:      INCLUDE "gfx/trainers/mysticalman.pal"
KarateKingPalette:       INCLUDE "gfx/trainers/karate_king.pal"
OstenePalette:           INCLUDE "gfx/trainers/ostene.pal" ;green?
JessieJamesPalette:      INCLUDE "gfx/trainers/jessie_james.pal"
LoreleiPalette:          INCLUDE "gfx/trainers/lorelei.pal"
AgathaPalette:           INCLUDE "gfx/trainers/agatha.pal"
StevenPalette:           INCLUDE "gfx/trainers/steven.pal"
CynthiaPalette:          INCLUDE "gfx/trainers/cynthia.pal"
AmosPalette:             INCLUDE "gfx/trainers/amos.pal" ; plum?
CherylPalette:           INCLUDE "gfx/trainers/cheryl.pal"
RileyPalette:            INCLUDE "gfx/trainers/riley.pal"
MarleyPalette:           INCLUDE "gfx/trainers/marley.pal"
MiraPalette:             INCLUDE "gfx/trainers/mira.pal"
LannaPalette:            INCLUDE "gfx/trainers/lanna.pal" ; yellow light
DarachPalette:           INCLUDE "gfx/trainers/darach.pal"
BobeshPalette:           INCLUDE "gfx/trainers/bobesh.pal" ; red
AdrinnaPalette:          INCLUDE "gfx/trainers/adrinna.pal" ; yellow, dark
BarbeauPalette:          INCLUDE "gfx/trainers/barbeau.pal" ; blue
FlanneryPalette:         INCLUDE "gfx/trainers/flannery.pal"
KannaPalette:            INCLUDE "gfx/trainers/kanna.pal" ;lt blue, misty?
SkylaPalette:            INCLUDE "gfx/trainers/skyla.pal"
ValeriePalette:          INCLUDE "gfx/trainers/valerie.pal"
KukuiPalette:            INCLUDE "gfx/trainers/kukui.pal"
VictorPalette:           INCLUDE "gfx/trainers/victor.pal"
BillPalette:             INCLUDE "gfx/trainers/bill.pal"
TammyPalette:            INCLUDE "gfx/trainers/tammy.pal" ; yellow
SilverPalette:           INCLUDE "gfx/trainers/rival2.pal" ; done
ImakuniPalette:          INCLUDE "gfx/trainers/imakuni.pal"
KenseyPalette:           INCLUDE "gfx/trainers/kensey.pal" ; should be blue
ReiPalette:              INCLUDE "gfx/trainers/rei.pal"
OmastarFossilPalette:    INCLUDE "gfx/trainers/omastar_fossil.pal"
KabutopsFossilPalette:   INCLUDE "gfx/trainers/kabutops_fossil.pal"
AerodactylFossilPalette: INCLUDE "gfx/trainers/aerodactyl_fossil.pal"
CuboneArmorPalette:      INCLUDE "gfx/trainers/cubone_armor.pal"
MeteoritePalette:        INCLUDE "gfx/trainers/meteorite.pal"
SilhouettePalette:       INCLUDE "gfx/trainers/silhouette.pal"
else
ChrisPalette:
KrisPalette:
rept NUM_TRAINER_CLASS_PICS + 1
	MONOCHROME_RGB_TWO
endr
endc

	assert_table_length NUM_TRAINER_CLASS_PICS + 1
