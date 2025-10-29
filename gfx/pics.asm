INCLUDE "constants.asm"


SECTION "Pic Pointers", ROMX

INCLUDE "data/pokemon/front_pic_pointers.asm"
INCLUDE "data/pokemon/back_pic_pointers.asm"


SECTION "Trainer Pic Pointers", ROMX

INCLUDE "data/trainers/pic_pointers.asm"


SECTION "Painting Pic Pointers", ROMX

INCLUDE "data/events/paintings/pic_pointers.asm"


SECTION "Pokemon Pics 1", ROMX ;8 pkmn, 1 line gap bw this line and first, then 2 lines before the next

CyndaquilFrontpic:			INCBIN "gfx/pokemon/cyndaquil/front.animated.2bpp.lz"
CyndaquilBackpic: 			INCBIN "gfx/pokemon/cyndaquil/back.2bpp.lz"
QuilavaFrontpic: 			INCBIN "gfx/pokemon/quilava/front.animated.2bpp.lz"
QuilavaBackpic: 			INCBIN "gfx/pokemon/quilava/back.2bpp.lz"
TyphlosionFrontpic: 		INCBIN "gfx/pokemon/typhlosion/front.animated.2bpp.lz"
TyphlosionBackpic: 			INCBIN "gfx/pokemon/typhlosion/back.2bpp.lz"
HtyphlosionFrontpic: 		INCBIN "gfx/pokemon/htyphlosion/front.animated.2bpp.lz"
HtyphlosionBackpic: 		INCBIN "gfx/pokemon/htyphlosion/back.2bpp.lz"
RowletFrontpic: 			INCBIN "gfx/pokemon/rowlet/front.animated.2bpp.lz"
RowletBackpic: 				INCBIN "gfx/pokemon/rowlet/back.2bpp.lz"
DartrixFrontpic: 			INCBIN "gfx/pokemon/dartrix/front.animated.2bpp.lz"
DartrixBackpic: 			INCBIN "gfx/pokemon/dartrix/back.2bpp.lz"
DecidueyeFrontpic: 			INCBIN "gfx/pokemon/decidueye/front.animated.2bpp.lz"
DecidueyeBackpic: 			INCBIN "gfx/pokemon/decidueye/back.2bpp.lz"
HdecidueyeFrontpic: 		INCBIN "gfx/pokemon/hdecidueye/front.animated.2bpp.lz"
HdecidueyeBackpic: 			INCBIN "gfx/pokemon/hdecidueye/back.2bpp.lz"


SECTION "Pokemon Pics 2", ROMX

OshawottFrontpic: 			INCBIN "gfx/pokemon/oshawott/front.animated.2bpp.lz"
OshawottBackpic: 			INCBIN "gfx/pokemon/oshawott/back.2bpp.lz"
DewottFrontpic: 			INCBIN "gfx/pokemon/dewott/front.animated.2bpp.lz"
DewottBackpic: 				INCBIN "gfx/pokemon/dewott/back.2bpp.lz"
SamurottFrontpic: 			INCBIN "gfx/pokemon/samurott/front.animated.2bpp.lz"
SamurottBackpic: 			INCBIN "gfx/pokemon/samurott/back.2bpp.lz"
HsamurottFrontpic: 			INCBIN "gfx/pokemon/hsamurott/front.animated.2bpp.lz"
HsamurottBackpic: 			INCBIN "gfx/pokemon/hsamurott/back.2bpp.lz"
ButterfreeFrontpic: 		INCBIN "gfx/pokemon/butterfree/front.animated.2bpp.lz"
ButterfreeBackpic: 			INCBIN "gfx/pokemon/butterfree/back.2bpp.lz"
BeedrillFrontpic: 			INCBIN "gfx/pokemon/beedrill/front.animated.2bpp.lz"
BeedrillBackpic: 			INCBIN "gfx/pokemon/beedrill/back.2bpp.lz"
PidgeyFrontpic: 			INCBIN "gfx/pokemon/pidgey/front.animated.2bpp.lz"
PidgeyBackpic:	 			INCBIN "gfx/pokemon/pidgey/back.2bpp.lz"
PidgeottoFrontpic: 			INCBIN "gfx/pokemon/pidgeotto/front.animated.2bpp.lz"
PidgeottoBackpic: 			INCBIN "gfx/pokemon/pidgeotto/back.2bpp.lz"


SECTION "Pokemon Pics 3", ROMX

PidgeotFrontpic: 			INCBIN "gfx/pokemon/pidgeot/front.animated.2bpp.lz"
PidgeotBackpic: 			INCBIN "gfx/pokemon/pidgeot/back.2bpp.lz"
EkansFrontpic: 				INCBIN "gfx/pokemon/ekans/front.animated.2bpp.lz"
EkansBackpic: 				INCBIN "gfx/pokemon/ekans/back.2bpp.lz"
ArbokFrontpic: 				INCBIN "gfx/pokemon/arbok/front.animated.2bpp.lz"
ArbokBackpic: 				INCBIN "gfx/pokemon/arbok/back.2bpp.lz"
PikachuFrontpic: 			INCBIN "gfx/pokemon/pikachu/front.animated.2bpp.lz"
PikachuBackpic: 			INCBIN "gfx/pokemon/pikachu/back.2bpp.lz"
RaichuFrontpic: 			INCBIN "gfx/pokemon/raichu/front.animated.2bpp.lz"
RaichuBackpic: 				INCBIN "gfx/pokemon/raichu/back.2bpp.lz"
NidorinaFrontpic: 			INCBIN "gfx/pokemon/nidorina/front.animated.2bpp.lz"
NidorinaBackpic: 			INCBIN "gfx/pokemon/nidorina/back.2bpp.lz"
NidoqueenFrontpic: 			INCBIN "gfx/pokemon/nidoqueen/front.animated.2bpp.lz"
NidoqueenBackpic: 			INCBIN "gfx/pokemon/nidoqueen/back.2bpp.lz"
NidorinoFrontpic: 			INCBIN "gfx/pokemon/nidorino/front.animated.2bpp.lz"
NidorinoBackpic: 			INCBIN "gfx/pokemon/nidorino/back.2bpp.lz"


SECTION "Pokemon Pics 4", ROMX

NidokingFrontpic: 			INCBIN "gfx/pokemon/nidoking/front.animated.2bpp.lz"
NidokingBackpic: 			INCBIN "gfx/pokemon/nidoking/back.2bpp.lz"
ClefairyFrontpic: 			INCBIN "gfx/pokemon/clefairy/front.animated.2bpp.lz"
ClefairyBackpic: 			INCBIN "gfx/pokemon/clefairy/back.2bpp.lz"
ClefableFrontpic: 			INCBIN "gfx/pokemon/clefable/front.animated.2bpp.lz"
ClefableBackpic: 			INCBIN "gfx/pokemon/clefable/back.2bpp.lz"
VulpixFrontpic: 			INCBIN "gfx/pokemon/vulpix/front.animated.2bpp.lz"
VulpixBackpic: 				INCBIN "gfx/pokemon/vulpix/back.2bpp.lz"
NinetalesFrontpic: 			INCBIN "gfx/pokemon/ninetales/front.animated.2bpp.lz"
NinetalesBackpic: 			INCBIN "gfx/pokemon/ninetales/back.2bpp.lz"
JigglypuffFrontpic: 		INCBIN "gfx/pokemon/jigglypuff/front.animated.2bpp.lz"
JigglypuffBackpic: 			INCBIN "gfx/pokemon/jigglypuff/back.2bpp.lz"
WigglytuffFrontpic: 		INCBIN "gfx/pokemon/wigglytuff/front.animated.2bpp.lz"
WigglytuffBackpic: 			INCBIN "gfx/pokemon/wigglytuff/back.2bpp.lz"
ZubatFrontpic: 				INCBIN "gfx/pokemon/zubat/front.animated.2bpp.lz"
ZubatBackpic: 				INCBIN "gfx/pokemon/zubat/back.2bpp.lz"


SECTION "Pokemon Pics 5", ROMX

GolbatFrontpic: 			INCBIN "gfx/pokemon/golbat/front.animated.2bpp.lz"
GolbatBackpic: 				INCBIN "gfx/pokemon/golbat/back.2bpp.lz"
CrobatFrontpic: 			INCBIN "gfx/pokemon/crobat/front.animated.2bpp.lz"
CrobatBackpic: 				INCBIN "gfx/pokemon/crobat/back.2bpp.lz"
GloomFrontpic: 				INCBIN "gfx/pokemon/gloom/front.animated.2bpp.lz"
GloomBackpic: 				INCBIN "gfx/pokemon/gloom/back.2bpp.lz"
VileplumeFrontpic: 			INCBIN "gfx/pokemon/vileplume/front.animated.2bpp.lz"
VileplumeBackpic: 			INCBIN "gfx/pokemon/vileplume/back.2bpp.lz"
BellossomFrontpic: 			INCBIN "gfx/pokemon/bellossom/front.animated.2bpp.lz"
BellossomBackpic: 			INCBIN "gfx/pokemon/bellossom/back.2bpp.lz"
ParasFrontpic: 				INCBIN "gfx/pokemon/paras/front.animated.2bpp.lz"
ParasBackpic: 				INCBIN "gfx/pokemon/paras/back.2bpp.lz"
ParasectFrontpic: 			INCBIN "gfx/pokemon/parasect/front.animated.2bpp.lz"
ParasectBackpic: 			INCBIN "gfx/pokemon/parasect/back.2bpp.lz"
VenonatFrontpic: 			INCBIN "gfx/pokemon/venonat/front.animated.2bpp.lz"
VenonatBackpic: 			INCBIN "gfx/pokemon/venonat/back.2bpp.lz"


SECTION "Pokemon Pics 6", ROMX

VenomothFrontpic: 			INCBIN "gfx/pokemon/venomoth/front.animated.2bpp.lz"
VenomothBackpic: 			INCBIN "gfx/pokemon/venomoth/back.2bpp.lz"
DiglettFrontpic: 			INCBIN "gfx/pokemon/diglett/front.animated.2bpp.lz"
DiglettBackpic: 			INCBIN "gfx/pokemon/diglett/back.2bpp.lz"
DugtrioFrontpic: 			INCBIN "gfx/pokemon/dugtrio/front.animated.2bpp.lz"
DugtrioBackpic: 			INCBIN "gfx/pokemon/dugtrio/back.2bpp.lz"
MeowthFrontpic: 			INCBIN "gfx/pokemon/meowth/front.animated.2bpp.lz"
MeowthBackpic: 				INCBIN "gfx/pokemon/meowth/back.2bpp.lz"
PersianFrontpic: 			INCBIN "gfx/pokemon/persian/front.animated.2bpp.lz"
PersianBackpic: 			INCBIN "gfx/pokemon/persian/back.2bpp.lz"
MankeyFrontpic: 			INCBIN "gfx/pokemon/mankey/front.animated.2bpp.lz"
MankeyBackpic: 				INCBIN "gfx/pokemon/mankey/back.2bpp.lz"
PrimeapeFrontpic: 			INCBIN "gfx/pokemon/primeape/front.animated.2bpp.lz"
PrimeapeBackpic: 			INCBIN "gfx/pokemon/primeape/back.2bpp.lz"
GrowlitheFrontpic: 			INCBIN "gfx/pokemon/growlithe/front.animated.2bpp.lz"
GrowlitheBackpic: 			INCBIN "gfx/pokemon/growlithe/back.2bpp.lz"


SECTION "Pokemon Pics 7", ROMX

ArcanineFrontpic: 			INCBIN "gfx/pokemon/arcanine/front.animated.2bpp.lz"
ArcanineBackpic: 			INCBIN "gfx/pokemon/arcanine/back.2bpp.lz"
HarcanineFrontpic: 			INCBIN "gfx/pokemon/harcanine/front.animated.2bpp.lz"
HarcanineBackpic: 			INCBIN "gfx/pokemon/harcanine/back.2bpp.lz"
PoliwagFrontpic: 			INCBIN "gfx/pokemon/poliwag/front.animated.2bpp.lz"
PoliwagBackpic: 			INCBIN "gfx/pokemon/poliwag/back.2bpp.lz"
PoliwhirlFrontpic: 			INCBIN "gfx/pokemon/poliwhirl/front.animated.2bpp.lz"
PoliwhirlBackpic: 			INCBIN "gfx/pokemon/poliwhirl/back.2bpp.lz"
PoliwrathFrontpic: 			INCBIN "gfx/pokemon/poliwrath/front.animated.2bpp.lz"
PoliwrathBackpic: 			INCBIN "gfx/pokemon/poliwrath/back.2bpp.lz"
PolitoedFrontpic: 			INCBIN "gfx/pokemon/politoed/front.animated.2bpp.lz"
PolitoedBackpic: 			INCBIN "gfx/pokemon/politoed/back.2bpp.lz"
AbraFrontpic: 				INCBIN "gfx/pokemon/abra/front.animated.2bpp.lz"
AbraBackpic: 				INCBIN "gfx/pokemon/abra/back.2bpp.lz"
KadabraFrontpic: 			INCBIN "gfx/pokemon/kadabra/front.animated.2bpp.lz"
KadabraBackpic: 			INCBIN "gfx/pokemon/kadabra/back.2bpp.lz"


SECTION "Pokemon Pics 8", ROMX

AlakazamFrontpic: 			INCBIN "gfx/pokemon/alakazam/front.animated.2bpp.lz"
AlakazamBackpic: 			INCBIN "gfx/pokemon/alakazam/back.2bpp.lz"
MachopFrontpic: 			INCBIN "gfx/pokemon/machop/front.animated.2bpp.lz"
MachopBackpic: 				INCBIN "gfx/pokemon/machop/back.2bpp.lz"
MachokeFrontpic: 			INCBIN "gfx/pokemon/machoke/front.animated.2bpp.lz"
MachokeBackpic: 			INCBIN "gfx/pokemon/machoke/back.2bpp.lz"
MachampFrontpic: 			INCBIN "gfx/pokemon/machamp/front.animated.2bpp.lz"
MachampBackpic: 			INCBIN "gfx/pokemon/machamp/back.2bpp.lz"
WeepinbellFrontpic: 		INCBIN "gfx/pokemon/weepinbell/front.animated.2bpp.lz"
WeepinbellBackpic: 			INCBIN "gfx/pokemon/weepinbell/back.2bpp.lz"
VictreebelFrontpic: 		INCBIN "gfx/pokemon/victreebel/front.animated.2bpp.lz"
VictreebelBackpic: 			INCBIN "gfx/pokemon/victreebel/back.2bpp.lz"
TentacruelFrontpic: 		INCBIN "gfx/pokemon/tentacruel/front.animated.2bpp.lz"
TentacruelBackpic: 			INCBIN "gfx/pokemon/tentacruel/back.2bpp.lz"
GeodudeFrontpic: 			INCBIN "gfx/pokemon/geodude/front.animated.2bpp.lz"
GeodudeBackpic: 			INCBIN "gfx/pokemon/geodude/back.2bpp.lz"


SECTION "Pokemon Pics 9", ROMX

GravelerFrontpic: 			INCBIN "gfx/pokemon/graveler/front.animated.2bpp.lz"
GravelerBackpic: 			INCBIN "gfx/pokemon/graveler/back.2bpp.lz"
GolemFrontpic: 				INCBIN "gfx/pokemon/golem/front.animated.2bpp.lz"
GolemBackpic: 				INCBIN "gfx/pokemon/golem/back.2bpp.lz"
PonytaFrontpic: 			INCBIN "gfx/pokemon/ponyta/front.animated.2bpp.lz"
PonytaBackpic: 				INCBIN "gfx/pokemon/ponyta/back.2bpp.lz"
RapidashFrontpic: 			INCBIN "gfx/pokemon/rapidash/front.animated.2bpp.lz"
RapidashBackpic: 			INCBIN "gfx/pokemon/rapidash/back.2bpp.lz"
SlowpokeFrontpic: 			INCBIN "gfx/pokemon/slowpoke/front.animated.2bpp.lz"
SlowpokeBackpic: 			INCBIN "gfx/pokemon/slowpoke/back.2bpp.lz"
SlowbroFrontpic: 			INCBIN "gfx/pokemon/slowbro/front.animated.2bpp.lz"
SlowbroBackpic: 			INCBIN "gfx/pokemon/slowbro/back.2bpp.lz"
SlowkingFrontpic:	 		INCBIN "gfx/pokemon/slowking/front.animated.2bpp.lz"
SlowkingBackpic: 			INCBIN "gfx/pokemon/slowking/back.2bpp.lz"
MagnemiteFrontpic: 			INCBIN "gfx/pokemon/magnemite/front.animated.2bpp.lz"
MagnemiteBackpic: 			INCBIN "gfx/pokemon/magnemite/back.2bpp.lz"


SECTION "Pokemon Pics 10", ROMX

MagnetonFrontpic: 			INCBIN "gfx/pokemon/magneton/front.animated.2bpp.lz"
MagnetonBackpic: 			INCBIN "gfx/pokemon/magneton/back.2bpp.lz"
MagnezoneFrontpic: 			INCBIN "gfx/pokemon/magnezone/front.animated.2bpp.lz"
MagnezoneBackpic: 			INCBIN "gfx/pokemon/magnezone/back.2bpp.lz"
Farfetch_DFrontpic: 		INCBIN "gfx/pokemon/farfetch_d/front.animated.2bpp.lz"
Farfetch_DBackpic: 			INCBIN "gfx/pokemon/farfetch_d/back.2bpp.lz"
GrimerFrontpic: 			INCBIN "gfx/pokemon/grimer/front.animated.2bpp.lz"
GrimerBackpic: 				INCBIN "gfx/pokemon/grimer/back.2bpp.lz"
MukFrontpic: 				INCBIN "gfx/pokemon/muk/front.animated.2bpp.lz"
MukBackpic: 				INCBIN "gfx/pokemon/muk/back.2bpp.lz"
CloysterFrontpic: 			INCBIN "gfx/pokemon/cloyster/front.animated.2bpp.lz"
CloysterBackpic: 			INCBIN "gfx/pokemon/cloyster/back.2bpp.lz"
GastlyFrontpic: 			INCBIN "gfx/pokemon/gastly/front.animated.2bpp.lz"
GastlyBackpic: 				INCBIN "gfx/pokemon/gastly/back.2bpp.lz"
HaunterFrontpic: 			INCBIN "gfx/pokemon/haunter/front.animated.2bpp.lz"
HaunterBackpic: 			INCBIN "gfx/pokemon/haunter/back.2bpp.lz"


SECTION "Pokemon Pics 11", ROMX

GengarFrontpic: 			INCBIN "gfx/pokemon/gengar/front.animated.2bpp.lz"
GengarBackpic: 				INCBIN "gfx/pokemon/gengar/back.2bpp.lz"
OnixFrontpic: 				INCBIN "gfx/pokemon/onix/front.animated.2bpp.lz"
OnixBackpic: 				INCBIN "gfx/pokemon/onix/back.2bpp.lz"
SteelixFrontpic: 			INCBIN "gfx/pokemon/steelix/front.animated.2bpp.lz"
SteelixBackpic: 			INCBIN "gfx/pokemon/steelix/back.2bpp.lz"
VoltorbFrontpic: 			INCBIN "gfx/pokemon/voltorb/front.animated.2bpp.lz"
VoltorbBackpic: 			INCBIN "gfx/pokemon/voltorb/back.2bpp.lz"
ElectrodeFrontpic: 			INCBIN "gfx/pokemon/electrode/front.animated.2bpp.lz"
ElectrodeBackpic: 			INCBIN "gfx/pokemon/electrode/back.2bpp.lz"
HelectrodeFrontpic: 		INCBIN "gfx/pokemon/helectrode/front.animated.2bpp.lz"
HelectrodeBackpic: 			INCBIN "gfx/pokemon/helectrode/back.2bpp.lz"
ExeggcuteFrontpic: 			INCBIN "gfx/pokemon/exeggcute/front.animated.2bpp.lz"
ExeggcuteBackpic: 			INCBIN "gfx/pokemon/exeggcute/back.2bpp.lz"
ExeggutorFrontpic: 			INCBIN "gfx/pokemon/exeggutor/front.animated.2bpp.lz"
ExeggutorBackpic: 			INCBIN "gfx/pokemon/exeggutor/back.2bpp.lz"


SECTION "Pokemon Pics 12", ROMX

HitmonleeFrontpic: 			INCBIN "gfx/pokemon/hitmonlee/front.animated.2bpp.lz"
HitmonleeBackpic: 			INCBIN "gfx/pokemon/hitmonlee/back.2bpp.lz"
HitmonchanFrontpic: 		INCBIN "gfx/pokemon/hitmonchan/front.animated.2bpp.lz"
HitmonchanBackpic: 			INCBIN "gfx/pokemon/hitmonchan/back.2bpp.lz"
HitmontopFrontpic: 			INCBIN "gfx/pokemon/hitmontop/front.animated.2bpp.lz"
HitmontopBackpic: 			INCBIN "gfx/pokemon/hitmontop/back.2bpp.lz"
WeezingFrontpic: 			INCBIN "gfx/pokemon/weezing/front.animated.2bpp.lz"
WeezingBackpic: 			INCBIN "gfx/pokemon/weezing/back.2bpp.lz"
MrmimeFrontpic: 			INCBIN "gfx/pokemon/mrmime/front.animated.2bpp.lz"
MrmimeBackpic: 				INCBIN "gfx/pokemon/mrmime/back.2bpp.lz"
RhyhornFrontpic: 			INCBIN "gfx/pokemon/rhyhorn/front.animated.2bpp.lz"
RhyhornBackpic: 			INCBIN "gfx/pokemon/rhyhorn/back.2bpp.lz"
RhydonFrontpic:	 			INCBIN "gfx/pokemon/rhydon/front.animated.2bpp.lz"
RhydonBackpic: 				INCBIN "gfx/pokemon/rhydon/back.2bpp.lz"
RhyperiorFrontpic:			INCBIN "gfx/pokemon/rhyperior/front.animated.2bpp.lz"
RhyperiorBackpic: 			INCBIN "gfx/pokemon/rhyperior/back.2bpp.lz"


SECTION "Pokemon Pics 13", ROMX

ChanseyFrontpic: 			INCBIN "gfx/pokemon/chansey/front.animated.2bpp.lz"
ChanseyBackpic: 			INCBIN "gfx/pokemon/chansey/back.2bpp.lz"
BlisseyFrontpic: 			INCBIN "gfx/pokemon/blissey/front.animated.2bpp.lz"
BlisseyBackpic: 			INCBIN "gfx/pokemon/blissey/back.2bpp.lz"
TangelaFrontpic: 			INCBIN "gfx/pokemon/tangela/front.animated.2bpp.lz"
TangelaBackpic: 			INCBIN "gfx/pokemon/tangela/back.2bpp.lz"
TangrowthFrontpic: 			INCBIN "gfx/pokemon/tangrowth/front.animated.2bpp.lz"
TangrowthBackpic: 			INCBIN "gfx/pokemon/tangrowth/back.2bpp.lz"
KangaskhanFrontpic: 		INCBIN "gfx/pokemon/kangaskhan/front.animated.2bpp.lz"
KangaskhanBackpic: 			INCBIN "gfx/pokemon/kangaskhan/back.2bpp.lz"
SeadraFrontpic: 			INCBIN "gfx/pokemon/seadra/front.animated.2bpp.lz"
SeadraBackpic: 				INCBIN "gfx/pokemon/seadra/back.2bpp.lz"
KingdraFrontpic: 			INCBIN "gfx/pokemon/kingdra/front.animated.2bpp.lz"
KingdraBackpic: 			INCBIN "gfx/pokemon/kingdra/back.2bpp.lz"
StaryuFrontpic: 			INCBIN "gfx/pokemon/staryu/front.animated.2bpp.lz"
StaryuBackpic: 				INCBIN "gfx/pokemon/staryu/back.2bpp.lz"


SECTION "Pokemon Pics 14", ROMX

StarmieFrontpic: INCBIN "gfx/pokemon/starmie/front.animated.2bpp.lz"
StarmieBackpic: INCBIN "gfx/pokemon/starmie/back.2bpp.lz"
ScytherFrontpic: INCBIN "gfx/pokemon/scyther/front.animated.2bpp.lz"
ScytherBackpic: INCBIN "gfx/pokemon/scyther/back.2bpp.lz"
ScizorFrontpic: INCBIN "gfx/pokemon/scizor/front.animated.2bpp.lz"
ScizorBackpic: INCBIN "gfx/pokemon/scizor/back.2bpp.lz"
KleavorFrontpic: INCBIN "gfx/pokemon/kleavor/front.animated.2bpp.lz"
KleavorBackpic: INCBIN "gfx/pokemon/kleavor/back.2bpp.lz"
JynxFrontpic: INCBIN "gfx/pokemon/jynx/front.animated.2bpp.lz"
JynxBackpic: INCBIN "gfx/pokemon/jynx/back.2bpp.lz"
ElectabuzzFrontpic: INCBIN "gfx/pokemon/electabuzz/front.animated.2bpp.lz"
ElectabuzzBackpic: INCBIN "gfx/pokemon/electabuzz/back.2bpp.lz"
ElectivireFrontpic: INCBIN "gfx/pokemon/electivire/front.animated.2bpp.lz"
ElectivireBackpic: INCBIN "gfx/pokemon/electivire/back.2bpp.lz"
MagmarFrontpic: INCBIN "gfx/pokemon/magmar/front.animated.2bpp.lz"
MagmarBackpic: INCBIN "gfx/pokemon/magmar/back.2bpp.lz"


SECTION "Pokemon Pics 15", ROMX

MagmortarFrontpic: INCBIN "gfx/pokemon/magmortar/front.animated.2bpp.lz"
MagmortarBackpic: INCBIN "gfx/pokemon/magmortar/back.2bpp.lz"
PinsirFrontpic: INCBIN "gfx/pokemon/pinsir/front.animated.2bpp.lz"
PinsirBackpic: INCBIN "gfx/pokemon/pinsir/back.2bpp.lz"
TaurosFrontpic: INCBIN "gfx/pokemon/tauros/front.animated.2bpp.lz"
TaurosBackpic: INCBIN "gfx/pokemon/tauros/back.2bpp.lz"
MagikarpFrontpic: INCBIN "gfx/pokemon/magikarp/front.animated.2bpp.lz"
MagikarpBackpic: INCBIN "gfx/pokemon/magikarp/back.2bpp.lz"
GyaradosFrontpic: INCBIN "gfx/pokemon/gyarados/front.animated.2bpp.lz"
GyaradosBackpic: INCBIN "gfx/pokemon/gyarados/back.2bpp.lz"
LaprasFrontpic: INCBIN "gfx/pokemon/lapras/front.animated.2bpp.lz"
LaprasBackpic: INCBIN "gfx/pokemon/lapras/back.2bpp.lz"
EeveeFrontpic: INCBIN "gfx/pokemon/eevee/front.animated.2bpp.lz"
EeveeBackpic: INCBIN "gfx/pokemon/eevee/back.2bpp.lz"
VaporeonFrontpic: INCBIN "gfx/pokemon/vaporeon/front.animated.2bpp.lz"
VaporeonBackpic: INCBIN "gfx/pokemon/vaporeon/back.2bpp.lz"


SECTION "Pokemon Pics 16", ROMX

JolteonFrontpic: INCBIN "gfx/pokemon/jolteon/front.animated.2bpp.lz"
JolteonBackpic: INCBIN "gfx/pokemon/jolteon/back.2bpp.lz"
FlareonFrontpic: INCBIN "gfx/pokemon/flareon/front.animated.2bpp.lz"
FlareonBackpic: INCBIN "gfx/pokemon/flareon/back.2bpp.lz"
EspeonFrontpic: INCBIN "gfx/pokemon/espeon/front.animated.2bpp.lz"
EspeonBackpic: INCBIN "gfx/pokemon/espeon/back.2bpp.lz"
UmbreonFrontpic: INCBIN "gfx/pokemon/umbreon/front.animated.2bpp.lz"
UmbreonBackpic: INCBIN "gfx/pokemon/umbreon/back.2bpp.lz"
LeafeonFrontpic: INCBIN "gfx/pokemon/leafeon/front.animated.2bpp.lz"
LeafeonBackpic: INCBIN "gfx/pokemon/leafeon/back.2bpp.lz"
GlaceonFrontpic: INCBIN "gfx/pokemon/glaceon/front.animated.2bpp.lz"
GlaceonBackpic: INCBIN "gfx/pokemon/glaceon/back.2bpp.lz"
SylveonFrontpic: INCBIN "gfx/pokemon/sylveon/front.animated.2bpp.lz"
SylveonBackpic: INCBIN "gfx/pokemon/sylveon/back.2bpp.lz"
PorygonFrontpic: INCBIN "gfx/pokemon/porygon/front.animated.2bpp.lz"
PorygonBackpic: INCBIN "gfx/pokemon/porygon/back.2bpp.lz"


SECTION "Pokemon Pics 17", ROMX

Porygon2Frontpic: INCBIN "gfx/pokemon/porygon2/front.animated.2bpp.lz"
Porygon2Backpic: INCBIN "gfx/pokemon/porygon2/back.2bpp.lz"
Porygon_ZFrontpic: INCBIN "gfx/pokemon/porygon_z/front.animated.2bpp.lz"
Porygon_ZBackpic: INCBIN "gfx/pokemon/porygon_z/back.2bpp.lz"
SnorlaxFrontpic: INCBIN "gfx/pokemon/snorlax/front.animated.2bpp.lz"
SnorlaxBackpic: INCBIN "gfx/pokemon/snorlax/back.2bpp.lz"
ChikoritaFrontpic: INCBIN "gfx/pokemon/chikorita/front.animated.2bpp.lz"
ChikoritaBackpic: INCBIN "gfx/pokemon/chikorita/back.2bpp.lz"
BayleefFrontpic: INCBIN "gfx/pokemon/bayleef/front.animated.2bpp.lz"
BayleefBackpic: INCBIN "gfx/pokemon/bayleef/back.2bpp.lz"
MeganiumFrontpic: INCBIN "gfx/pokemon/meganium/front.animated.2bpp.lz"
MeganiumBackpic: INCBIN "gfx/pokemon/meganium/back.2bpp.lz"
TotodileFrontpic: INCBIN "gfx/pokemon/totodile/front.animated.2bpp.lz"
TotodileBackpic: INCBIN "gfx/pokemon/totodile/back.2bpp.lz"
CroconawFrontpic: INCBIN "gfx/pokemon/croconaw/front.animated.2bpp.lz"
CroconawBackpic: INCBIN "gfx/pokemon/croconaw/back.2bpp.lz"


SECTION "Pokemon Pics 18", ROMX

FeraligatrFrontpic: INCBIN "gfx/pokemon/feraligatr/front.animated.2bpp.lz"
FeraligatrBackpic: INCBIN "gfx/pokemon/feraligatr/back.2bpp.lz"
FurretFrontpic: INCBIN "gfx/pokemon/furret/front.animated.2bpp.lz"
FurretBackpic: INCBIN "gfx/pokemon/furret/back.2bpp.lz"
LedianFrontpic: INCBIN "gfx/pokemon/ledian/front.animated.2bpp.lz"
LedianBackpic: INCBIN "gfx/pokemon/ledian/back.2bpp.lz"
AriadosFrontpic: INCBIN "gfx/pokemon/ariados/front.animated.2bpp.lz"
AriadosBackpic: INCBIN "gfx/pokemon/ariados/back.2bpp.lz"
ChinchouFrontpic: INCBIN "gfx/pokemon/chinchou/front.animated.2bpp.lz"
ChinchouBackpic: INCBIN "gfx/pokemon/chinchou/back.2bpp.lz"
LanturnFrontpic: INCBIN "gfx/pokemon/lanturn/front.animated.2bpp.lz"
LanturnBackpic: INCBIN "gfx/pokemon/lanturn/back.2bpp.lz"
TogeticFrontpic: INCBIN "gfx/pokemon/togetic/front.animated.2bpp.lz"
TogeticBackpic: INCBIN "gfx/pokemon/togetic/back.2bpp.lz"
TogekissFrontpic: INCBIN "gfx/pokemon/togekiss/front.animated.2bpp.lz"
TogekissBackpic: INCBIN "gfx/pokemon/togekiss/back.2bpp.lz"


SECTION "Pokemon Pics 19", ROMX

NatuFrontpic: INCBIN "gfx/pokemon/natu/front.animated.2bpp.lz" ; edited?
NatuBackpic: INCBIN "gfx/pokemon/natu/back.2bpp.lz"
XatuFrontpic: INCBIN "gfx/pokemon/xatu/front.animated.2bpp.lz"
XatuBackpic: INCBIN "gfx/pokemon/xatu/back.2bpp.lz"
MareepFrontpic: INCBIN "gfx/pokemon/mareep/front.animated.2bpp.lz"
MareepBackpic: INCBIN "gfx/pokemon/mareep/back.2bpp.lz"
FlaaffyFrontpic: INCBIN "gfx/pokemon/flaaffy/front.animated.2bpp.lz"
FlaaffyBackpic: INCBIN "gfx/pokemon/flaaffy/back.2bpp.lz"
AmpharosFrontpic: INCBIN "gfx/pokemon/ampharos/front.animated.2bpp.lz"
AmpharosBackpic: INCBIN "gfx/pokemon/ampharos/back.2bpp.lz"
MarillFrontpic: INCBIN "gfx/pokemon/marill/front.animated.2bpp.lz"
MarillBackpic: INCBIN "gfx/pokemon/marill/back.2bpp.lz"
AzumarillFrontpic: INCBIN "gfx/pokemon/azumarill/front.animated.2bpp.lz"
AzumarillBackpic: INCBIN "gfx/pokemon/azumarill/back.2bpp.lz"
SudowoodoFrontpic: INCBIN "gfx/pokemon/sudowoodo/front.animated.2bpp.lz"
SudowoodoBackpic: INCBIN "gfx/pokemon/sudowoodo/back.2bpp.lz"


SECTION "Pokemon Pics 20", ROMX

SkiploomFrontpic: INCBIN "gfx/pokemon/skiploom/front.animated.2bpp.lz"
SkiploomBackpic: INCBIN "gfx/pokemon/skiploom/back.2bpp.lz"
JumpluffFrontpic: INCBIN "gfx/pokemon/jumpluff/front.animated.2bpp.lz"
JumpluffBackpic: INCBIN "gfx/pokemon/jumpluff/back.2bpp.lz"
SunfloraFrontpic: INCBIN "gfx/pokemon/sunflora/front.animated.2bpp.lz"
SunfloraBackpic: INCBIN "gfx/pokemon/sunflora/back.2bpp.lz"
WooperFrontpic: INCBIN "gfx/pokemon/wooper/front.animated.2bpp.lz"
WooperBackpic: INCBIN "gfx/pokemon/wooper/back.2bpp.lz"
QuagsireFrontpic: INCBIN "gfx/pokemon/quagsire/front.animated.2bpp.lz"
QuagsireBackpic: INCBIN "gfx/pokemon/quagsire/back.2bpp.lz"
MurkrowFrontpic: INCBIN "gfx/pokemon/murkrow/front.animated.2bpp.lz"
MurkrowBackpic: INCBIN "gfx/pokemon/murkrow/back.2bpp.lz"
HonchkrowFrontpic: INCBIN "gfx/pokemon/honchkrow/front.animated.2bpp.lz"
HonchkrowBackpic: INCBIN "gfx/pokemon/honchkrow/back.2bpp.lz"
MisdreavusFrontpic: INCBIN "gfx/pokemon/misdreavus/front.animated.2bpp.lz"
MisdreavusBackpic: INCBIN "gfx/pokemon/misdreavus/back.2bpp.lz"


SECTION "Pokemon Pics 21", ROMX

MismagiusFrontpic: INCBIN "gfx/pokemon/mismagius/front.animated.2bpp.lz"
MismagiusBackpic: INCBIN "gfx/pokemon/mismagius/back.2bpp.lz"
YanmaFrontpic: INCBIN "gfx/pokemon/yanma/front.animated.2bpp.lz"
YanmaBackpic: INCBIN "gfx/pokemon/yanma/back.2bpp.lz"
YanmegaFrontpic: INCBIN "gfx/pokemon/yanmega/front.animated.2bpp.lz"
YanmegaBackpic: INCBIN "gfx/pokemon/yanmega/back.2bpp.lz"
GirafarigFrontpic: INCBIN "gfx/pokemon/girafarig/front.animated.2bpp.lz"
GirafarigBackpic: INCBIN "gfx/pokemon/girafarig/back.2bpp.lz"
PinecoFrontpic: INCBIN "gfx/pokemon/pineco/front.animated.2bpp.lz"
PinecoBackpic: INCBIN "gfx/pokemon/pineco/back.2bpp.lz"
ForretressFrontpic: INCBIN "gfx/pokemon/forretress/front.animated.2bpp.lz"
ForretressBackpic: INCBIN "gfx/pokemon/forretress/back.2bpp.lz"
DunsparceFrontpic: INCBIN "gfx/pokemon/dunsparce/front.animated.2bpp.lz"
DunsparceBackpic: INCBIN "gfx/pokemon/dunsparce/back.2bpp.lz"


SECTION "Pokemon Pics 22", ROMX

GligarFrontpic: INCBIN "gfx/pokemon/gligar/front.animated.2bpp.lz"
GligarBackpic: INCBIN "gfx/pokemon/gligar/back.2bpp.lz"
GliscorFrontpic: INCBIN "gfx/pokemon/gliscor/front.animated.2bpp.lz"
GliscorBackpic: INCBIN "gfx/pokemon/gliscor/back.2bpp.lz"
SnubbullFrontpic: INCBIN "gfx/pokemon/snubbull/front.animated.2bpp.lz"
SnubbullBackpic: INCBIN "gfx/pokemon/snubbull/back.2bpp.lz"
GranbullFrontpic: INCBIN "gfx/pokemon/granbull/front.animated.2bpp.lz"
GranbullBackpic: INCBIN "gfx/pokemon/granbull/back.2bpp.lz"
QwilfishFrontpic: INCBIN "gfx/pokemon/qwilfish/front.animated.2bpp.lz"
QwilfishBackpic: INCBIN "gfx/pokemon/qwilfish/back.2bpp.lz"
OverqwilFrontpic: INCBIN "gfx/pokemon/overqwil/front.animated.2bpp.lz"
OverqwilBackpic: INCBIN "gfx/pokemon/overqwil/back.2bpp.lz"
ShuckleFrontpic: INCBIN "gfx/pokemon/shuckle/front.animated.2bpp.lz"
ShuckleBackpic: INCBIN "gfx/pokemon/shuckle/back.2bpp.lz"
HeracrossFrontpic: INCBIN "gfx/pokemon/heracross/front.animated.2bpp.lz"
HeracrossBackpic: INCBIN "gfx/pokemon/heracross/back.2bpp.lz"


SECTION "Pokemon Pics 23", ROMX

SneaselFrontpic: INCBIN "gfx/pokemon/sneasel/front.animated.2bpp.lz"
SneaselBackpic: INCBIN "gfx/pokemon/sneasel/back.2bpp.lz"
WeavileFrontpic: INCBIN "gfx/pokemon/weavile/front.animated.2bpp.lz"
WeavileBackpic: INCBIN "gfx/pokemon/weavile/back.2bpp.lz"
SneaslerFrontpic: INCBIN "gfx/pokemon/sneasler/front.animated.2bpp.lz"
SneaslerBackpic: INCBIN "gfx/pokemon/sneasler/back.2bpp.lz"
TeddiursaFrontpic: INCBIN "gfx/pokemon/teddiursa/front.animated.2bpp.lz"
TeddiursaBackpic: INCBIN "gfx/pokemon/teddiursa/back.2bpp.lz"
UrsaringFrontpic: INCBIN "gfx/pokemon/ursaring/front.animated.2bpp.lz"
UrsaringBackpic: INCBIN "gfx/pokemon/ursaring/back.2bpp.lz"
UrsalunaFrontpic: INCBIN "gfx/pokemon/ursaluna/front.animated.2bpp.lz"
UrsalunaBackpic: INCBIN "gfx/pokemon/ursaluna/back.2bpp.lz"
MagcargoFrontpic: INCBIN "gfx/pokemon/magcargo/front.animated.2bpp.lz"
MagcargoBackpic: INCBIN "gfx/pokemon/magcargo/back.2bpp.lz"
PiloswineFrontpic: INCBIN "gfx/pokemon/piloswine/front.animated.2bpp.lz"
PiloswineBackpic: INCBIN "gfx/pokemon/piloswine/back.2bpp.lz"


SECTION "Pokemon Pics 24", ROMX

MamoswineFrontpic: INCBIN "gfx/pokemon/mamoswine/front.animated.2bpp.lz"
MamoswineBackpic: INCBIN "gfx/pokemon/mamoswine/back.2bpp.lz"
CorsolaFrontpic: INCBIN "gfx/pokemon/corsola/front.animated.2bpp.lz"
CorsolaBackpic: INCBIN "gfx/pokemon/corsola/back.2bpp.lz"
OctilleryFrontpic: INCBIN "gfx/pokemon/octillery/front.animated.2bpp.lz"
OctilleryBackpic: INCBIN "gfx/pokemon/octillery/back.2bpp.lz"
MantineFrontpic: INCBIN "gfx/pokemon/mantine/front.animated.2bpp.lz"
MantineBackpic: INCBIN "gfx/pokemon/mantine/back.2bpp.lz"
SkarmoryFrontpic: INCBIN "gfx/pokemon/skarmory/front.animated.2bpp.lz"
SkarmoryBackpic: INCBIN "gfx/pokemon/skarmory/back.2bpp.lz"
HoundourFrontpic: INCBIN "gfx/pokemon/houndour/front.animated.2bpp.lz"
HoundourBackpic: INCBIN "gfx/pokemon/houndour/back.2bpp.lz"
HoundoomFrontpic: INCBIN "gfx/pokemon/houndoom/front.animated.2bpp.lz"
HoundoomBackpic: INCBIN "gfx/pokemon/houndoom/back.2bpp.lz"
DonphanFrontpic: INCBIN "gfx/pokemon/donphan/front.animated.2bpp.lz"
DonphanBackpic: INCBIN "gfx/pokemon/donphan/back.2bpp.lz"


SECTION "Pokemon Pics 25", ROMX

StantlerFrontpic: INCBIN "gfx/pokemon/stantler/front.animated.2bpp.lz"
StantlerBackpic: INCBIN "gfx/pokemon/stantler/back.2bpp.lz"
WyrdeerFrontpic: INCBIN "gfx/pokemon/wyrdeer/front.animated.2bpp.lz"
WyrdeerBackpic: INCBIN "gfx/pokemon/wyrdeer/back.2bpp.lz"
MiltankFrontpic: INCBIN "gfx/pokemon/miltank/front.animated.2bpp.lz"
MiltankBackpic: INCBIN "gfx/pokemon/miltank/back.2bpp.lz"
GrotleFrontpic: INCBIN "gfx/pokemon/grotle/front.animated.2bpp.lz"
GrotleBackpic: INCBIN "gfx/pokemon/grotle/back.2bpp.lz"
TorterraFrontpic: INCBIN "gfx/pokemon/torterra/front.animated.2bpp.lz"
TorterraBackpic: INCBIN "gfx/pokemon/torterra/back.2bpp.lz"
MonfernoFrontpic: INCBIN "gfx/pokemon/monferno/front.animated.2bpp.lz"
MonfernoBackpic: INCBIN "gfx/pokemon/monferno/back.2bpp.lz"
InfernapeFrontpic: INCBIN "gfx/pokemon/infernape/front.animated.2bpp.lz"
InfernapeBackpic: INCBIN "gfx/pokemon/infernape/back.2bpp.lz"
PrinplupFrontpic: INCBIN "gfx/pokemon/prinplup/front.animated.2bpp.lz"
PrinplupBackpic: INCBIN "gfx/pokemon/prinplup/back.2bpp.lz"


SECTION "Pokemon Pics 26", ROMX

EmpoleonFrontpic: INCBIN "gfx/pokemon/empoleon/front.animated.2bpp.lz"
EmpoleonBackpic: INCBIN "gfx/pokemon/empoleon/back.2bpp.lz"
StaraviaFrontpic: INCBIN "gfx/pokemon/staravia/front.animated.2bpp.lz"
StaraviaBackpic: INCBIN "gfx/pokemon/staravia/back.2bpp.lz"
StaraptorFrontpic: INCBIN "gfx/pokemon/staraptor/front.animated.2bpp.lz"
StaraptorBackpic: INCBIN "gfx/pokemon/staraptor/back.2bpp.lz"
LuxioFrontpic: INCBIN "gfx/pokemon/luxio/front.animated.2bpp.lz"
LuxioBackpic: INCBIN "gfx/pokemon/luxio/back.2bpp.lz"
LuxrayFrontpic: INCBIN "gfx/pokemon/luxray/front.animated.2bpp.lz"
LuxrayBackpic: INCBIN "gfx/pokemon/luxray/back.2bpp.lz"
RoseliaFrontpic: INCBIN "gfx/pokemon/roselia/front.animated.2bpp.lz"
RoseliaBackpic: INCBIN "gfx/pokemon/roselia/back.2bpp.lz"
RoseradeFrontpic: INCBIN "gfx/pokemon/roserade/front.animated.2bpp.lz"
RoseradeBackpic: INCBIN "gfx/pokemon/roserade/back.2bpp.lz"
RampardosFrontpic: INCBIN "gfx/pokemon/rampardos/front.animated.2bpp.lz"
RampardosBackpic: INCBIN "gfx/pokemon/rampardos/back.2bpp.lz"


SECTION "Pokemon Pics 27", ROMX

BastiodonFrontpic: INCBIN "gfx/pokemon/bastiodon/front.animated.2bpp.lz"
BastiodonBackpic: INCBIN "gfx/pokemon/bastiodon/back.2bpp.lz"
VespiquenFrontpic: INCBIN "gfx/pokemon/vespiquen/front.animated.2bpp.lz"
VespiquenBackpic: INCBIN "gfx/pokemon/vespiquen/back.2bpp.lz"
AmbipomFrontpic: INCBIN "gfx/pokemon/ambipom/front.animated.2bpp.lz"
AmbipomBackpic: INCBIN "gfx/pokemon/ambipom/back.2bpp.lz"
DrifblimFrontpic: INCBIN "gfx/pokemon/drifblim/front.animated.2bpp.lz"
DrifblimBackpic: INCBIN "gfx/pokemon/drifblim/back.2bpp.lz"
LopunnyFrontpic: INCBIN "gfx/pokemon/lopunny/front.animated.2bpp.lz"
LopunnyBackpic: INCBIN "gfx/pokemon/lopunny/back.2bpp.lz"
SkuntankFrontpic: INCBIN "gfx/pokemon/skuntank/front.animated.2bpp.lz"
SkuntankBackpic: INCBIN "gfx/pokemon/skuntank/back.2bpp.lz"
BronzorFrontpic: INCBIN "gfx/pokemon/bronzor/front.animated.2bpp.lz"
BronzorBackpic: INCBIN "gfx/pokemon/bronzor/back.2bpp.lz"
BronzongFrontpic: INCBIN "gfx/pokemon/bronzong/front.animated.2bpp.lz"
BronzongBackpic: INCBIN "gfx/pokemon/bronzong/back.2bpp.lz"


SECTION "Pokemon Pics 28", ROMX

SpiritombFrontpic: INCBIN "gfx/pokemon/spiritomb/front.animated.2bpp.lz"
SpiritombBackpic: INCBIN "gfx/pokemon/spiritomb/back.2bpp.lz"
GabiteFrontpic: INCBIN "gfx/pokemon/gabite/front.animated.2bpp.lz"
GabiteBackpic: INCBIN "gfx/pokemon/gabite/back.2bpp.lz"
GarchompFrontpic: INCBIN "gfx/pokemon/garchomp/front.animated.2bpp.lz"
GarchompBackpic: INCBIN "gfx/pokemon/garchomp/back.2bpp.lz"
LucarioFrontpic: INCBIN "gfx/pokemon/lucario/front.animated.2bpp.lz"
LucarioBackpic: INCBIN "gfx/pokemon/lucario/back.2bpp.lz"
HippowdonFrontpic: INCBIN "gfx/pokemon/hippowdon/front.animated.2bpp.lz"
HippowdonBackpic: INCBIN "gfx/pokemon/hippowdon/back.2bpp.lz"
DrapionFrontpic: INCBIN "gfx/pokemon/drapion/front.animated.2bpp.lz"
DrapionBackpic: INCBIN "gfx/pokemon/drapion/back.2bpp.lz"
ToxicroakFrontpic: INCBIN "gfx/pokemon/toxicroak/front.animated.2bpp.lz"
ToxicroakBackpic: INCBIN "gfx/pokemon/toxicroak/back.2bpp.lz"
SnoverFrontpic: INCBIN "gfx/pokemon/snover/front.animated.2bpp.lz"
SnoverBackpic: INCBIN "gfx/pokemon/snover/back.2bpp.lz"


SECTION "Pokemon Pics 29", ROMX

AbomasnowFrontpic: 			INCBIN "gfx/pokemon/abomasnow/front.animated.2bpp.lz"
AbomasnowBackpic: 			INCBIN "gfx/pokemon/abomasnow/back.2bpp.lz"
DusclopsFrontpic: 			INCBIN "gfx/pokemon/dusclops/front.animated.2bpp.lz"
DusclopsBackpic: 			INCBIN "gfx/pokemon/dusclops/back.2bpp.lz"
DusknoirFrontpic: 			INCBIN "gfx/pokemon/dusknoir/front.animated.2bpp.lz"
DusknoirBackpic: 			INCBIN "gfx/pokemon/dusknoir/back.2bpp.lz"
FroslassFrontpic: 			INCBIN "gfx/pokemon/froslass/front.animated.2bpp.lz"
FroslassBackpic: 			INCBIN "gfx/pokemon/froslass/back.2bpp.lz"
RotomFrontpic: 				INCBIN "gfx/pokemon/rotom/front.animated.2bpp.lz"
RotomBackpic: 				INCBIN "gfx/pokemon/rotom/back.2bpp.lz"
HavaluggFrontpic: 			INCBIN "gfx/pokemon/havalugg/front.animated.2bpp.lz"
HavaluggBackpic: 			INCBIN "gfx/pokemon/havalugg/back.2bpp.lz"
BasculegionFrontpic: 		INCBIN "gfx/pokemon/basculegion/front.animated.2bpp.lz"
BasculegionBackpic: 		INCBIN "gfx/pokemon/basculegion/back.2bpp.lz"
HbraviaryFrontpic: 			INCBIN "gfx/pokemon/hbraviary/front.animated.2bpp.lz"
HbraviaryBackpic: 			INCBIN "gfx/pokemon/hbraviary/back.2bpp.lz"


SECTION "Pokemon Pics 30", ROMX

KirliaFrontpic: 			INCBIN "gfx/pokemon/kirlia/front.animated.2bpp.lz"
KirliaBackpic: 				INCBIN "gfx/pokemon/kirlia/back.2bpp.lz"
GardevoirFrontpic: 			INCBIN "gfx/pokemon/gardevoir/front.animated.2bpp.lz"
GardevoirBackpic: 			INCBIN "gfx/pokemon/gardevoir/back.2bpp.lz"
GalladeFrontpic: 			INCBIN "gfx/pokemon/gallade/front.animated.2bpp.lz"
GalladeBackpic: 			INCBIN "gfx/pokemon/gallade/back.2bpp.lz"
HsliggooFrontpic: 			INCBIN "gfx/pokemon/hsliggoo/front.animated.2bpp.lz"
HsliggooBackpic: 			INCBIN "gfx/pokemon/hsliggoo/back.2bpp.lz"
HgoodraFrontpic: 			INCBIN "gfx/pokemon/hgoodra/front.animated.2bpp.lz"
HgoodraBackpic: 			INCBIN "gfx/pokemon/hgoodra/back.2bpp.lz"
HzoroarkFrontpic: 			INCBIN "gfx/pokemon/hzoroark/front.animated.2bpp.lz"
HzoroarkBackpic: 			INCBIN "gfx/pokemon/hzoroark/back.2bpp.lz"
DratiniFrontpic: 			INCBIN "gfx/pokemon/dratini/front.animated.2bpp.lz"
DratiniBackpic: 			INCBIN "gfx/pokemon/dratini/back.2bpp.lz"
DragonairFrontpic: 			INCBIN "gfx/pokemon/dragonair/front.animated.2bpp.lz"
DragonairBackpic: 			INCBIN "gfx/pokemon/dragonair/back.2bpp.lz"


SECTION "Pokemon Pics 31", ROMX

DragoniteFrontpic: 			INCBIN "gfx/pokemon/dragonite/front.animated.2bpp.lz"
DragoniteBackpic: 			INCBIN "gfx/pokemon/dragonite/back.2bpp.lz"
LarvitarFrontpic: 			INCBIN "gfx/pokemon/larvitar/front.animated.2bpp.lz"
LarvitarBackpic: 			INCBIN "gfx/pokemon/larvitar/back.2bpp.lz"
PupitarFrontpic: 			INCBIN "gfx/pokemon/pupitar/front.animated.2bpp.lz"
PupitarBackpic: 			INCBIN "gfx/pokemon/pupitar/back.2bpp.lz"
TyranitarFrontpic: 			INCBIN "gfx/pokemon/tyranitar/front.animated.2bpp.lz"
TyranitarBackpic: 			INCBIN "gfx/pokemon/tyranitar/back.2bpp.lz"
RaikouFrontpic: 			INCBIN "gfx/pokemon/raikou/front.animated.2bpp.lz"
RaikouBackpic: 				INCBIN "gfx/pokemon/raikou/back.2bpp.lz"
EnteiFrontpic: 				INCBIN "gfx/pokemon/entei/front.animated.2bpp.lz"
EnteiBackpic: 				INCBIN "gfx/pokemon/entei/back.2bpp.lz"
SuicuneFrontpic: 			INCBIN "gfx/pokemon/suicune/front.animated.2bpp.lz"
SuicuneBackpic: 			INCBIN "gfx/pokemon/suicune/back.2bpp.lz"
HeatranFrontpic: 			INCBIN "gfx/pokemon/heatran/front.animated.2bpp.lz"
HeatranBackpic: 			INCBIN "gfx/pokemon/heatran/back.2bpp.lz"


SECTION "Pokemon Pics 32", ROMX

LugiaFrontpic: 				INCBIN "gfx/pokemon/lugia/front.animated.2bpp.lz"
LugiaBackpic: 				INCBIN "gfx/pokemon/lugia/back.2bpp.lz"
Ho_OhFrontpic: 				INCBIN "gfx/pokemon/ho_oh/front.animated.2bpp.lz"
Ho_OhBackpic: 				INCBIN "gfx/pokemon/ho_oh/back.2bpp.lz"
CelebiFrontpic: 			INCBIN "gfx/pokemon/celebi/front.animated.2bpp.lz"
CelebiBackpic: 				INCBIN "gfx/pokemon/celebi/back.2bpp.lz"
EggPic:                   	INCBIN "gfx/pokemon/egg/front.animated.2bpp.lz"
NoctowlFrontpic: 			INCBIN "gfx/pokemon/noctowl/front.animated.2bpp.lz"
NoctowlBackpic: 			INCBIN "gfx/pokemon/noctowl/back.2bpp.lz"

AnnihilapeFrontpic: 		INCBIN "gfx/pokemon/annihilape/front.animated.2bpp.lz"
AnnihilapeBackpic: 			INCBIN "gfx/pokemon/annihilape/back.2bpp.lz"
MinsirFrontpic: 			INCBIN "gfx/pokemon/minsir/front.animated.2bpp.lz"
MinsirBackpic: 				INCBIN "gfx/pokemon/minsir/back.2bpp.lz"






SECTION "Unown Pics 1", ROMX

UnownAFrontpic:           INCBIN "gfx/pokemon/unown_a/front.animated.2bpp.lz"
UnownABackpic:            INCBIN "gfx/pokemon/unown_a/back.2bpp.lz"
UnownBFrontpic:           INCBIN "gfx/pokemon/unown_b/front.animated.2bpp.lz"
UnownBBackpic:            INCBIN "gfx/pokemon/unown_b/back.2bpp.lz"
UnownCFrontpic:           INCBIN "gfx/pokemon/unown_c/front.animated.2bpp.lz"
UnownCBackpic:            INCBIN "gfx/pokemon/unown_c/back.2bpp.lz"
UnownDFrontpic:           INCBIN "gfx/pokemon/unown_d/front.animated.2bpp.lz"
UnownDBackpic:            INCBIN "gfx/pokemon/unown_d/back.2bpp.lz"
UnownEFrontpic:           INCBIN "gfx/pokemon/unown_e/front.animated.2bpp.lz"
UnownEBackpic:            INCBIN "gfx/pokemon/unown_e/back.2bpp.lz"
UnownFFrontpic:           INCBIN "gfx/pokemon/unown_f/front.animated.2bpp.lz"
UnownFBackpic:            INCBIN "gfx/pokemon/unown_f/back.2bpp.lz"
UnownGFrontpic:           INCBIN "gfx/pokemon/unown_g/front.animated.2bpp.lz"
UnownGBackpic:            INCBIN "gfx/pokemon/unown_g/back.2bpp.lz"


SECTION "Unown Pics 2", ROMX

UnownHFrontpic:           INCBIN "gfx/pokemon/unown_h/front.animated.2bpp.lz"
UnownHBackpic:            INCBIN "gfx/pokemon/unown_h/back.2bpp.lz"
UnownIFrontpic:           INCBIN "gfx/pokemon/unown_i/front.animated.2bpp.lz"
UnownIBackpic:            INCBIN "gfx/pokemon/unown_i/back.2bpp.lz"
UnownJFrontpic:           INCBIN "gfx/pokemon/unown_j/front.animated.2bpp.lz"
UnownJBackpic:            INCBIN "gfx/pokemon/unown_j/back.2bpp.lz"
UnownKFrontpic:           INCBIN "gfx/pokemon/unown_k/front.animated.2bpp.lz"
UnownKBackpic:            INCBIN "gfx/pokemon/unown_k/back.2bpp.lz"
UnownLFrontpic:           INCBIN "gfx/pokemon/unown_l/front.animated.2bpp.lz"
UnownLBackpic:            INCBIN "gfx/pokemon/unown_l/back.2bpp.lz"
UnownMFrontpic:           INCBIN "gfx/pokemon/unown_m/front.animated.2bpp.lz"
UnownMBackpic:            INCBIN "gfx/pokemon/unown_m/back.2bpp.lz"
UnownNFrontpic:           INCBIN "gfx/pokemon/unown_n/front.animated.2bpp.lz"
UnownNBackpic:            INCBIN "gfx/pokemon/unown_n/back.2bpp.lz"


SECTION "Unown Pics 3", ROMX

UnownOFrontpic:           INCBIN "gfx/pokemon/unown_o/front.animated.2bpp.lz"
UnownOBackpic:            INCBIN "gfx/pokemon/unown_o/back.2bpp.lz"
UnownPFrontpic:           INCBIN "gfx/pokemon/unown_p/front.animated.2bpp.lz"
UnownPBackpic:            INCBIN "gfx/pokemon/unown_p/back.2bpp.lz"
UnownQFrontpic:           INCBIN "gfx/pokemon/unown_q/front.animated.2bpp.lz"
UnownQBackpic:            INCBIN "gfx/pokemon/unown_q/back.2bpp.lz"
UnownRFrontpic:           INCBIN "gfx/pokemon/unown_r/front.animated.2bpp.lz"
UnownRBackpic:            INCBIN "gfx/pokemon/unown_r/back.2bpp.lz"
UnownSFrontpic:           INCBIN "gfx/pokemon/unown_s/front.animated.2bpp.lz"
UnownSBackpic:            INCBIN "gfx/pokemon/unown_s/back.2bpp.lz"
UnownTFrontpic:           INCBIN "gfx/pokemon/unown_t/front.animated.2bpp.lz"
UnownTBackpic:            INCBIN "gfx/pokemon/unown_t/back.2bpp.lz"
UnownUFrontpic:           INCBIN "gfx/pokemon/unown_u/front.animated.2bpp.lz"
UnownUBackpic:            INCBIN "gfx/pokemon/unown_u/back.2bpp.lz"


SECTION "Unown Pics 4", ROMX

UnownVFrontpic:           INCBIN "gfx/pokemon/unown_v/front.animated.2bpp.lz"
UnownVBackpic:            INCBIN "gfx/pokemon/unown_v/back.2bpp.lz"
UnownWFrontpic:           INCBIN "gfx/pokemon/unown_w/front.animated.2bpp.lz"
UnownWBackpic:            INCBIN "gfx/pokemon/unown_w/back.2bpp.lz"
UnownXFrontpic:           INCBIN "gfx/pokemon/unown_x/front.animated.2bpp.lz"
UnownXBackpic:            INCBIN "gfx/pokemon/unown_x/back.2bpp.lz"
UnownYFrontpic:           INCBIN "gfx/pokemon/unown_y/front.animated.2bpp.lz"
UnownYBackpic:            INCBIN "gfx/pokemon/unown_y/back.2bpp.lz"
UnownZFrontpic:           INCBIN "gfx/pokemon/unown_z/front.animated.2bpp.lz"
UnownZBackpic:            INCBIN "gfx/pokemon/unown_z/back.2bpp.lz"
UnownExclamationFrontpic: INCBIN "gfx/pokemon/unown_exclamation/front.animated.2bpp.lz"
UnownExclamationBackpic:  INCBIN "gfx/pokemon/unown_exclamation/back.2bpp.lz"
UnownQuestionFrontpic:    INCBIN "gfx/pokemon/unown_question/front.animated.2bpp.lz"
UnownQuestionBackpic:     INCBIN "gfx/pokemon/unown_question/back.2bpp.lz"


SECTION "Trainer Pics 1", ROMX

CarriePic:                INCBIN "gfx/trainers/carrie.2bpp.lz"
CalPic:                   INCBIN "gfx/trainers/cal.2bpp.lz"
FalknerPic:               INCBIN "gfx/trainers/falkner.2bpp.lz"
BugsyPic:                 INCBIN "gfx/trainers/bugsy.2bpp.lz"
WhitneyPic:               INCBIN "gfx/trainers/whitney.2bpp.lz"
MortyPic:                 INCBIN "gfx/trainers/morty.2bpp.lz"
ChuckPic:                 INCBIN "gfx/trainers/chuck.2bpp.lz"
JasminePic:               INCBIN "gfx/trainers/jasmine.2bpp.lz"
PrycePic:                 INCBIN "gfx/trainers/pryce.2bpp.lz"
ClairPic:                 INCBIN "gfx/trainers/clair.2bpp.lz"
KurtPic:                  INCBIN "gfx/trainers/kurt.2bpp.lz"
MejimiPic:                INCBIN "gfx/trainers/mejimi.2bpp.lz"
BrunoPic:                 INCBIN "gfx/trainers/bruno.2bpp.lz"
SandraPic:                INCBIN "gfx/trainers/sandra.2bpp.lz"
KurtFinalPic:              INCBIN "gfx/trainers/kurtfinal.2bpp.lz"
BrockPic:                 INCBIN "gfx/trainers/brock.2bpp.lz"


SECTION "Trainer Pics 2", ROMX

SamsaraPic:               INCBIN "gfx/trainers/samsara.2bpp.lz"
LtSurgePic:               INCBIN "gfx/trainers/lt_surge.2bpp.lz"
ErikaPic:                 INCBIN "gfx/trainers/erika.2bpp.lz"
JaninePic:                INCBIN "gfx/trainers/janine.2bpp.lz"
SabrinaPic:               INCBIN "gfx/trainers/sabrina.2bpp.lz"
HollisPic:                INCBIN "gfx/trainers/hollis.2bpp.lz"
BluePic:                  INCBIN "gfx/trainers/blue.2bpp.lz"
RedPic:                   INCBIN "gfx/trainers/red.2bpp.lz"
LeafPic:                  INCBIN "gfx/trainers/leaf.2bpp.lz"
Rival0Pic:
Rival1Pic:                INCBIN "gfx/trainers/rival1.2bpp.lz" ; walker
Rival2Pic:                INCBIN "gfx/trainers/rival2.2bpp.lz" ;walker
NinjaPic:                 INCBIN "gfx/trainers/ninja.2bpp.lz" ;
Lyra2Pic:                 INCBIN "gfx/trainers/lyra2.2bpp.lz"
YoungsterPic:             INCBIN "gfx/trainers/youngster.2bpp.lz"
BugCatcherPic:            INCBIN "gfx/trainers/bug_catcher.2bpp.lz"
CamperPic:                INCBIN "gfx/trainers/camper.2bpp.lz"


SECTION "Trainer Pics 3", ROMX

PicnickerPic:             INCBIN "gfx/trainers/picnicker.2bpp.lz"
TwinsPic:                 INCBIN "gfx/trainers/twins.2bpp.lz"
FisherPic:                INCBIN "gfx/trainers/fisher.2bpp.lz"
BirdKeeperPic:            INCBIN "gfx/trainers/bird_keeper.2bpp.lz"
HikerPic:                 INCBIN "gfx/trainers/hiker.2bpp.lz"
BrigaderPic:              INCBIN "gfx/trainers/brigader.2bpp.lz"
GruntfPic:                INCBIN "gfx/trainers/grunt_f.2bpp.lz"
PokefanmPic:              INCBIN "gfx/trainers/pokefan_m.2bpp.lz"
PokefanfPic:              INCBIN "gfx/trainers/pokefan_f.2bpp.lz"
OfficermPic:              INCBIN "gfx/trainers/officer_m.2bpp.lz"
OfficerfPic:              INCBIN "gfx/trainers/officer_f.2bpp.lz"
NursePic:                 INCBIN "gfx/trainers/nurse.2bpp.lz"
PokemaniacPic:            INCBIN "gfx/trainers/pokemaniac.2bpp.lz"
CosplayerPic:             INCBIN "gfx/trainers/cosplayer.2bpp.lz"
SuperNerdPic:             INCBIN "gfx/trainers/super_nerd.2bpp.lz"
LassPic:                  INCBIN "gfx/trainers/lass.2bpp.lz"


SECTION "Trainer Pics 4", ROMX

BeautyPic:                INCBIN "gfx/trainers/beauty.2bpp.lz"
BugManiacPic:             INCBIN "gfx/trainers/bug_maniac.2bpp.lz"
RuinManiacPic:            INCBIN "gfx/trainers/ruin_maniac.2bpp.lz"
FirebreatherPic:          INCBIN "gfx/trainers/firebreather.2bpp.lz"
JugglerPic:               INCBIN "gfx/trainers/juggler.2bpp.lz"
SchoolboyPic:             INCBIN "gfx/trainers/schoolboy.2bpp.lz"
SchoolgirlPic:            INCBIN "gfx/trainers/schoolgirl.2bpp.lz"
PsychicTPic:              INCBIN "gfx/trainers/psychic_t.2bpp.lz"
HexManiacPic:             INCBIN "gfx/trainers/hex_maniac.2bpp.lz"
SagePic:                  INCBIN "gfx/trainers/sage.2bpp.lz"
MediumPic:                INCBIN "gfx/trainers/medium.2bpp.lz"
KimonoGirl1Pic:
KimonoGirl2Pic:
KimonoGirl3Pic:
KimonoGirl4Pic:
KimonoGirl5Pic:           INCBIN "gfx/trainers/kimono_girl.2bpp.lz"
ElderPic:                 INCBIN "gfx/trainers/elder.2bpp.lz"
SrAndJrPic:               INCBIN "gfx/trainers/sr_and_jr.2bpp.lz"
CouplePic:                INCBIN "gfx/trainers/couple.2bpp.lz"
GentlemanPic:             INCBIN "gfx/trainers/gentleman.2bpp.lz"


SECTION "Trainer Pics 5", ROMX

RichBoyPic:               INCBIN "gfx/trainers/rich_boy.2bpp.lz"
LadyPic:                  INCBIN "gfx/trainers/lady.2bpp.lz"
BreederPic:               INCBIN "gfx/trainers/breeder.2bpp.lz"
BakerPic:                 INCBIN "gfx/trainers/baker.2bpp.lz"
CowgirlPic:               INCBIN "gfx/trainers/cowgirl.2bpp.lz"
SailorPic:                INCBIN "gfx/trainers/sailor.2bpp.lz"
SwimmermPic:              INCBIN "gfx/trainers/swimmer_m.2bpp.lz"
SwimmerfPic:              INCBIN "gfx/trainers/swimmer_f.2bpp.lz"
BurglarPic:               INCBIN "gfx/trainers/burglar.2bpp.lz"
PIPic:                    INCBIN "gfx/trainers/pi.2bpp.lz"
ScientistPic:
RocketScientistPic:       INCBIN "gfx/trainers/scientist.2bpp.lz"
BoarderPic:               INCBIN "gfx/trainers/boarder.2bpp.lz"
SkierPic:                 INCBIN "gfx/trainers/skier.2bpp.lz"
BlackbeltTPic:            INCBIN "gfx/trainers/blackbelt_t.2bpp.lz"
BattleGirlPic:            INCBIN "gfx/trainers/battle_girl.2bpp.lz"
DragonTamerPic:           INCBIN "gfx/trainers/dragon_tamer.2bpp.lz"


SECTION "Trainer Pics 6", ROMX

EngineerPic:              INCBIN "gfx/trainers/engineer.2bpp.lz"
TeacherPic:               INCBIN "gfx/trainers/teacher.2bpp.lz"
GuitaristmPic:            INCBIN "gfx/trainers/guitarist_m.2bpp.lz"
GuitaristfPic:            INCBIN "gfx/trainers/guitarist_f.2bpp.lz"
BikerPic:                 INCBIN "gfx/trainers/biker.2bpp.lz"
RoughneckPic:             INCBIN "gfx/trainers/roughneck.2bpp.lz"
TamerPic:                 INCBIN "gfx/trainers/tamer.2bpp.lz"
ArtistPic:                INCBIN "gfx/trainers/artist.2bpp.lz"
AromaLadyPic:             INCBIN "gfx/trainers/aroma_lady.2bpp.lz"
WaiterPic:                INCBIN "gfx/trainers/waiter.2bpp.lz"
WaitressPic:              INCBIN "gfx/trainers/waitress.2bpp.lz"
SightseermPic:            INCBIN "gfx/trainers/sightseer_m.2bpp.lz"
SightseerfPic:            INCBIN "gfx/trainers/sightseer_f.2bpp.lz"
SightseersPic:            INCBIN "gfx/trainers/sightseers.2bpp.lz"
CooltrainermPic:          INCBIN "gfx/trainers/cooltrainer_m.2bpp.lz"
CooltrainerfPic:          INCBIN "gfx/trainers/cooltrainer_f.2bpp.lz"


SECTION "Trainer Pics 7", ROMX

AceDuoPic:                INCBIN "gfx/trainers/ace_duo.2bpp.lz"
VeteranmPic:              INCBIN "gfx/trainers/veteran_m.2bpp.lz"
VeteranfPic:              INCBIN "gfx/trainers/veteran_f.2bpp.lz"
ProtonPic:                INCBIN "gfx/trainers/proton.2bpp.lz"
PetrelPic:                INCBIN "gfx/trainers/petrel.2bpp.lz"
ArcherPic:                INCBIN "gfx/trainers/archer.2bpp.lz"
ArianaPic:                INCBIN "gfx/trainers/ariana.2bpp.lz"
GiovanniPic:              INCBIN "gfx/trainers/giovanni.2bpp.lz"
ProfOakPic:               INCBIN "gfx/trainers/oak.2bpp.lz"
ProfElmPic:               INCBIN "gfx/trainers/elm.2bpp.lz"
ProfIvyPic:               INCBIN "gfx/trainers/ivy.2bpp.lz"
MysticalmanPic:           INCBIN "gfx/trainers/mysticalman.2bpp.lz"
KarateKingPic:            INCBIN "gfx/trainers/karate_king.2bpp.lz"
OstenePic:                INCBIN "gfx/trainers/ostene.2bpp.lz"
JessieJamesPic:           INCBIN "gfx/trainers/jessie_james.2bpp.lz"
LoreleiPic:               INCBIN "gfx/trainers/lorelei.2bpp.lz"


SECTION "Trainer Pics 8", ROMX

AgathaPic:                INCBIN "gfx/trainers/agatha.2bpp.lz"
StevenPic:                INCBIN "gfx/trainers/steven.2bpp.lz"
CynthiaPic:               INCBIN "gfx/trainers/cynthia.2bpp.lz"
AmosPic:                  INCBIN "gfx/trainers/amos.2bpp.lz"
CherylPic:                INCBIN "gfx/trainers/cheryl.2bpp.lz"
RileyPic:                 INCBIN "gfx/trainers/riley.2bpp.lz"
NomadMPic:                  INCBIN "gfx/trainers/nomad_m.2bpp.lz"
MarleyPic:                INCBIN "gfx/trainers/marley.2bpp.lz"
MiraPic:                  INCBIN "gfx/trainers/mira.2bpp.lz"
LannaPic:                 INCBIN "gfx/trainers/lanna.2bpp.lz"
DarachPic:                INCBIN "gfx/trainers/darach.2bpp.lz"
NomadFPic:               INCBIN "gfx/trainers/nomad_f.2bpp.lz"
BobeshPic:                INCBIN "gfx/trainers/bobesh.2bpp.lz"
AdrinnaPic:               INCBIN "gfx/trainers/adrinna.2bpp.lz"
BarbeauPic:               INCBIN "gfx/trainers/barbeau.2bpp.lz"
FlanneryPic:              INCBIN "gfx/trainers/flannery.2bpp.lz"


SECTION "Trainer Pics 9", ROMX

KannaPic:                 INCBIN "gfx/trainers/kanna.2bpp.lz"
SkylaPic:                 INCBIN "gfx/trainers/skyla.2bpp.lz"
ValeriePic:               INCBIN "gfx/trainers/valerie.2bpp.lz"
KukuiPic:                 INCBIN "gfx/trainers/kukui.2bpp.lz"
VictorPic:                INCBIN "gfx/trainers/victor.2bpp.lz"
BillPic:                  INCBIN "gfx/trainers/bill.2bpp.lz"
TammyPic:                 INCBIN "gfx/trainers/tammy.2bpp.lz"
SilverPic:                INCBIN "gfx/trainers/silver.2bpp.lz"
ImakuniPic:               INCBIN "gfx/trainers/imakuni.2bpp.lz"
KenseyPic:                INCBIN "gfx/trainers/kensey.2bpp.lz"
ReiPic:                   INCBIN "gfx/trainers/rei.2bpp.lz"
OmastarFossilPic:         INCBIN "gfx/trainers/omastar_fossil.2bpp.lz"
KabutopsFossilPic:        INCBIN "gfx/trainers/kabutops_fossil.2bpp.lz"
AerodactylFossilPic:      INCBIN "gfx/trainers/aerodactyl_fossil.2bpp.lz"
CuboneArmorPic:           INCBIN "gfx/trainers/cubone_armor.2bpp.lz"
MeteoritePic:             INCBIN "gfx/trainers/meteorite.2bpp.lz"
SilhouettePic:            INCBIN "gfx/trainers/silhouette.2bpp.lz"


SECTION "Painting Pics", ROMX

HoOhPaintingPic:          INCBIN "gfx/paintings/ho_oh_painting.2bpp.lz"
LugiaPaintingPic:         INCBIN "gfx/paintings/lugia_painting.2bpp.lz"
BellTowerPaintingPic:     INCBIN "gfx/paintings/bell_tower_painting.2bpp.lz"
KabutoPuzzlePic:          INCBIN "gfx/paintings/kabuto_puzzle.2bpp.lz"
OmanytePuzzlePic:         INCBIN "gfx/paintings/omanyte_puzzle.2bpp.lz"
AerodactylPuzzlePic:      INCBIN "gfx/paintings/aerodactyl_puzzle.2bpp.lz"
HoOhPuzzlePic:            INCBIN "gfx/paintings/ho_oh_puzzle.2bpp.lz"
