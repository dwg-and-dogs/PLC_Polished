NPCTrades:
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; NPC_TRADE_MIKE in Goldenrod City -- yes implemented 
	rawchar 0, ABRA,       MISDREAVUS,     "Flutter@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SATK_UP_ATK_DOWN,  FEMALE, DUSK_BALL,   SITRUS_BERRY
	dw 37460
	rawchar "Mike@@@@", $00
; NPC_TRADE_KYLE in Second Class Cabin 
	rawchar 0, GASTLY,    MR__MIME,    "Pagliacci@@" ; Pagliacci
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SATK_UP_ATK_DOWN,   MALE,   JEZE_BALL,   PERSIM_BERRY
	dw 48926
	rawchar "Kyle@@@@", $00
; NPC_TRADE_TIM
	rawchar 1, SNUBBULL,    HITMONLEE, "Geri@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SPD_DOWN,   MALE,   FAST_BALL,   SITRUS_BERRY
	dw 29189
	rawchar "Jerry@@@", $00
; NPC_TRADE_EMY in Blackthorn City
	rawchar 3, CLEFAIRY,       HITMONCHAN,   "Zuki@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SPD_DOWN,   FEMALE, FAST_BALL,    SITRUS_BERRY
	dw 00283
	rawchar "Ted@@@@@", $00
; NPC_TRADE_CHRIS in Pewter City
	rawchar 2, PINSIR,     HERACROSS,  "Paul@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_SATK_DOWN,  MALE,   PARK_BALL,    SILVERPOWDER
	dw 15616
	rawchar "Chris@@@", $00
; NPC_TRADE_KIM in Route 14
	rawchar 3, CHANSEY,  CHANSEY,    "Chance@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_ATK_DOWN,  FEMALE, HEAL_BALL,    LUCKY_EGG
	dw 26491
	rawchar "Kim@@@@@", $00
; NPC_TRADE_JACQUES in Goldenrod Harbor
	rawchar 1, GRIMER,  GRIMER,     "Gail@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_SATK_DOWN, FEMALE, BUB_BALL,    EVIOLITE
	dw 50082
	rawchar "Jacques@", $00
; NPC_TRADE_HARI in Ecruteak City
	rawchar 0, FARFETCH_D, PIDGEY,      "Clarence@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_DEF_DOWN,   MALE,   FAST_BALL,    SITRUS_BERRY
	dw 43972
	rawchar "Hari@@@@", $00
	assert_table_length NUM_NPC_TRADES
