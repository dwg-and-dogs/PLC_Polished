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
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"
INCLUDE "data/pokemon/base_stats/quilava.asm"
INCLUDE "data/pokemon/base_stats/typhlosion.asm"
INCLUDE "data/pokemon/base_stats/htyphlosion.asm";;
INCLUDE "data/pokemon/base_stats/rowlet.asm";;
INCLUDE "data/pokemon/base_stats/dartrix.asm";;
INCLUDE "data/pokemon/base_stats/decidueye.asm";;
INCLUDE "data/pokemon/base_stats/hdecidueye.asm";;
INCLUDE "data/pokemon/base_stats/oshawott.asm";;
INCLUDE "data/pokemon/base_stats/dewott.asm";;
INCLUDE "data/pokemon/base_stats/samurott.asm";;
INCLUDE "data/pokemon/base_stats/hsamurott.asm";;
INCLUDE "data/pokemon/base_stats/butterfree.asm"
INCLUDE "data/pokemon/base_stats/beedrill.asm"
INCLUDE "data/pokemon/base_stats/pidgey.asm"
INCLUDE "data/pokemon/base_stats/pidgeotto.asm"
INCLUDE "data/pokemon/base_stats/pidgeot.asm"
INCLUDE "data/pokemon/base_stats/noctowl.asm"
INCLUDE "data/pokemon/base_stats/ekans.asm"
INCLUDE "data/pokemon/base_stats/arbok.asm"
INCLUDE "data/pokemon/base_stats/pikachu.asm"
INCLUDE "data/pokemon/base_stats/raichu.asm"
INCLUDE "data/pokemon/base_stats/nidorina.asm"
INCLUDE "data/pokemon/base_stats/nidoqueen.asm"
INCLUDE "data/pokemon/base_stats/nidorino.asm"
INCLUDE "data/pokemon/base_stats/nidoking.asm"
INCLUDE "data/pokemon/base_stats/clefairy.asm"
INCLUDE "data/pokemon/base_stats/clefable.asm"
INCLUDE "data/pokemon/base_stats/vulpix.asm"
INCLUDE "data/pokemon/base_stats/ninetales.asm"
INCLUDE "data/pokemon/base_stats/jigglypuff.asm"
INCLUDE "data/pokemon/base_stats/wigglytuff.asm"
INCLUDE "data/pokemon/base_stats/zubat.asm"
INCLUDE "data/pokemon/base_stats/golbat.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/gloom.asm"
INCLUDE "data/pokemon/base_stats/vileplume.asm"
INCLUDE "data/pokemon/base_stats/bellossom.asm"
INCLUDE "data/pokemon/base_stats/paras.asm"
INCLUDE "data/pokemon/base_stats/parasect.asm"
INCLUDE "data/pokemon/base_stats/venonat.asm"
INCLUDE "data/pokemon/base_stats/venomoth.asm"
INCLUDE "data/pokemon/base_stats/diglett.asm"
INCLUDE "data/pokemon/base_stats/dugtrio.asm"
INCLUDE "data/pokemon/base_stats/meowth.asm"
INCLUDE "data/pokemon/base_stats/persian.asm"
INCLUDE "data/pokemon/base_stats/mankey.asm"
INCLUDE "data/pokemon/base_stats/primeape.asm"
INCLUDE "data/pokemon/base_stats/growlithe.asm"
INCLUDE "data/pokemon/base_stats/arcanine.asm"
INCLUDE "data/pokemon/base_stats/harcanine.asm"
INCLUDE "data/pokemon/base_stats/poliwag.asm"
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"
INCLUDE "data/pokemon/base_stats/poliwrath.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/abra.asm"
INCLUDE "data/pokemon/base_stats/kadabra.asm"
INCLUDE "data/pokemon/base_stats/alakazam.asm"
INCLUDE "data/pokemon/base_stats/machop.asm"
INCLUDE "data/pokemon/base_stats/machoke.asm"
INCLUDE "data/pokemon/base_stats/machamp.asm"
INCLUDE "data/pokemon/base_stats/weepinbell.asm"
INCLUDE "data/pokemon/base_stats/victreebel.asm"
INCLUDE "data/pokemon/base_stats/tentacruel.asm"
INCLUDE "data/pokemon/base_stats/geodude.asm"
INCLUDE "data/pokemon/base_stats/graveler.asm"
INCLUDE "data/pokemon/base_stats/golem.asm"
INCLUDE "data/pokemon/base_stats/ponyta.asm"
INCLUDE "data/pokemon/base_stats/rapidash.asm"
INCLUDE "data/pokemon/base_stats/slowpoke.asm"
INCLUDE "data/pokemon/base_stats/slowbro.asm"
INCLUDE "data/pokemon/base_stats/slowking.asm"
INCLUDE "data/pokemon/base_stats/magnemite.asm"
INCLUDE "data/pokemon/base_stats/magneton.asm"
INCLUDE "data/pokemon/base_stats/magnezone.asm"
INCLUDE "data/pokemon/base_stats/farfetch_d.asm"
INCLUDE "data/pokemon/base_stats/grimer.asm"
INCLUDE "data/pokemon/base_stats/muk.asm"
INCLUDE "data/pokemon/base_stats/cloyster.asm"
INCLUDE "data/pokemon/base_stats/gastly.asm"
INCLUDE "data/pokemon/base_stats/haunter.asm"
INCLUDE "data/pokemon/base_stats/gengar.asm"
INCLUDE "data/pokemon/base_stats/onix.asm"
INCLUDE "data/pokemon/base_stats/steelix.asm"
INCLUDE "data/pokemon/base_stats/voltorb.asm"
INCLUDE "data/pokemon/base_stats/electrode.asm"
INCLUDE "data/pokemon/base_stats/helectrode.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor.asm"
INCLUDE "data/pokemon/base_stats/hitmonlee.asm"
INCLUDE "data/pokemon/base_stats/hitmonchan.asm"
INCLUDE "data/pokemon/base_stats/hitmontop.asm"
INCLUDE "data/pokemon/base_stats/weezing.asm"
INCLUDE "data/pokemon/base_stats/mrmime.asm"
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"
INCLUDE "data/pokemon/base_stats/rhydon.asm"
INCLUDE "data/pokemon/base_stats/rhyperior.asm"
INCLUDE "data/pokemon/base_stats/chansey.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/tangela.asm"
INCLUDE "data/pokemon/base_stats/tangrowth.asm"
INCLUDE "data/pokemon/base_stats/kangaskhan.asm"
INCLUDE "data/pokemon/base_stats/seadra.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/staryu.asm"
INCLUDE "data/pokemon/base_stats/starmie.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/kleavor.asm"
INCLUDE "data/pokemon/base_stats/jynx.asm"
INCLUDE "data/pokemon/base_stats/electabuzz.asm"
INCLUDE "data/pokemon/base_stats/electivire.asm"
INCLUDE "data/pokemon/base_stats/magmar.asm"
INCLUDE "data/pokemon/base_stats/magmortar.asm"
INCLUDE "data/pokemon/base_stats/pinsir.asm"
INCLUDE "data/pokemon/base_stats/tauros.asm"
INCLUDE "data/pokemon/base_stats/magikarp.asm"
INCLUDE "data/pokemon/base_stats/gyarados.asm"
INCLUDE "data/pokemon/base_stats/lapras.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/leafeon.asm"
INCLUDE "data/pokemon/base_stats/glaceon.asm"
INCLUDE "data/pokemon/base_stats/sylveon.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/porygon_z.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/chikorita.asm"
INCLUDE "data/pokemon/base_stats/bayleef.asm"
INCLUDE "data/pokemon/base_stats/meganium.asm"
INCLUDE "data/pokemon/base_stats/totodile.asm"
INCLUDE "data/pokemon/base_stats/croconaw.asm"
INCLUDE "data/pokemon/base_stats/feraligatr.asm"
INCLUDE "data/pokemon/base_stats/furret.asm"
INCLUDE "data/pokemon/base_stats/ledian.asm"
INCLUDE "data/pokemon/base_stats/ariados.asm"
INCLUDE "data/pokemon/base_stats/chinchou.asm"
INCLUDE "data/pokemon/base_stats/lanturn.asm"
INCLUDE "data/pokemon/base_stats/togetic.asm"
INCLUDE "data/pokemon/base_stats/togekiss.asm"
INCLUDE "data/pokemon/base_stats/natu.asm"
INCLUDE "data/pokemon/base_stats/xatu.asm"
INCLUDE "data/pokemon/base_stats/mareep.asm"
INCLUDE "data/pokemon/base_stats/flaaffy.asm"
INCLUDE "data/pokemon/base_stats/ampharos.asm"
INCLUDE "data/pokemon/base_stats/marill.asm"
INCLUDE "data/pokemon/base_stats/azumarill.asm"
INCLUDE "data/pokemon/base_stats/sudowoodo.asm"
INCLUDE "data/pokemon/base_stats/skiploom.asm"
INCLUDE "data/pokemon/base_stats/jumpluff.asm"
INCLUDE "data/pokemon/base_stats/sunflora.asm"
INCLUDE "data/pokemon/base_stats/wooper.asm"
INCLUDE "data/pokemon/base_stats/quagsire.asm"
INCLUDE "data/pokemon/base_stats/murkrow.asm"
INCLUDE "data/pokemon/base_stats/honchkrow.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/mismagius.asm"
INCLUDE "data/pokemon/base_stats/yanma.asm"
INCLUDE "data/pokemon/base_stats/yanmega.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/girafarig.asm"
INCLUDE "data/pokemon/base_stats/pineco.asm"
INCLUDE "data/pokemon/base_stats/forretress.asm"
INCLUDE "data/pokemon/base_stats/dunsparce.asm"
INCLUDE "data/pokemon/base_stats/gligar.asm"
INCLUDE "data/pokemon/base_stats/gliscor.asm"
INCLUDE "data/pokemon/base_stats/snubbull.asm"
INCLUDE "data/pokemon/base_stats/granbull.asm"
INCLUDE "data/pokemon/base_stats/qwilfish.asm"
INCLUDE "data/pokemon/base_stats/overqwil.asm"
INCLUDE "data/pokemon/base_stats/shuckle.asm"
INCLUDE "data/pokemon/base_stats/heracross.asm"
INCLUDE "data/pokemon/base_stats/sneasel.asm"
INCLUDE "data/pokemon/base_stats/weavile.asm"
INCLUDE "data/pokemon/base_stats/sneasler.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/ursaluna.asm"
INCLUDE "data/pokemon/base_stats/magcargo.asm"
INCLUDE "data/pokemon/base_stats/piloswine.asm"
INCLUDE "data/pokemon/base_stats/mamoswine.asm"
INCLUDE "data/pokemon/base_stats/corsola.asm"
INCLUDE "data/pokemon/base_stats/octillery.asm"
INCLUDE "data/pokemon/base_stats/mantine.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/donphan.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/wyrdeer.asm";;
INCLUDE "data/pokemon/base_stats/miltank.asm"
INCLUDE "data/pokemon/base_stats/grotle.asm";;
INCLUDE "data/pokemon/base_stats/torterra.asm";;
INCLUDE "data/pokemon/base_stats/monferno.asm";;
INCLUDE "data/pokemon/base_stats/infernape.asm";;
INCLUDE "data/pokemon/base_stats/prinplup.asm";;
INCLUDE "data/pokemon/base_stats/empoleon.asm";;
INCLUDE "data/pokemon/base_stats/staravia.asm";;
INCLUDE "data/pokemon/base_stats/staraptor.asm";;
INCLUDE "data/pokemon/base_stats/luxio.asm";;
INCLUDE "data/pokemon/base_stats/luxray.asm";;
INCLUDE "data/pokemon/base_stats/roselia.asm";;
INCLUDE "data/pokemon/base_stats/roserade.asm";;
INCLUDE "data/pokemon/base_stats/rampardos.asm";;
INCLUDE "data/pokemon/base_stats/bastiodon.asm";;
INCLUDE "data/pokemon/base_stats/vespiquen.asm";;
INCLUDE "data/pokemon/base_stats/ambipom.asm";;
INCLUDE "data/pokemon/base_stats/drifblim.asm";;
INCLUDE "data/pokemon/base_stats/lopunny.asm";;
INCLUDE "data/pokemon/base_stats/skuntank.asm";;
INCLUDE "data/pokemon/base_stats/bronzor.asm";;
INCLUDE "data/pokemon/base_stats/bronzong.asm";;
INCLUDE "data/pokemon/base_stats/spiritomb.asm";;
INCLUDE "data/pokemon/base_stats/gabite.asm";;
INCLUDE "data/pokemon/base_stats/garchomp.asm";;
INCLUDE "data/pokemon/base_stats/lucario.asm";;
INCLUDE "data/pokemon/base_stats/hippowdon.asm";;
INCLUDE "data/pokemon/base_stats/drapion.asm";;
INCLUDE "data/pokemon/base_stats/toxicroak.asm";;
INCLUDE "data/pokemon/base_stats/snover.asm";;
INCLUDE "data/pokemon/base_stats/abomasnow.asm";;
INCLUDE "data/pokemon/base_stats/dusclops.asm";;
INCLUDE "data/pokemon/base_stats/dusknoir.asm";;
INCLUDE "data/pokemon/base_stats/froslass.asm";;
INCLUDE "data/pokemon/base_stats/rotom.asm";;
INCLUDE "data/pokemon/base_stats/havalugg.asm";;
INCLUDE "data/pokemon/base_stats/basculegion.asm";;
INCLUDE "data/pokemon/base_stats/hbraviary.asm";;
INCLUDE "data/pokemon/base_stats/kirlia.asm";;
INCLUDE "data/pokemon/base_stats/gardevoir.asm";;
INCLUDE "data/pokemon/base_stats/gallade.asm";;
INCLUDE "data/pokemon/base_stats/hsliggoo.asm";;
INCLUDE "data/pokemon/base_stats/hgoodra.asm";;
INCLUDE "data/pokemon/base_stats/hzoroark.asm";;
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/raikou.asm"
INCLUDE "data/pokemon/base_stats/entei.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/heatran.asm";;
INCLUDE "data/pokemon/base_stats/lugia.asm"
INCLUDE "data/pokemon/base_stats/ho_oh.asm"
INCLUDE "data/pokemon/base_stats/celebi.asm"
	assert_table_length NUM_POKEMON 
INCLUDE "data/pokemon/base_stats/egg.asm" ; no change to this since originl 
