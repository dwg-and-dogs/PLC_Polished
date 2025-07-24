landmark: MACRO
	db \1, \2
	dw \3
ENDM

Landmarks:
	table_width 4, Landmarks
	landmark   0,   0, SpecialMapName
	landmark  76, 140, AzaleaTownName
	landmark  92,  76, VioletCityName
	landmark  94,  74, SproutTowerName
	landmark  84,  92, RuinsOfAlphName
	landmark  92, 108, Route32Name
	landmark  92, 140, UnionCaveName
	landmark  84, 140, Route33Name
	landmark  76, 130, TinderGardenName
	landmark  84, 132, SlowpokeWellName
	landmark  60, 140, IlexForestName
	landmark  60, 124, Route34Name
	landmark  60, 108, GoldenrodCityName
	landmark  58, 108, RadioTowerName
	landmark  60,  92, Route35Name
	landmark  76, 100, RouteKaJoName 
	landmark  60,  76, NationalParkName
	landmark  72,  76, Route36Name
	landmark  76,  68, Route37Name
	landmark  76,  60, EcruteakCityName
	landmark  77,  58, BellchimeTrailName
	landmark  78,  58, TinTowerName
	landmark  74,  58, BurnedTowerName
	landmark  60,  60, Route38Name
	landmark  44,  64, Route39Name
	landmark  44,  76, OlivineCityName
	landmark  46,  78, LighthouseName
	landmark  36,  80, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  36, 116, Route41Name
	landmark  28, 116, CianwoodCityName
	landmark 100,  60, Route42Name
	landmark  92,  60, MtMortarName
	landmark 116,  60, MahoganyTownName
	landmark 116,  52, Route43Name
	landmark 116,  44, LakeOfRageName
	assert_table_length KANTO_LANDMARK
	landmark  76, 140, HollysHoltName ; good
	landmark  92, 140, AnarresTownName ; good
	landmark  92, 144, AnarresTowerName ; good
	landmark  100, 132, MistyBasinName ; good
	landmark  76, 124, CalmCoastName ; good
	landmark  76, 116, GauldenrodName ; good
	landmark  72, 116, GauldenrodTowerName ; good
	landmark  80, 116, ShimmerSaddleName 
	landmark  76,  104, SereneSpringsName ; good
	landmark  76,  92, StadiumGroundsName ; good
	landmark  76,  88, StadiumName ; good
	landmark  92,  52, EmperorsGardenName ; good
	landmark  92,  68, WesternCapitalName
	landmark  100,  59, HisuiTowerName; tin OR BELL tower, good
	landmark  84,  59, BrassTowerName ; burned tower, good
	landmark  60,  68, CattleCullName ; good
	landmark  44,  84, TradersLandingName ; 44, x 
	landmark  20, 140, CianwoodCoveName
	landmark  44, 110, ShelteredShoresName ; OK good
	landmark  36,  100, PhantomFjordName ; ok
	landmark  36, 108, SeaFluxNexusName ; ok
	landmark  44,  100, ArduousAnchorageName ; 44, ?
	landmark  44,  88, LandingDocksName
	landmark 140,  56, TranquilTarnName ; ok
	landmark 144,  44, GrottoedGlacierName ; ok
	landmark 136,  44, EnigmaGlacierName ; ok
	landmark 140,  44, SinjohCampName ; good
	landmark 140,  60, EmpiresReachName ; ok
	landmark 140,  68, EerieHamletName ; ok
	landmark 144,  66, RebelsRedoubtName
	landmark 120,  68, SulfurStyName
	landmark 112,  56, ClastsCradleName
	landmark  92,  92, TimelessTapestryName
	assert_table_length SHAMOUTI_LANDMARK
	landmark  76,  68, ShamoutiIslandName ; dummy 
	assert_table_length NUM_LANDMARKS

;modern johto
VioletCityName:        rawchar "Violet City@"
AzaleaTownName:        rawchar "Azalea Town@"
TinderGardenName:	   rawchar "Tinder¯Garden@"
GoldenrodCityName:     rawchar "Goldenrod¯City@"
EcruteakCityName:      rawchar "Ecruteak¯City@"
OlivineCityName:       rawchar "Olivine¯City@"
CianwoodCityName:      rawchar "Cianwood¯City@"
MahoganyTownName:      rawchar "Mahogany¯Town@"
LakeOfRageName:        rawchar "Silph¯Springs@"
SproutTowerName:       rawchar "Sprout¯Tower@"
RuinsOfAlphName:       rawchar "Ruins¯of Alph@"
UnionCaveName:         rawchar "Union Cave@"
SlowpokeWellName:      rawchar "Slowpoke¯Well@"
RadioTowerName:        rawchar "Radio Tower@"
NationalParkName:      rawchar "National¯Park@"
BellchimeTrailName:    rawchar "Bellchime¯Trail@"
TinTowerName:          rawchar "Bell Tower@"
LighthouseName:        rawchar "Lighthouse@"
WhirlIslandsName:      rawchar "Whirl¯Islands@"
MtMortarName:          rawchar "Mt.Mortar@"
Route32Name:           rawchar "Route 32@"
Route33Name:           rawchar "Route 33@"
Route34Name:           rawchar "Route 34@"
Route35Name:           rawchar "Route 35@"
Route36Name:           rawchar "Route 36@"
Route37Name:           rawchar "Route 37@"
Route38Name:           rawchar "Route 38@"
Route39Name:           rawchar "Route 39@"
Route40Name:           rawchar "Route 40@"
Route41Name:           rawchar "Route 41@"
Route42Name:           rawchar "Route 42@"
Route43Name:           rawchar "Route 43@"
RouteKaJoName:		   rawchar "Route¯Ka-Jo@"
IlexForestName:        rawchar "Ilex¯Forest@"
BurnedTowerName:       rawchar "Burned¯Tower@"
;old johto
HollysHoltName:		   rawchar "Holly's¯Holt@"
AnarresTownName:	   rawchar "Anarres¯Town@"
AnarresTowerName:	   rawchar "Anarres¯Tower@"
MistyBasinName:		   rawchar "Misty¯Basin@"
CalmCoastName:	       rawchar "Calm¯Coast@"
GauldenrodName:		   rawchar "Gauldenrod@"
GauldenrodTowerName:   rawchar "Gauldenrod¯Tower@"
ShimmerSaddleName:     rawchar "Shimmering¯Saddle@"
SereneSpringsName:	   rawchar "Serene¯Springs@"
StadiumGroundsName:	   rawchar "Stadium¯Grounds@"
StadiumName:           rawchar "Stadium@"
EmperorsGardenName:    rawchar "Consul's¯Garden@"
WesternCapitalName:    rawchar "Western¯Capital@"
HisuiTowerName:        rawchar "Tin Tower@"
BrassTowerName:        rawchar "Brass¯Tower@"
CattleCullName:		   rawchar "Cattle¯Cull@"
TradersLandingName:	   rawchar "Trader's¯Landing@"
CianwoodCoveName:      rawchar "Cianwood¯Cove@"
ShelteredShoresName:   rawchar "Sheltered¯Shores@"
PhantomFjordName:      rawchar "Phantom¯Fjord@"
SeaFluxNexusName:      rawchar "Seaflux¯Nexus@"
ArduousAnchorageName:  rawchar "Arduous¯Anchorage@"
LandingDocksName:      rawchar "Landing¯Docks@"
TranquilTarnName:      rawchar "Tranquil¯Tarn@"
GrottoedGlacierName:   rawchar "Grottoed¯Glacier@"
EnigmaGlacierName:     rawchar "Enigma¯Glacier@"
SinjohCampName:        rawchar "Sinjoh¯Camp@"
EmpiresReachName:      rawchar "Empire's¯Reach@"
EerieHamletName:       rawchar "Eerie¯Hamlet@"
RebelsRedoubtName:     rawchar "Rebel's¯Redoubt@"
SulfurStyName:         rawchar "Sulfur¯Sty@"
ClastsCradleName:      rawchar "Clast's¯Cradle@"
TimelessTapestryName:      rawchar "Timeless¯Tapestry@"
; SHAMOUTI DUMMY 
ShamoutiIslandName:		rawchar "Dummy¯Name"

SpecialMapName:        rawchar "?@"
