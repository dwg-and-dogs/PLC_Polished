ev_yield: MACRO
; hp, atk, def, spd, sat, sdf
	db (\1 << 6) | (\2 << 4) | (\3 << 2) | \4
	db (\5 << 6) | (\6 << 4)
ENDM

abilities_for: MACRO
; mon, ability1, ability2, hiddenability
	db \2, \3, \4
	def ABIL_\1_\4 = HIDDEN_ABILITY
	def ABIL_\1_\3 = ABILITY_2
	def ABIL_\1_\2 = ABILITY_1
ENDM

tmhm: MACRO
	; initialize bytes to 0
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		def _tm{d:n} = 0
	endr
	; set bits of bytes
	for i, 1, _NARG + 1
		if DEF(\<i>_TMNUM)
			def n = (\<i>_TMNUM - 1) / 8
			def t = (\<i>_TMNUM - 1) % 8
			def _tm{d:n} |= 1 << t
		else
			fail "\<i> is not a TM, HM, or tutor move"
		endc
	endr
	; output bytes
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		db _tm{d:n}
	endr
ENDM

BaseData::
	table_width BASE_DATA_SIZE, BaseData
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"       ; 01
INCLUDE "data/pokemon/base_stats/quilava.asm"       ; 02
INCLUDE "data/pokemon/base_stats/typhlosion.asm"       ; 03
INCLUDE "data/pokemon/base_stats/rowlet.asm"       ; 04
INCLUDE "data/pokemon/base_stats/dartrix.asm"       ; 05
INCLUDE "data/pokemon/base_stats/decidueye.asm"       ; 06
INCLUDE "data/pokemon/base_stats/oshawott.asm"       ; 07
INCLUDE "data/pokemon/base_stats/dewott.asm"       ; 08
INCLUDE "data/pokemon/base_stats/samurott.asm"       ; 09
INCLUDE "data/pokemon/base_stats/hoothoot.asm"       ; 10
INCLUDE "data/pokemon/base_stats/noctowl.asm"       ; 11
INCLUDE "data/pokemon/base_stats/sentret.asm"       ; 12
INCLUDE "data/pokemon/base_stats/furret.asm"       ; 13
INCLUDE "data/pokemon/base_stats/pikachu.asm"       ; 14
INCLUDE "data/pokemon/base_stats/raichu.asm"       ; 15
INCLUDE "data/pokemon/base_stats/ledyba.asm"       ; 16
INCLUDE "data/pokemon/base_stats/ledian.asm"       ; 17
INCLUDE "data/pokemon/base_stats/spinarak.asm"       ; 18
INCLUDE "data/pokemon/base_stats/ariados.asm"       ; 19
INCLUDE "data/pokemon/base_stats/geodude.asm"       ; 20
INCLUDE "data/pokemon/base_stats/graveler.asm"       ; 21
INCLUDE "data/pokemon/base_stats/golem.asm"       ; 22
INCLUDE "data/pokemon/base_stats/zubat.asm"       ; 23
INCLUDE "data/pokemon/base_stats/golbat.asm"       ; 24
INCLUDE "data/pokemon/base_stats/crobat.asm"       ; 25
INCLUDE "data/pokemon/base_stats/clefairy.asm"       ; 26
INCLUDE "data/pokemon/base_stats/clefable.asm"       ; 27
INCLUDE "data/pokemon/base_stats/togetic.asm"       ; 28
INCLUDE "data/pokemon/base_stats/togekiss.asm"       ; 29
INCLUDE "data/pokemon/base_stats/dunsparce.asm"       ; 30
INCLUDE "data/pokemon/base_stats/dudunsparce.asm"       ; 31
INCLUDE "data/pokemon/base_stats/mareep.asm"       ; 32
INCLUDE "data/pokemon/base_stats/flaaffy.asm"       ; 33
INCLUDE "data/pokemon/base_stats/ampharos.asm"       ; 34
INCLUDE "data/pokemon/base_stats/wooper.asm"       ; 35
INCLUDE "data/pokemon/base_stats/quagsire.asm"       ; 36
INCLUDE "data/pokemon/base_stats/gastly.asm"       ; 37
INCLUDE "data/pokemon/base_stats/haunter.asm"       ; 38
INCLUDE "data/pokemon/base_stats/gengar.asm"       ; 39
INCLUDE "data/pokemon/base_stats/unown.asm"       ; 40
INCLUDE "data/pokemon/base_stats/onix.asm"       ; 41
INCLUDE "data/pokemon/base_stats/steelix.asm"       ; 42
INCLUDE "data/pokemon/base_stats/bellsprout.asm"       ; 43
INCLUDE "data/pokemon/base_stats/weepinbell.asm"       ; 44
INCLUDE "data/pokemon/base_stats/victreebel.asm"       ; 45
INCLUDE "data/pokemon/base_stats/hoppip.asm"       ; 46
INCLUDE "data/pokemon/base_stats/skiploom.asm"       ; 47
INCLUDE "data/pokemon/base_stats/jumpluff.asm"       ; 48
INCLUDE "data/pokemon/base_stats/paras.asm"       ; 49
INCLUDE "data/pokemon/base_stats/parasect.asm"       ; 50
INCLUDE "data/pokemon/base_stats/poliwag.asm"       ; 51
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"       ; 52
INCLUDE "data/pokemon/base_stats/poliwrath.asm"       ; 53
INCLUDE "data/pokemon/base_stats/politoed.asm"       ; 54
INCLUDE "data/pokemon/base_stats/magikarp.asm"       ; 55
INCLUDE "data/pokemon/base_stats/gyarados.asm"       ; 56
INCLUDE "data/pokemon/base_stats/slowpoke.asm"       ; 57
INCLUDE "data/pokemon/base_stats/slowbro.asm"       ; 58
INCLUDE "data/pokemon/base_stats/slowking.asm"       ; 59
INCLUDE "data/pokemon/base_stats/oddish.asm"       ; 60
INCLUDE "data/pokemon/base_stats/gloom.asm"       ; 61
INCLUDE "data/pokemon/base_stats/vileplume.asm"       ; 62
INCLUDE "data/pokemon/base_stats/bellossom.asm"       ; 63
INCLUDE "data/pokemon/base_stats/abra.asm"       ; 64
INCLUDE "data/pokemon/base_stats/kadabra.asm"       ; 65
INCLUDE "data/pokemon/base_stats/alakazam.asm"       ; 66
INCLUDE "data/pokemon/base_stats/ditto.asm"       ; 67
INCLUDE "data/pokemon/base_stats/pineco.asm"       ; 68
INCLUDE "data/pokemon/base_stats/forretress.asm"       ; 69
INCLUDE "data/pokemon/base_stats/nidoran.asm"       ; 70
INCLUDE "data/pokemon/base_stats/nidorina.asm"       ; 71
INCLUDE "data/pokemon/base_stats/nidoqueen.asm"       ; 72
INCLUDE "data/pokemon/base_stats/nidorino.asm"       ; 73
INCLUDE "data/pokemon/base_stats/nidoking.asm"       ; 74
INCLUDE "data/pokemon/base_stats/yanma.asm"       ; 75
INCLUDE "data/pokemon/base_stats/yanmega.asm"       ; 76
INCLUDE "data/pokemon/base_stats/sunkern.asm"       ; 77
INCLUDE "data/pokemon/base_stats/sunflora.asm"       ; 78
INCLUDE "data/pokemon/base_stats/exeggcute.asm"       ; 79
INCLUDE "data/pokemon/base_stats/exeggutor.asm"       ; 80
INCLUDE "data/pokemon/base_stats/sudowoodo.asm"       ; 81
INCLUDE "data/pokemon/base_stats/scyther.asm"       ; 82
INCLUDE "data/pokemon/base_stats/scizor.asm"       ; 83
INCLUDE "data/pokemon/base_stats/kleavor.asm"       ; 84
INCLUDE "data/pokemon/base_stats/pinsir.asm"       ; 85
INCLUDE "data/pokemon/base_stats/minsir.asm"       ; 86
INCLUDE "data/pokemon/base_stats/heracross.asm"       ; 87
INCLUDE "data/pokemon/base_stats/koffing.asm"       ; 88
INCLUDE "data/pokemon/base_stats/weezing.asm"       ; 89
INCLUDE "data/pokemon/base_stats/grimer.asm"       ; 90
INCLUDE "data/pokemon/base_stats/muk.asm"       ; 91
INCLUDE "data/pokemon/base_stats/magnemite.asm"       ; 92
INCLUDE "data/pokemon/base_stats/magneton.asm"       ; 93
INCLUDE "data/pokemon/base_stats/magnezone.asm"       ; 94
INCLUDE "data/pokemon/base_stats/voltorb.asm"       ; 95
INCLUDE "data/pokemon/base_stats/electrode.asm"       ; 96
INCLUDE "data/pokemon/base_stats/aipom.asm"       ; 97
INCLUDE "data/pokemon/base_stats/ambipom.asm"       ; 98
INCLUDE "data/pokemon/base_stats/snubbull.asm"       ; 99
INCLUDE "data/pokemon/base_stats/granbull.asm"       ; 100
INCLUDE "data/pokemon/base_stats/vulpix.asm"       ; 101
INCLUDE "data/pokemon/base_stats/ninetales.asm"       ; 102
INCLUDE "data/pokemon/base_stats/growlithe.asm"       ; 103
INCLUDE "data/pokemon/base_stats/arcanine.asm"       ; 104
INCLUDE "data/pokemon/base_stats/stantler.asm"       ; 105
INCLUDE "data/pokemon/base_stats/wyrdeer.asm"       ; 106
INCLUDE "data/pokemon/base_stats/marill.asm"       ; 107
INCLUDE "data/pokemon/base_stats/azumarill.asm"       ; 108
INCLUDE "data/pokemon/base_stats/mankey.asm"       ; 109
INCLUDE "data/pokemon/base_stats/primeape.asm"       ; 110
INCLUDE "data/pokemon/base_stats/annihilape.asm"       ; 111
INCLUDE "data/pokemon/base_stats/machop.asm"       ; 112
INCLUDE "data/pokemon/base_stats/machoke.asm"       ; 113
INCLUDE "data/pokemon/base_stats/machamp.asm"       ; 114
INCLUDE "data/pokemon/base_stats/hitmonlee.asm"       ; 115
INCLUDE "data/pokemon/base_stats/hitmonchan.asm"       ; 116
INCLUDE "data/pokemon/base_stats/hitmontop.asm"       ; 117
INCLUDE "data/pokemon/base_stats/girafarig.asm"       ; 118
INCLUDE "data/pokemon/base_stats/farigiraf.asm"       ; 119
INCLUDE "data/pokemon/base_stats/tauros.asm"       ; 120
INCLUDE "data/pokemon/base_stats/miltank.asm"       ; 121
INCLUDE "data/pokemon/base_stats/magmar.asm"       ; 122
INCLUDE "data/pokemon/base_stats/magmortar.asm"       ; 123
INCLUDE "data/pokemon/base_stats/jynx.asm"       ; 124
INCLUDE "data/pokemon/base_stats/electabuzz.asm"       ; 125
INCLUDE "data/pokemon/base_stats/electivire.asm"       ; 126
INCLUDE "data/pokemon/base_stats/natu.asm"       ; 127
INCLUDE "data/pokemon/base_stats/xatu.asm"       ; 128
INCLUDE "data/pokemon/base_stats/qwilfish.asm"       ; 129
INCLUDE "data/pokemon/base_stats/overqwil.asm"       ; 130
INCLUDE "data/pokemon/base_stats/tentacool.asm"       ; 131
INCLUDE "data/pokemon/base_stats/tentacruel.asm"       ; 132
INCLUDE "data/pokemon/base_stats/shuckle.asm"       ; 133
INCLUDE "data/pokemon/base_stats/corsola.asm"       ; 134
INCLUDE "data/pokemon/base_stats/remoraid.asm"       ; 135
INCLUDE "data/pokemon/base_stats/octillery.asm"       ; 136
INCLUDE "data/pokemon/base_stats/chinchou.asm"       ; 137
INCLUDE "data/pokemon/base_stats/lanturn.asm"       ; 138
INCLUDE "data/pokemon/base_stats/tangela.asm"       ; 139
INCLUDE "data/pokemon/base_stats/tangrowth.asm"       ; 140
INCLUDE "data/pokemon/base_stats/eevee.asm"       ; 141
INCLUDE "data/pokemon/base_stats/vaporeon.asm"       ; 142
INCLUDE "data/pokemon/base_stats/jolteon.asm"       ; 143
INCLUDE "data/pokemon/base_stats/flareon.asm"       ; 144
INCLUDE "data/pokemon/base_stats/espeon.asm"       ; 145
INCLUDE "data/pokemon/base_stats/umbreon.asm"       ; 146
INCLUDE "data/pokemon/base_stats/leafeon.asm"       ; 147
INCLUDE "data/pokemon/base_stats/glaceon.asm"       ; 148
INCLUDE "data/pokemon/base_stats/sylveon.asm"       ; 149
INCLUDE "data/pokemon/base_stats/horsea.asm"       ; 150
INCLUDE "data/pokemon/base_stats/seadra.asm"       ; 151
INCLUDE "data/pokemon/base_stats/kingdra.asm"       ; 152
INCLUDE "data/pokemon/base_stats/gligar.asm"       ; 153
INCLUDE "data/pokemon/base_stats/gliscor.asm"       ; 154
INCLUDE "data/pokemon/base_stats/swinub.asm"       ; 155
INCLUDE "data/pokemon/base_stats/piloswine.asm"       ; 156
INCLUDE "data/pokemon/base_stats/mamoswine.asm"       ; 157
INCLUDE "data/pokemon/base_stats/teddiursa.asm"       ; 158
INCLUDE "data/pokemon/base_stats/ursaring.asm"       ; 159
INCLUDE "data/pokemon/base_stats/ursaluna.asm"       ; 160
INCLUDE "data/pokemon/base_stats/phanpy.asm"       ; 161
INCLUDE "data/pokemon/base_stats/donphan.asm"       ; 162
INCLUDE "data/pokemon/base_stats/mantine.asm"       ; 163
INCLUDE "data/pokemon/base_stats/skarmory.asm"       ; 164
INCLUDE "data/pokemon/base_stats/ponyta.asm"       ; 165
INCLUDE "data/pokemon/base_stats/rapidash.asm"       ; 166
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"       ; 167
INCLUDE "data/pokemon/base_stats/rhydon.asm"       ; 168
INCLUDE "data/pokemon/base_stats/rhyperior.asm"       ; 169
INCLUDE "data/pokemon/base_stats/murkrow.asm"       ; 170
INCLUDE "data/pokemon/base_stats/honchkrow.asm"       ; 171
INCLUDE "data/pokemon/base_stats/houndour.asm"       ; 172
INCLUDE "data/pokemon/base_stats/houndoom.asm"       ; 173
INCLUDE "data/pokemon/base_stats/slugma.asm"       ; 174
INCLUDE "data/pokemon/base_stats/magcargo.asm"       ; 175
INCLUDE "data/pokemon/base_stats/sneasel.asm"       ; 176
INCLUDE "data/pokemon/base_stats/weavile.asm"       ; 177
INCLUDE "data/pokemon/base_stats/sneasler.asm"       ; 178
INCLUDE "data/pokemon/base_stats/misdreavus.asm"       ; 179
INCLUDE "data/pokemon/base_stats/mismagius.asm"       ; 180
INCLUDE "data/pokemon/base_stats/porygon.asm"       ; 181
INCLUDE "data/pokemon/base_stats/porygon2.asm"       ; 182
INCLUDE "data/pokemon/base_stats/porygon_z.asm"       ; 183
INCLUDE "data/pokemon/base_stats/chansey.asm"       ; 184
INCLUDE "data/pokemon/base_stats/blissey.asm"       ; 185
INCLUDE "data/pokemon/base_stats/lapras.asm"       ; 186
INCLUDE "data/pokemon/base_stats/snorlax.asm"       ; 187
INCLUDE "data/pokemon/base_stats/chikorita.asm"       ; 188
INCLUDE "data/pokemon/base_stats/bayleef.asm"       ; 189
INCLUDE "data/pokemon/base_stats/meganium.asm"       ; 190
INCLUDE "data/pokemon/base_stats/totodile.asm"       ; 191
INCLUDE "data/pokemon/base_stats/croconaw.asm"       ; 192
INCLUDE "data/pokemon/base_stats/feraligatr.asm"       ; 193
INCLUDE "data/pokemon/base_stats/starly.asm"       ; 194
INCLUDE "data/pokemon/base_stats/staravia.asm"       ; 195
INCLUDE "data/pokemon/base_stats/staraptor.asm"       ; 196
INCLUDE "data/pokemon/base_stats/shinx.asm"       ; 197
INCLUDE "data/pokemon/base_stats/luxio.asm"       ; 198
INCLUDE "data/pokemon/base_stats/luxray.asm"       ; 199
INCLUDE "data/pokemon/base_stats/cranidos.asm"       ; 200
INCLUDE "data/pokemon/base_stats/rampardos.asm"       ; 201
INCLUDE "data/pokemon/base_stats/shieldon.asm"       ; 202
INCLUDE "data/pokemon/base_stats/bastiodon.asm"       ; 203
INCLUDE "data/pokemon/base_stats/drifloon.asm"       ; 204
INCLUDE "data/pokemon/base_stats/drifblim.asm"       ; 205
INCLUDE "data/pokemon/base_stats/bronzor.asm"       ; 206
INCLUDE "data/pokemon/base_stats/bronzong.asm"       ; 207
INCLUDE "data/pokemon/base_stats/spiritomb.asm"       ; 208
INCLUDE "data/pokemon/base_stats/riolu.asm"       ; 209
INCLUDE "data/pokemon/base_stats/lucario.asm"       ; 210
INCLUDE "data/pokemon/base_stats/hippopotas.asm"       ; 211
INCLUDE "data/pokemon/base_stats/hippowdon.asm"       ; 212
INCLUDE "data/pokemon/base_stats/croagunk.asm"       ; 213
INCLUDE "data/pokemon/base_stats/toxicroak.asm"       ; 214
INCLUDE "data/pokemon/base_stats/snover.asm"       ; 215
INCLUDE "data/pokemon/base_stats/abomasnow.asm"       ; 216
INCLUDE "data/pokemon/base_stats/duskull.asm"       ; 217
INCLUDE "data/pokemon/base_stats/dusclops.asm"       ; 218
INCLUDE "data/pokemon/base_stats/dusknoir.asm"       ; 219
INCLUDE "data/pokemon/base_stats/snorunt.asm"       ; 220
INCLUDE "data/pokemon/base_stats/glalie.asm"       ; 221
INCLUDE "data/pokemon/base_stats/froslass.asm"       ; 222
INCLUDE "data/pokemon/base_stats/rotom.asm"       ; 223
INCLUDE "data/pokemon/base_stats/bergmite.asm"       ; 224
INCLUDE "data/pokemon/base_stats/avalugg.asm"       ; 225
INCLUDE "data/pokemon/base_stats/basculin.asm"       ; 226
INCLUDE "data/pokemon/base_stats/basculegion.asm"       ; 227
INCLUDE "data/pokemon/base_stats/rufflet.asm"       ; 228
INCLUDE "data/pokemon/base_stats/braviary.asm"       ; 229
INCLUDE "data/pokemon/base_stats/ralts.asm"       ; 230
INCLUDE "data/pokemon/base_stats/kirlia.asm"       ; 231
INCLUDE "data/pokemon/base_stats/gardevoir.asm"       ; 232
INCLUDE "data/pokemon/base_stats/gallade.asm"       ; 233
INCLUDE "data/pokemon/base_stats/goomy.asm"       ; 234
INCLUDE "data/pokemon/base_stats/sliggoo.asm"       ; 235
INCLUDE "data/pokemon/base_stats/goodra.asm"       ; 236
INCLUDE "data/pokemon/base_stats/zorua.asm"       ; 237
INCLUDE "data/pokemon/base_stats/zoroark.asm"       ; 238
INCLUDE "data/pokemon/base_stats/gible.asm"       ; 239
INCLUDE "data/pokemon/base_stats/gabite.asm"       ; 240
INCLUDE "data/pokemon/base_stats/garchomp.asm"       ; 241
INCLUDE "data/pokemon/base_stats/dratini.asm"       ; 242
INCLUDE "data/pokemon/base_stats/dragonair.asm"       ; 243
INCLUDE "data/pokemon/base_stats/dragonite.asm"       ; 244
INCLUDE "data/pokemon/base_stats/larvitar.asm"       ; 245
INCLUDE "data/pokemon/base_stats/pupitar.asm"       ; 246
INCLUDE "data/pokemon/base_stats/tyranitar.asm"       ; 247
INCLUDE "data/pokemon/base_stats/raikou.asm"       ; 248
INCLUDE "data/pokemon/base_stats/entei.asm"       ; 249
INCLUDE "data/pokemon/base_stats/suicune.asm"       ; 250
INCLUDE "data/pokemon/base_stats/heatran.asm"       ; 251
INCLUDE "data/pokemon/base_stats/lugia.asm"       ; 252
INCLUDE "data/pokemon/base_stats/ho_oh.asm"       ; 253
INCLUDE "data/pokemon/base_stats/celebi.asm"       ; 254
	assert_table_length NUM_POKEMON 
INCLUDE "data/pokemon/base_stats/egg.asm" ; no change to this since original 

INCLUDE "data/pokemon/base_stats/raichu_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/vulpix_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/ninetales_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/geodude_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/graveler_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/golem_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/grimer_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/muk_alolan.asm"       ; 00
INCLUDE "data/pokemon/base_stats/exeggutor_alolan.asm"       ; 00



INCLUDE "data/pokemon/base_stats/ponyta_galarian.asm"       ; 00
INCLUDE "data/pokemon/base_stats/rapidash_galarian.asm"       ; 00
INCLUDE "data/pokemon/base_stats/slowpoke_galarian.asm"       ; 00
INCLUDE "data/pokemon/base_stats/slowbro_galarian.asm"       ; 00
INCLUDE "data/pokemon/base_stats/slowking_galarian.asm"       ; 00
INCLUDE "data/pokemon/base_stats/weezing_galarian.asm"       ; 00
INCLUDE "data/pokemon/base_stats/corsola_galarian.asm"       ; 00



INCLUDE "data/pokemon/base_stats/growlithe_hisuain.asm"       ; 00
INCLUDE "data/pokemon/base_stats/arcanine_hisuinin.asm"       ; 00
INCLUDE "data/pokemon/base_stats/voltorb_  hisuain.asm"       ; 00
INCLUDE "data/pokemon/base_stats/electrode_hisuain.asm"       ; 00
INCLUDE "data/pokemon/base_stats/typhlosion_hisiin.asm"       ; 00
INCLUDE "data/pokemon/base_stats/qwilfish_hisuinin.asm"       ; 00
INCLUDE "data/pokemon/base_stats/sneasel_hisuia_in.asm"       ; 00
INCLUDE "data/pokemon/base_stats/samurott_hisuinin.asm"       ; 00
INCLUDE "data/pokemon/base_stats/decidueye_hisuain.asm"       ; 00



INCLUDE "data/pokemon/base_stats/noctowl_immortal.asm"       ; 00
INCLUDE "data/pokemon/base_stats/ursaluna_bloodmoon.asm"       ; 00
INCLUDE "data/pokemon/base_stats/feraligatr_ancestor.asm"       ; 00
INCLUDE "data/pokemon/base_stats/meganium_ancestor.asm"       ; 00
INCLUDE "data/pokemon/base_stats/magcargo_ancestor.asm"       ; 00
INCLUDE "data/pokemon/base_stats/xatu_ancestor.asm"       ; 00

	assert_table_length NUM_EXT_POKEMON
	