NPCTrades:
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; NPC_TRADE_MIKE in Goldenrod City -- need to check the text  
	rawchar 1, ABRA,       MISDREAVUS,     "Flutter@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SATK_UP_ATK_DOWN,  FEMALE, DUSK_BALL,   SITRUS_BERRY
	dw 37460
	rawchar "Mike@@@@", $00
; NPC_TRADE_KYLE in Second Class Cabin CHECKED
	rawchar 2, GASTLY,    DRIFLOON,    "Pennywise@@" ; Pagliacci
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SATK_UP_ATK_DOWN,   MALE,   JEZE_BALL,   PERSIM_BERRY
	dw 48926
	rawchar "Kyle@@@@", $00
; NPC_TRADE_TIM; western capital dorms CHECKED
	rawchar 3, SNUBBULL,    HITMONLEE, "Geri@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SPD_DOWN,   MALE,   FAST_BALL,   SITRUS_BERRY
	dw 29189
	rawchar "Jerry@@@", $00
; NPC_TRADE_EMY; western capital stockroom CHECKED
	rawchar 3, CLEFAIRY,       HITMONCHAN,   "Zuki@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SPD_DOWN,   FEMALE, FAST_BALL,    SITRUS_BERRY
	dw 00283
	rawchar "Ted@@@@@", $00
; NPC_TRADE_CHRIS gauldenrod dorms  CHECKED 
	rawchar 1, PARAS,     BERGMITE,  "Bert@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_DEF_UP_SATK_DOWN,  MALE,   NET_BALL,    BRIGHTPOWDER
	dw 15616
	rawchar "Chris@@@", $00
; NPC_TRADE_KIM
	rawchar 3, CHANSEY,  SNORUNT,    "Chance@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_ATK_DOWN,  FEMALE, HEAL_BALL,    LUCKY_EGG
	dw 26491
	rawchar "Kim@@@@@", $00
; NPC_TRADE_JACQUES unused
	rawchar 1, GRIMER,  GRIMER,     "Gail@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_SATK_DOWN, FEMALE, BUB_BALL,    EVIOLITE
	dw 50082
	rawchar "Jacques@", $00
; NPC_TRADE_HARI unused
	rawchar 0, STARLY, HOOTHOOT,      "Clarence@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_DEF_DOWN,   MALE,   FAST_BALL,    SITRUS_BERRY
	dw 43972
	rawchar "Hari@@@@", $00
	assert_table_length NUM_NPC_TRADES
