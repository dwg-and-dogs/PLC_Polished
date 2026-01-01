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
INCLUDE "data/pokemon/base_stats/quilava.asm"         ; 02
INCLUDE "data/pokemon/base_stats/typhlosion.asm"      ; 03
INCLUDE "data/pokemon/base_stats/rowlet.asm"          ; 04
INCLUDE "data/pokemon/base_stats/dartrix.asm"         ; 05
INCLUDE "data/pokemon/base_stats/decidueye.asm"       ; 06
INCLUDE "data/pokemon/base_stats/oshawott.asm"        ; 07
INCLUDE "data/pokemon/base_stats/dewott.asm"          ; 08
INCLUDE "data/pokemon/base_stats/samurott.asm"        ; 09
INCLUDE "data/pokemon/base_stats/pidgey.asm"          ; 0a
INCLUDE "data/pokemon/base_stats/pidgeotto.asm"       ; 0b
INCLUDE "data/pokemon/base_stats/pidgeot.asm"         ; 0c
INCLUDE "data/pokemon/base_stats/hoothoot.asm"        ; 0d
INCLUDE "data/pokemon/base_stats/noctowl.asm"         ; 0e
INCLUDE "data/pokemon/base_stats/sentret.asm"         ; 0f
INCLUDE "data/pokemon/base_stats/furret.asm"          ; 10
INCLUDE "data/pokemon/base_stats/pikachu.asm"         ; 11
INCLUDE "data/pokemon/base_stats/raichu.asm"          ; 12
INCLUDE "data/pokemon/base_stats/ledyba.asm"          ; 13
INCLUDE "data/pokemon/base_stats/ledian.asm"          ; 14
INCLUDE "data/pokemon/base_stats/spinarak.asm"        ; 15
INCLUDE "data/pokemon/base_stats/ariados.asm"         ; 16
INCLUDE "data/pokemon/base_stats/geodude.asm"         ; 17
INCLUDE "data/pokemon/base_stats/graveler.asm"        ; 18
INCLUDE "data/pokemon/base_stats/golem.asm"           ; 19
INCLUDE "data/pokemon/base_stats/zubat.asm"           ; 1a
INCLUDE "data/pokemon/base_stats/golbat.asm"          ; 1b
INCLUDE "data/pokemon/base_stats/crobat.asm"          ; 1c
INCLUDE "data/pokemon/base_stats/clefairy.asm"        ; 1d
INCLUDE "data/pokemon/base_stats/clefable.asm"        ; 1e
INCLUDE "data/pokemon/base_stats/togetic.asm"         ; 1f
INCLUDE "data/pokemon/base_stats/togekiss.asm"        ; 20
INCLUDE "data/pokemon/base_stats/dunsparce.asm"       ; 21
INCLUDE "data/pokemon/base_stats/dudunsparce.asm"     ; 22
INCLUDE "data/pokemon/base_stats/mareep.asm"          ; 23
INCLUDE "data/pokemon/base_stats/flaaffy.asm"         ; 24
INCLUDE "data/pokemon/base_stats/ampharos.asm"        ; 25
INCLUDE "data/pokemon/base_stats/wooper.asm"          ; 26
INCLUDE "data/pokemon/base_stats/quagsire.asm"        ; 27
INCLUDE "data/pokemon/base_stats/gastly.asm"          ; 28
INCLUDE "data/pokemon/base_stats/haunter.asm"         ; 29
INCLUDE "data/pokemon/base_stats/gengar.asm"          ; 2a
INCLUDE "data/pokemon/base_stats/unown.asm"           ; 2b
INCLUDE "data/pokemon/base_stats/onix.asm"            ; 2c
INCLUDE "data/pokemon/base_stats/steelix.asm"         ; 2d
INCLUDE "data/pokemon/base_stats/bellsprout.asm"      ; 2e
INCLUDE "data/pokemon/base_stats/weepinbell.asm"      ; 2f
INCLUDE "data/pokemon/base_stats/victreebel.asm"      ; 30
INCLUDE "data/pokemon/base_stats/skiploom.asm"        ; 31
INCLUDE "data/pokemon/base_stats/jumpluff.asm"        ; 32
INCLUDE "data/pokemon/base_stats/paras.asm"           ; 33
INCLUDE "data/pokemon/base_stats/parasect.asm"        ; 34
INCLUDE "data/pokemon/base_stats/poliwag.asm"         ; 35
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"       ; 36
INCLUDE "data/pokemon/base_stats/poliwrath.asm"       ; 37
INCLUDE "data/pokemon/base_stats/politoed.asm"        ; 38
INCLUDE "data/pokemon/base_stats/magikarp.asm"        ; 39
INCLUDE "data/pokemon/base_stats/gyarados.asm"        ; 3a
INCLUDE "data/pokemon/base_stats/slowpoke.asm"        ; 3b
INCLUDE "data/pokemon/base_stats/slowbro.asm"         ; 3c
INCLUDE "data/pokemon/base_stats/slowking.asm"        ; 3d
INCLUDE "data/pokemon/base_stats/oddish.asm"          ; 3e
INCLUDE "data/pokemon/base_stats/gloom.asm"           ; 3f
INCLUDE "data/pokemon/base_stats/vileplume.asm"       ; 40
INCLUDE "data/pokemon/base_stats/bellossom.asm"       ; 41
INCLUDE "data/pokemon/base_stats/abra.asm"            ; 42
INCLUDE "data/pokemon/base_stats/kadabra.asm"         ; 43
INCLUDE "data/pokemon/base_stats/alakazam.asm"        ; 44
INCLUDE "data/pokemon/base_stats/pineco.asm"          ; 45
INCLUDE "data/pokemon/base_stats/forretress.asm"      ; 46
INCLUDE "data/pokemon/base_stats/nidoran.asm"         ; 47
INCLUDE "data/pokemon/base_stats/nidorina.asm"        ; 48
INCLUDE "data/pokemon/base_stats/nidoqueen.asm"       ; 49
INCLUDE "data/pokemon/base_stats/nidorino.asm"        ; 4a
INCLUDE "data/pokemon/base_stats/nidoking.asm"        ; 4b
INCLUDE "data/pokemon/base_stats/yanma.asm"           ; 4c
INCLUDE "data/pokemon/base_stats/yanmega.asm"         ; 4d
INCLUDE "data/pokemon/base_stats/sunflora.asm"        ; 4e
INCLUDE "data/pokemon/base_stats/exeggcute.asm"       ; 4f
INCLUDE "data/pokemon/base_stats/exeggutor.asm"       ; 50
INCLUDE "data/pokemon/base_stats/sudowoodo.asm"       ; 51
INCLUDE "data/pokemon/base_stats/scyther.asm"         ; 52
INCLUDE "data/pokemon/base_stats/scizor.asm"          ; 53
INCLUDE "data/pokemon/base_stats/kleavor.asm"         ; 54
INCLUDE "data/pokemon/base_stats/pinsir.asm"          ; 55
INCLUDE "data/pokemon/base_stats/minsir.asm"          ; 56
INCLUDE "data/pokemon/base_stats/heracross.asm"       ; 57
INCLUDE "data/pokemon/base_stats/koffing.asm"         ; 58
INCLUDE "data/pokemon/base_stats/weezing.asm"         ; 59
INCLUDE "data/pokemon/base_stats/grimer.asm"          ; 5a
INCLUDE "data/pokemon/base_stats/muk.asm"             ; 5b
INCLUDE "data/pokemon/base_stats/magnemite.asm"       ; 5c
INCLUDE "data/pokemon/base_stats/magneton.asm"        ; 5d
INCLUDE "data/pokemon/base_stats/magnezone.asm"       ; 5e
INCLUDE "data/pokemon/base_stats/voltorb.asm"         ; 5f
INCLUDE "data/pokemon/base_stats/electrode.asm"       ; 60
INCLUDE "data/pokemon/base_stats/aipom.asm"           ; 61
INCLUDE "data/pokemon/base_stats/ambipom.asm"         ; 62
INCLUDE "data/pokemon/base_stats/snubbull.asm"        ; 63
INCLUDE "data/pokemon/base_stats/granbull.asm"        ; 64
INCLUDE "data/pokemon/base_stats/vulpix.asm"          ; 65
INCLUDE "data/pokemon/base_stats/ninetales.asm"       ; 66
INCLUDE "data/pokemon/base_stats/growlithe.asm"       ; 67
INCLUDE "data/pokemon/base_stats/arcanine.asm"        ; 68
INCLUDE "data/pokemon/base_stats/stantler.asm"        ; 69
INCLUDE "data/pokemon/base_stats/wyrdeer.asm"         ; 6a
INCLUDE "data/pokemon/base_stats/marill.asm"          ; 6b
INCLUDE "data/pokemon/base_stats/azumarill.asm"       ; 6c
INCLUDE "data/pokemon/base_stats/mankey.asm"          ; 6d
INCLUDE "data/pokemon/base_stats/primeape.asm"        ; 6e
INCLUDE "data/pokemon/base_stats/annihilape.asm"      ; 6f
INCLUDE "data/pokemon/base_stats/machop.asm"          ; 70
INCLUDE "data/pokemon/base_stats/machoke.asm"         ; 71
INCLUDE "data/pokemon/base_stats/machamp.asm"         ; 72
INCLUDE "data/pokemon/base_stats/hitmonlee.asm"       ; 73
INCLUDE "data/pokemon/base_stats/hitmonchan.asm"      ; 74
INCLUDE "data/pokemon/base_stats/hitmontop.asm"       ; 75
INCLUDE "data/pokemon/base_stats/girafarig.asm"       ; 76
INCLUDE "data/pokemon/base_stats/farigiraf.asm"       ; 77
INCLUDE "data/pokemon/base_stats/tauros.asm"          ; 78
INCLUDE "data/pokemon/base_stats/miltank.asm"         ; 79
INCLUDE "data/pokemon/base_stats/magmar.asm"          ; 7a
INCLUDE "data/pokemon/base_stats/magmortar.asm"       ; 7b
INCLUDE "data/pokemon/base_stats/jynx.asm"            ; 7c
INCLUDE "data/pokemon/base_stats/electabuzz.asm"      ; 7d
INCLUDE "data/pokemon/base_stats/electivire.asm"      ; 7e
INCLUDE "data/pokemon/base_stats/natu.asm"            ; 80
INCLUDE "data/pokemon/base_stats/xatu.asm"            ; 81
INCLUDE "data/pokemon/base_stats/qwilfish.asm"        ; 82
INCLUDE "data/pokemon/base_stats/overqwil.asm"        ; 83
INCLUDE "data/pokemon/base_stats/tentacool.asm"       ; 84
INCLUDE "data/pokemon/base_stats/tentacruel.asm"      ; 85
INCLUDE "data/pokemon/base_stats/shuckle.asm"         ; 86
INCLUDE "data/pokemon/base_stats/corsola.asm"         ; 87
INCLUDE "data/pokemon/base_stats/remoraid.asm"        ; 88
INCLUDE "data/pokemon/base_stats/octillery.asm"       ; 89
INCLUDE "data/pokemon/base_stats/chinchou.asm"        ; 8a
INCLUDE "data/pokemon/base_stats/lanturn.asm"         ; 8b
INCLUDE "data/pokemon/base_stats/tangela.asm"         ; 8c
INCLUDE "data/pokemon/base_stats/tangrowth.asm"       ; 8d
INCLUDE "data/pokemon/base_stats/eevee.asm"           ; 8e
INCLUDE "data/pokemon/base_stats/vaporeon.asm"        ; 8f
INCLUDE "data/pokemon/base_stats/jolteon.asm"         ; 90
INCLUDE "data/pokemon/base_stats/flareon.asm"         ; 91
INCLUDE "data/pokemon/base_stats/espeon.asm"          ; 92
INCLUDE "data/pokemon/base_stats/umbreon.asm"         ; 93
INCLUDE "data/pokemon/base_stats/leafeon.asm"         ; 94
INCLUDE "data/pokemon/base_stats/glaceon.asm"         ; 95
INCLUDE "data/pokemon/base_stats/sylveon.asm"         ; 96
INCLUDE "data/pokemon/base_stats/seadra.asm"          ; 97
INCLUDE "data/pokemon/base_stats/kingdra.asm"         ; 98
INCLUDE "data/pokemon/base_stats/gligar.asm"          ; 99
INCLUDE "data/pokemon/base_stats/gliscor.asm"         ; 9a
INCLUDE "data/pokemon/base_stats/swinub.asm"          ; 9b
INCLUDE "data/pokemon/base_stats/piloswine.asm"       ; 9c
INCLUDE "data/pokemon/base_stats/mamoswine.asm"       ; 9d
INCLUDE "data/pokemon/base_stats/teddiursa.asm"       ; 9e
INCLUDE "data/pokemon/base_stats/ursaring.asm"        ; 9f
INCLUDE "data/pokemon/base_stats/ursaluna.asm"        ; a0
INCLUDE "data/pokemon/base_stats/phanpy.asm"          ; a1
INCLUDE "data/pokemon/base_stats/donphan.asm"         ; a2
INCLUDE "data/pokemon/base_stats/mantine.asm"         ; a3
INCLUDE "data/pokemon/base_stats/skarmory.asm"        ; a4
INCLUDE "data/pokemon/base_stats/ponyta.asm"          ; a5
INCLUDE "data/pokemon/base_stats/rapidash.asm"        ; a6
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"         ; a7
INCLUDE "data/pokemon/base_stats/rhydon.asm"          ; a8
INCLUDE "data/pokemon/base_stats/rhyperior.asm"       ; a9
INCLUDE "data/pokemon/base_stats/murkrow.asm"         ; aa
INCLUDE "data/pokemon/base_stats/honchkrow.asm"       ; ab
INCLUDE "data/pokemon/base_stats/houndour.asm"        ; ac
INCLUDE "data/pokemon/base_stats/houndoom.asm"        ; ad
INCLUDE "data/pokemon/base_stats/slugma.asm"          ; ae
INCLUDE "data/pokemon/base_stats/magcargo.asm"        ; af
INCLUDE "data/pokemon/base_stats/sneasel.asm"         ; b0
INCLUDE "data/pokemon/base_stats/weavile.asm"         ; b1
INCLUDE "data/pokemon/base_stats/sneasler.asm"        ; b2
INCLUDE "data/pokemon/base_stats/misdreavus.asm"      ; b3
INCLUDE "data/pokemon/base_stats/mismagius.asm"       ; b4
INCLUDE "data/pokemon/base_stats/porygon.asm"         ; b5
INCLUDE "data/pokemon/base_stats/porygon2.asm"        ; b6
INCLUDE "data/pokemon/base_stats/porygon_z.asm"       ; b7
INCLUDE "data/pokemon/base_stats/chansey.asm"         ; b8
INCLUDE "data/pokemon/base_stats/blissey.asm"         ; b9
INCLUDE "data/pokemon/base_stats/lapras.asm"          ; ba
INCLUDE "data/pokemon/base_stats/snorlax.asm"         ; bb
INCLUDE "data/pokemon/base_stats/chikorita.asm"       ; bc
INCLUDE "data/pokemon/base_stats/bayleef.asm"         ; bd
INCLUDE "data/pokemon/base_stats/meganium.asm"        ; be
INCLUDE "data/pokemon/base_stats/totodile.asm"        ; bf
INCLUDE "data/pokemon/base_stats/croconaw.asm"        ; c0
INCLUDE "data/pokemon/base_stats/feraligatr.asm"      ; c1
INCLUDE "data/pokemon/base_stats/grotle.asm"          ; c2
INCLUDE "data/pokemon/base_stats/torterra.asm"        ; c3
INCLUDE "data/pokemon/base_stats/monferno.asm"        ; c4
INCLUDE "data/pokemon/base_stats/infernape.asm"       ; c5
INCLUDE "data/pokemon/base_stats/prinplup.asm"        ; c6
INCLUDE "data/pokemon/base_stats/empoleon.asm"        ; c7
INCLUDE "data/pokemon/base_stats/staravia.asm"        ; c8
INCLUDE "data/pokemon/base_stats/staraptor.asm"       ; c9
INCLUDE "data/pokemon/base_stats/shinx.asm"           ; ca
INCLUDE "data/pokemon/base_stats/luxio.asm"           ; cb
INCLUDE "data/pokemon/base_stats/luxray.asm"          ; cc
INCLUDE "data/pokemon/base_stats/cranidos.asm"        ; cd
INCLUDE "data/pokemon/base_stats/rampardos.asm"       ; ce
INCLUDE "data/pokemon/base_stats/shieldon.asm"        ; cf
INCLUDE "data/pokemon/base_stats/bastiodon.asm"       ; d0
INCLUDE "data/pokemon/base_stats/vespiquen.asm"       ; d1
INCLUDE "data/pokemon/base_stats/drifloon.asm"        ; d2
INCLUDE "data/pokemon/base_stats/drifblim.asm"        ; d3
INCLUDE "data/pokemon/base_stats/bronzor.asm"         ; d4
INCLUDE "data/pokemon/base_stats/bronzong.asm"        ; d5
INCLUDE "data/pokemon/base_stats/spiritomb.asm"       ; d6
INCLUDE "data/pokemon/base_stats/lucario.asm"         ; d7
INCLUDE "data/pokemon/base_stats/hippopotas.asm"      ; d8
INCLUDE "data/pokemon/base_stats/hippowdon.asm"       ; d9
INCLUDE "data/pokemon/base_stats/croagunk.asm"        ; da
INCLUDE "data/pokemon/base_stats/toxicroak.asm"       ; db
INCLUDE "data/pokemon/base_stats/snover.asm"          ; dc
INCLUDE "data/pokemon/base_stats/abomasnow.asm"       ; dd
INCLUDE "data/pokemon/base_stats/duskull.asm"         ; de
INCLUDE "data/pokemon/base_stats/dusclops.asm"        ; df
INCLUDE "data/pokemon/base_stats/dusknoir.asm"        ; e0
INCLUDE "data/pokemon/base_stats/froslass.asm"        ; e1
INCLUDE "data/pokemon/base_stats/rotom.asm"           ; e2
INCLUDE "data/pokemon/base_stats/bergmite.asm"        ; e3
INCLUDE "data/pokemon/base_stats/avalugg.asm"         ; e4
INCLUDE "data/pokemon/base_stats/basculegion.asm"     ; e5
INCLUDE "data/pokemon/base_stats/braviary.asm"        ; e6
INCLUDE "data/pokemon/base_stats/ralts.asm"           ; e7
INCLUDE "data/pokemon/base_stats/kirlia.asm"          ; e8
INCLUDE "data/pokemon/base_stats/gardevoir.asm"       ; e9
INCLUDE "data/pokemon/base_stats/gallade.asm"         ; ea
INCLUDE "data/pokemon/base_stats/goomy.asm"           ; eb
INCLUDE "data/pokemon/base_stats/sliggoo.asm"         ; ec
INCLUDE "data/pokemon/base_stats/goodra.asm"          ; ed
INCLUDE "data/pokemon/base_stats/zorua.asm"           ; ee
INCLUDE "data/pokemon/base_stats/zoroark.asm"         ; ef
INCLUDE "data/pokemon/base_stats/gible.asm"           ; f0
INCLUDE "data/pokemon/base_stats/gabite.asm"          ; f1
INCLUDE "data/pokemon/base_stats/garchomp.asm"        ; f2
INCLUDE "data/pokemon/base_stats/dratini.asm"         ; f3
INCLUDE "data/pokemon/base_stats/dragonair.asm"       ; f4
INCLUDE "data/pokemon/base_stats/dragonite.asm"       ; f5
INCLUDE "data/pokemon/base_stats/larvitar.asm"        ; f6
INCLUDE "data/pokemon/base_stats/pupitar.asm"         ; f7
INCLUDE "data/pokemon/base_stats/tyranitar.asm"       ; f8
INCLUDE "data/pokemon/base_stats/raikou.asm"          ; f9
INCLUDE "data/pokemon/base_stats/entei.asm"           ; fa
INCLUDE "data/pokemon/base_stats/suicune.asm"         ; fb
INCLUDE "data/pokemon/base_stats/heatran.asm"         ; fc
INCLUDE "data/pokemon/base_stats/lugia.asm"           ; fd
INCLUDE "data/pokemon/base_stats/ho_oh.asm"           ; fe
INCLUDE "data/pokemon/base_stats/celebi.asm"          ; ff
	assert_table_length NUM_POKEMON 
INCLUDE "data/pokemon/base_stats/egg.asm" ; no change to this since original 

; Alolan Forms
INCLUDE "data/pokemon/base_stats/raichu_alolan.asm"
INCLUDE "data/pokemon/base_stats/vulpix_alolan.asm"
INCLUDE "data/pokemon/base_stats/ninetales_alolan.asm"
INCLUDE "data/pokemon/base_stats/geodude_alolan.asm"
INCLUDE "data/pokemon/base_stats/graveler_alolan.asm"
INCLUDE "data/pokemon/base_stats/golem_alolan.asm"
INCLUDE "data/pokemon/base_stats/grimer_alolan.asm"
INCLUDE "data/pokemon/base_stats/muk_alolan.asm"
INCLUDE "data/pokemon/base_stats/exeggutor_alolan.asm"

; Galarian Forms
INCLUDE "data/pokemon/base_stats/ponyta_galarian.asm"
INCLUDE "data/pokemon/base_stats/rapidash_galarian.asm"
INCLUDE "data/pokemon/base_stats/slowpoke_galarian.asm"
INCLUDE "data/pokemon/base_stats/slowbro_galarian.asm"
INCLUDE "data/pokemon/base_stats/slowking_galarian.asm"
INCLUDE "data/pokemon/base_stats/weezing_galarian.asm"
INCLUDE "data/pokemon/base_stats/corsola_galarian.asm"

; Hisuian Forms
INCLUDE "data/pokemon/base_stats/growlithe_hisuian.asm"
INCLUDE "data/pokemon/base_stats/arcanine_hisuian.asm"
INCLUDE "data/pokemon/base_stats/voltorb_hisuian.asm"
INCLUDE "data/pokemon/base_stats/electrode_hisuian.asm"
INCLUDE "data/pokemon/base_stats/typhlosion_hisuian.asm"
INCLUDE "data/pokemon/base_stats/qwilfish_hisuian.asm"
INCLUDE "data/pokemon/base_stats/sneasel_hisuian.asm"
INCLUDE "data/pokemon/base_stats/samurott_hisuian.asm"
INCLUDE "data/pokemon/base_stats/decidueye_hisuian.asm"

; Other Forms
INCLUDE "data/pokemon/base_stats/noctowl_immortal.asm"
INCLUDE "data/pokemon/base_stats/ursaluna_bloodmoon.asm"
	assert_table_length NUM_EXT_POKEMON
	