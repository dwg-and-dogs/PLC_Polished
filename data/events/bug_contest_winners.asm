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
	dbw BEEDRILL,     300
	dbw BUTTERFREE,    285
	dbw BUTTERFREE,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw YANMA,      286
	dbw BUTTERFREE, 251
	dbw BUTTERFREE,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw BUTTERFREE, 349
	dbw PINSIR,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw VENOMOTH,   332
	dbw BUTTERFREE, 324
	dbw VENONAT,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BENNY
	dbw BUTTERFREE, 318
	dbw BEEDRILL,     295
	dbw BUTTERFREE,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw PINSIR,     366
	dbw VENONAT,    329
	dbw BEEDRILL,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw BUTTERFREE, 341
	dbw BUTTERFREE,    301
	dbw BUTTERFREE,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    326
	dbw BUTTERFREE, 292
	dbw BUTTERFREE,    282

BugContestant_SchoolboyJohnny:
	db SCHOOLBOY, JOHNNY
	dbw BEEDRILL,     270
	dbw PINSIR,     282
	dbw BUTTERFREE,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw VENONAT,    267
	dbw PARAS,      254
	dbw BEEDRILL,     259
