item_attribute: MACRO
; price, held effect, parameter, pocket, field menu, battle menu
	dw \1
	db \2, \3, \4
	dn \5, \6
ENDM

ItemAttributes:
	table_width ITEMATTR_STRUCT_LENGTH, ItemAttributes
; # BALL
	item_attribute 200, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; GREAT BALL
	item_attribute 600, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; ULTRA BALL
	item_attribute 800, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; MASTER BALL
	item_attribute 0, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; SAFARI BALL
	item_attribute 200, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; JEZE BALL
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; BUB BALL
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; DECI BALL
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; HERB BALL
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; GROWTH_FAST BALL
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; GEODE
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; LOVE BALL
	item_attribute 150, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; ABILITYPATCH
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; REPEAT BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; TIMER BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; NEST BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; NET BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; DIVE BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; LUXURY BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; HEAL BALL
	item_attribute 300, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; QUICK BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; DUSK BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; DREAM BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; PREMIER BALL
	item_attribute 20, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; CHERISH BALL
	item_attribute 1000, 0, 0, BALL, ITEMMENU_PARTY, ITEMMENU_CLOSE
; POTION
	item_attribute 200, 0, 20, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; SUPER POTION
	item_attribute 700, 0, 60, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; HYPER POTION
	item_attribute 1500, 0, 120, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX POTION
	item_attribute 2500, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ANTIDOTE
	item_attribute 200, 0, 1 << PSN, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; BURN HEAL
	item_attribute 300, 0, 1 << BRN, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; PARLYZ HEAL
	item_attribute 300, 0, 1 << PAR, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; AWAKENING
	item_attribute 100, 0, SLP, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ICE HEAL
	item_attribute 100, 0, 1 << FRZ, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; FULL HEAL
	item_attribute 400, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; FULL RESTORE
	item_attribute 3000, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; REVIVE
	item_attribute 2000, 0, 0, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX REVIVE
	item_attribute 4000, 0, 0, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ETHER
	item_attribute 1200, 0, 10, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX ETHER
	item_attribute 2000, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ELIXIR
	item_attribute 3000, 0, 10, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX ELIXIR
	item_attribute 4500, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; HP UP
	item_attribute 10000, 0, MON_HP_EV - MON_EVS, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; PROTEIN
	item_attribute 10000, 0, MON_ATK_EV - MON_EVS, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; IRON
	item_attribute 10000, 0, MON_DEF_EV - MON_EVS, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; CARBOS
	item_attribute 10000, 0, MON_SPD_EV - MON_EVS, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; CALCIUM
	item_attribute 10000, 0, MON_SAT_EV - MON_EVS, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; ZINC
	item_attribute 10000, 0, MON_SDF_EV - MON_EVS, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; RARE CANDY
	item_attribute 1, 0, 0, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; PP UP
	item_attribute 10000, 0, 0, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; PP MAX
	item_attribute 10000, 0, 0, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; FRESH WATER
	item_attribute 200, 0, 30, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; SODA POP
	item_attribute 300, 0, 50, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; LEMONADE
	item_attribute 1, 0, 70, ITEM, ITEMMENU_PARTY, ITEMMENU_PARTY
; MOOMOO MILK
	item_attribute 500, 0, 100, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; RAGECANDYBAR
	item_attribute 300, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; PEWTERCRUNCH
	item_attribute 300, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; SACRED ASH
	item_attribute 50000, 0, 0, MEDICINE, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; ENERGYPOWDER
	item_attribute 500, 0, 60, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ENERGY ROOT
	item_attribute 1200, 0, 120, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; HEAL POWDER
	item_attribute 300, 0, -1, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; REVIVAL HERB
	item_attribute 2800, 0, 0, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; X ATTACK
	item_attribute 1000, 0, $10 | ATTACK, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X DEFEND
	item_attribute 2000, 0, $10 | DEFENSE, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X SPEED
	item_attribute 1000, 0, $10 | SPEED, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X SPCL ATK
	item_attribute 1000, 0, $10 | SP_ATTACK, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X SPCL DEF
	item_attribute 2000, 0, $10 | SP_DEFENSE, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X ACCURACY
	item_attribute 1000, 0, $10 | ACCURACY, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; DIRE HIT
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; GUARD SPEC.
	item_attribute 1500, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; REPEL
	item_attribute 1, 0, 100, ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; SUPER REPEL
	item_attribute 1, 0, 200, ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; MAX REPEL
	item_attribute 1, 0, 250, ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; ESCAPE ROPE
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; # DOLL
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; ABILITY CAP
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; LEAF STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; FIRE STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; WATER STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; THUNDERSTONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; MOON STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; SUN STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; DUSK STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; DAWN STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; SHINY STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; ICE STONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; EVERSTONE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EXP.SHARE
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CHERI BERRY
	item_attribute 10, HELD_HEAL_STATUS, 1 << PAR, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; CHESTO BERRY
	item_attribute 10, HELD_HEAL_STATUS, SLP, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; PECHA BERRY
	item_attribute 10, HELD_HEAL_STATUS, 1 << PSN, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; RAWST BERRY
	item_attribute 10, HELD_HEAL_STATUS, 1 << BRN, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; ASPEAR BERRY
	item_attribute 10, HELD_HEAL_STATUS, 1 << FRZ, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; LEPPA BERRY
	item_attribute 10, HELD_RESTORE_PP, -1, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; ORAN BERRY
	item_attribute 10, HELD_BERRY, 10, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; PERSIM BERRY
	item_attribute 10, HELD_HEAL_CONFUSE, 0, BERRIES, ITEMMENU_NOUSE, ITEMMENU_PARTY
; LUM BERRY
	item_attribute 10, HELD_HEAL_STATUS, -1, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; SITRUS BERRY
	item_attribute 10, HELD_BERRY, 0, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; FIGY BERRY
	item_attribute 10, HELD_BERRY, 0, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; POMEG BERRY
	item_attribute 10, HELD_NO_BUG_BITE, MON_HP_EV - MON_EVS, BERRIES, ITEMMENU_PARTY, ITEMMENU_NOUSE
; KELPSY BERRY
	item_attribute 10, HELD_NO_BUG_BITE, MON_ATK_EV - MON_EVS, BERRIES, ITEMMENU_PARTY, ITEMMENU_NOUSE
; QUALOT BERRY
	item_attribute 10, HELD_NO_BUG_BITE, MON_DEF_EV - MON_EVS, BERRIES, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HONDEW BERRY
	item_attribute 10, HELD_NO_BUG_BITE, MON_SAT_EV - MON_EVS, BERRIES, ITEMMENU_PARTY, ITEMMENU_NOUSE
; GREPA BERRY
	item_attribute 10, HELD_NO_BUG_BITE, MON_SDF_EV - MON_EVS, BERRIES, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TAMATO BERRY
	item_attribute 10, HELD_NO_BUG_BITE, MON_SPD_EV - MON_EVS, BERRIES, ITEMMENU_PARTY, ITEMMENU_NOUSE
; LIECHI BERRY
	item_attribute 10, HELD_RAISE_STAT, ATTACK, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; GANLON BERRY
	item_attribute 10, HELD_RAISE_STAT, DEFENSE, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; SALAC BERRY
	item_attribute 10, HELD_RAISE_STAT, SPEED, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; PETAYA BERRY
	item_attribute 10, HELD_RAISE_STAT, SP_ATTACK, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; APICOT BERRY
	item_attribute 10, HELD_RAISE_STAT, SP_DEFENSE, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; LANSAT BERRY
	item_attribute 10, HELD_RAISE_CRIT, 0, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; STARF BERRY
	item_attribute 10, HELD_RAISE_STAT, $10 | MULTIPLE_STATS, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; ENIGMA BERRY
	item_attribute 10, HELD_ENIGMA_BERRY, 0, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; CUSTAP BERRY
	item_attribute 10, HELD_CUSTAP_BERRY, 0, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; JABOCA BERRY
	item_attribute 10, HELD_OFFEND_HIT, PHYSICAL, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; ROWAP BERRY
	item_attribute 10, HELD_OFFEND_HIT, SPECIAL, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; KEE BERRY
	item_attribute 10, HELD_DEFEND_HIT, PHYSICAL, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; MARANGABERRY
	item_attribute 10, HELD_DEFEND_HIT, SPECIAL, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; BERRY JUICE
	item_attribute 100, HELD_BERRY, 20, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; SILK SCARF
	item_attribute 1000, HELD_TYPE_BOOST, NORMAL, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLACK BELT
	item_attribute 1000, HELD_TYPE_BOOST, FIGHTING, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SHARP BEAK
	item_attribute 1000, HELD_TYPE_BOOST, FLYING, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POISON BARB
	item_attribute 1000, HELD_TYPE_BOOST, POISON, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SOFT SAND
	item_attribute 1000, HELD_TYPE_BOOST, GROUND, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; HARD STONE
	item_attribute 1000, HELD_TYPE_BOOST, ROCK, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SILVERPOWDER
	item_attribute 1000, HELD_TYPE_BOOST, BUG, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SPELL TAG
	item_attribute 1000, HELD_TYPE_BOOST, GHOST, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; METAL COAT
	item_attribute 1000, HELD_TYPE_BOOST, STEEL, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CHARCOAL
	item_attribute 1000, HELD_TYPE_BOOST, FIRE, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MYSTIC WATER
	item_attribute 1000, HELD_TYPE_BOOST, WATER, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MIRACLE SEED
	item_attribute 1000, HELD_TYPE_BOOST, GRASS, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MAGNET
	item_attribute 1000, HELD_TYPE_BOOST, ELECTRIC, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; TWISTEDSPOON
	item_attribute 1000, HELD_TYPE_BOOST, PSYCHIC, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; NEVERMELTICE
	item_attribute 1000, HELD_TYPE_BOOST, ICE, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DRAGON FANG
	item_attribute 1000, HELD_TYPE_BOOST, DRAGON, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLACKGLASSES
	item_attribute 1000, HELD_TYPE_BOOST, DARK, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PINK BOW
	item_attribute 1000, HELD_TYPE_BOOST, FAIRY, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BRIGHTPOWDER
	item_attribute 4000, HELD_BRIGHTPOWDER, $9a, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SCOPE LENS
	item_attribute 4000, HELD_CRITICAL_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; QUICK CLAW
	item_attribute 4000, HELD_QUICK_CLAW, 20, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; KING'S ROCK
	item_attribute 5000, HELD_FLINCH_UP, 10, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; FOCUS BAND
	item_attribute 4000, HELD_FOCUS_BAND, 30, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LEFTOVERS
	item_attribute 4000, HELD_LEFTOVERS, 10, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LUCKY EGG
	item_attribute 4000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; AMULET COIN
	item_attribute 10000, HELD_AMULET_COIN, 10, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CLEANSE TAG
	item_attribute 4000, HELD_CLEANSE_TAG, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SMOKE BALL
	item_attribute 4000, HELD_ESCAPE, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BERSERK GENE
	item_attribute 4000, HELD_BERSERK_GENE, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LIGHT BALL
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; STICK
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; THICK CLUB
	item_attribute 5000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LUCKY PUNCH
	item_attribute 100, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; METAL POWDER
	item_attribute 100, HELD_METAL_POWDER, 10, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; QUICK POWDER
	item_attribute 100, HELD_QUICK_POWDER, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ARMOR SUIT
	item_attribute 0, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; AIR BALLOON
	item_attribute 4000, HELD_AIR_BALLOON, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ASSAULT VEST
	item_attribute 1000, HELD_ASSAULT_VEST, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BIG ROOT
	item_attribute 4000, HELD_BIG_ROOT, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BINDING BAND
	item_attribute 4000, HELD_BINDING_BAND, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DESTINY KNOT
	item_attribute 4000, HELD_DESTINY_KNOT, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EVIOLITE
	item_attribute 2000, HELD_EVIOLITE, 50, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EXPERT BELT
	item_attribute 4000, HELD_EXPERT_BELT, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; FOCUS SASH
	item_attribute 4000, HELD_FOCUS_SASH, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; GRIP CLAW
	item_attribute 4000, HELD_PROLONG_WRAP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LIFE ORB
	item_attribute 4000, HELD_LIFE_ORB, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LIGHT CLAY
	item_attribute 4000, HELD_PROLONG_SCREENS, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; METRONOME_I
	item_attribute 4000, HELD_METRONOME, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MUSCLE BAND
	item_attribute 4000, HELD_CATEGORY_BOOST, PHYSICAL, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PROTECT PADS
	item_attribute 4000, HELD_PROTECTIVE_PADS, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ROCKY HELMET
	item_attribute 4000, HELD_ROCKY_HELMET, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SAFE GOGGLES
	item_attribute 4000, HELD_SAFETY_GOGGLES, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SHED SHELL
	item_attribute 4000, HELD_SHED_SHELL, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SHELL BELL
	item_attribute 4000, HELD_SHELL_BELL, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SOOTHE BELL
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; WEAK POLICY
	item_attribute 1000, HELD_WEAKNESS_POLICY, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; WIDE LENS
	item_attribute 4000, HELD_ACCURACY_BOOST, $ba, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; WISE GLASSES
	item_attribute 4000, HELD_CATEGORY_BOOST, SPECIAL, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ZOOM LENS
	item_attribute 4000, HELD_ZOOM_LENS, $65, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EJECT BUTTON
	item_attribute 4000, HELD_SWITCH_TARGET, 1 << SWITCH_DEFERRED | 1 << SWITCH_TARGET | 1 << SWITCH_OPPITEM, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LAGGING TAIL
	item_attribute 4000, HELD_LAGGING_TAIL, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; IRON BALL
	item_attribute 4000, HELD_IRON_BALL, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RING TARGET
	item_attribute 4000, HELD_RING_TARGET, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RED CARD
	item_attribute 4000, HELD_SWITCH_TARGET, 1 << SWITCH_DEFERRED | 1 << SWITCH_FORCED | 1 << SWITCH_OPPITEM, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ABSORB BULB
	item_attribute 4000, HELD_HIT_RAISE_SAT, WATER, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CELL BATTERY
	item_attribute 4000, HELD_HIT_RAISE_ATK, ELECTRIC, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LUMINOUSMOSS
	item_attribute 4000, HELD_HIT_RAISE_SDF, WATER, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SNOWBALL
	item_attribute 4000, HELD_HIT_RAISE_ATK, ICE, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EJECT PACK
	item_attribute 4000, HELD_EJECT_PACK, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ROOM SERVICE
	item_attribute 4000, HELD_ROOM_SERVICE, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLUNDRPOLICY
	item_attribute 4000, HELD_BLUNDER_POLICY, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; THROAT SPRAY
	item_attribute 4000, HELD_THROAT_SPRAY, SP_ATTACK, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; HEAVY BOOTS
	item_attribute 4000, HELD_HEAVY_BOOTS, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; UTILUMBRELLA
	item_attribute 4000, HELD_UTILITY_UMBRELLA, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MENTAL HERB
	item_attribute 4000, HELD_MENTAL_HERB, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER HERB
	item_attribute 4000, HELD_POWER_HERB, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; WHITE HERB
	item_attribute 4000, HELD_WHITE_HERB, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DAMP ROCK
	item_attribute 4000, HELD_PROLONG_RAIN, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; HEAT ROCK
	item_attribute 4000, HELD_PROLONG_SUN, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SMOOTH ROCK
	item_attribute 4000, HELD_PROLONG_SANDSTORM, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ICY ROCK
	item_attribute 4000, HELD_PROLONG_HAIL, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CHOICE BAND
	item_attribute 4000, HELD_CHOICE, ATTACK, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CHOICE SCARF
	item_attribute 4000, HELD_CHOICE, SPEED, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CHOICE SPECS
	item_attribute 4000, HELD_CHOICE, SP_ATTACK, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; FLAME ORB
	item_attribute 4000, HELD_SELF_BRN, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; TOXIC ORB
	item_attribute 4000, HELD_SELF_PSN, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLACK SLUDGE
	item_attribute 4000, HELD_BLACK_SLUDGE, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MACHO BRACE
	item_attribute 3000, HELD_EV_DOUBLE, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER WEIGHT
	item_attribute 3000, HELD_EV_HP_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER BRACER
	item_attribute 3000, HELD_EV_ATK_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER BELT
	item_attribute 3000, HELD_EV_DEF_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER LENS
	item_attribute 3000, HELD_EV_SAT_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER BAND
	item_attribute 3000, HELD_EV_SDF_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POWER ANKLET
	item_attribute 3000, HELD_EV_SPD_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DRAGON SCALE
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; UP-GRADE
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DUBIOUS DISC
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PROTECTOR
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ELECTIRIZER
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MAGMARIZER
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RAZOR FANG
	item_attribute 5000, HELD_FLINCH_UP, 10, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RAZOR CLAW
	item_attribute 5000, HELD_CRITICAL_UP, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ODD SOUVENIR
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; NUGGET
	item_attribute 10000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BIG NUGGET
	item_attribute 20000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; TINYMUSHROOM
	item_attribute 500, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BIG MUSHROOM
	item_attribute 5000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BALMMUSHROOM
	item_attribute 15000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PEARL
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BIG PEARL
	item_attribute 8000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PEARL STRING
	item_attribute 16000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; STARDUST
	item_attribute 3000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; STAR PIECE
	item_attribute 12000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BRICK PIECE
	item_attribute 1, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RARE BONE
	item_attribute 5000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SILVER LEAF
	item_attribute 2000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; GOLD LEAF
	item_attribute 1, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SLOWPOKETAIL
	item_attribute 1, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BOTTLE CAP
	item_attribute 100, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; HELIX FOSSIL
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DOME FOSSIL
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; OLD AMBER
	item_attribute 1000, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MULCH
	item_attribute 200, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SWEET HONEY
	item_attribute 300, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MINT LEAF
	item_attribute 1, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; FLOWER MAIL
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SURF MAIL
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LITEBLUEMAIL
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; mail
	item_attribute 50, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
	assert_table_length NUM_ITEMS

key_item_attribute: MACRO
; selectable, field menu, battle menu
	db \1
	dn \2, \3
ENDM

KeyItemAttributes:
	table_width KEYITEMATTR_STRUCT_LENGTH, KeyItemAttributes
; BICYCLE
	key_item_attribute 1, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; OLD ROD
	key_item_attribute 1, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; GOOD ROD
	key_item_attribute 1, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; SUPER ROD
	key_item_attribute 1, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; COIN CASE
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; ITEMFINDER
	key_item_attribute 1, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; MYSTERY EGG
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SQUIRTBOTTLE
	key_item_attribute 0, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; UNOWN REPORT
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RED SCALE
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CARD KEY
	key_item_attribute 0, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; BASEMENT KEY
	key_item_attribute 0, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; S.S.TICKET
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PASS
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MACHINE PART
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LOST ITEM
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RAINBOW WING
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SILVER WING
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CLEAR BELL
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; GS BALL
	key_item_attribute 0, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLUE CARD
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; ORANGETICKET
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; MYSTICTICKET
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; OLD SEA MAP
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; SHINY CHARM
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; OVAL CHARM
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; CATCH CHARM
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; SILPHSCOPE2
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; APRICORN BOX
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; TYPE CHART
	key_item_attribute 0, ITEMMENU_CURRENT, ITEMMENU_CURRENT
	assert_table_length NUM_KEY_ITEMS
