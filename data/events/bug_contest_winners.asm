BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; This reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_SchoolboyJohnny
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw ARIADOS,     300
	dbw LEDIAN,    285
	dbw LEDIAN,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, WADE1
	dbw YANMA,      286
	dbw LEDIAN, 251
	dbw LEDIAN,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw LEDIAN, 349
	dbw PINSIR,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw PARASECT,   332
	dbw LEDIAN, 324
	dbw YANMA,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BENNY
	dbw LEDIAN, 318
	dbw ARIADOS,     295
	dbw LEDIAN,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw PINSIR,     366
	dbw YANMA,    329
	dbw ARIADOS,     314

BugContestant_PicnickerCindy:
	db PICNICKER, TIFFANY1
	dbw LEDIAN, 341
	dbw LEDIAN,    301
	dbw LEDIAN,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    326
	dbw LEDIAN, 292
	dbw LEDIAN,    282

BugContestant_SchoolboyJohnny:
	db SCHOOLBOY, JOHNNY
	dbw ARIADOS,     270
	dbw PINSIR,     282
	dbw LEDIAN,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, CHAD1
	dbw YANMA,    267
	dbw PARAS,      254
	dbw ARIADOS,     259
