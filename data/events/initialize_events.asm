InitialEvents: ; PROBABLY MOST OF THESE CAN BE REMOVED? --> keep these numbers, because givepoke was not working. 
	dw EVENT_TAMMY_HOLLYS_HOLT ; NEW
	dw EVENT_DANCE_THEATRE_OSTENE ; new 
	dw EVENT_TALKED_TO_PRYCE_TINDER_GARDEN ; 
	dw EVENT_KIMONO_CABIN_MORPHEA_NOTEBOOK ; 
	dw EVENT_GAULDENROD_BOBESH ; 
	dw EVENT_GAULDENROD_ADRINNA ; 
	dw EVENT_GAULDENROD_AMOS ; 
	dw EVENT_KAJO_SCHOOLGIRL ;
	dw EVENT_STADIUM_GROUNDS_SANDRA ; NEW 
	dw EVENT_GAULDENROD_FLAREON ; NEW 
	dw EVENT_GAULDENROD_CIVILIANS ; new 
	dw EVENT_TIN_TOWER_ROOF_HO_OH ; new 
	dw EVENT_BUG_CATCHING_CONTESTANT_1A
	dw EVENT_BUG_CATCHING_CONTESTANT_2A
	dw EVENT_BUG_CATCHING_CONTESTANT_3A
	dw EVENT_BUG_CATCHING_CONTESTANT_4A
	dw EVENT_BUG_CATCHING_CONTESTANT_5A
	dw EVENT_BUG_CATCHING_CONTESTANT_6A
	dw EVENT_BUG_CATCHING_CONTESTANT_7A
	dw EVENT_BUG_CATCHING_CONTESTANT_8A
	dw EVENT_BUG_CATCHING_CONTESTANT_9A
	dw EVENT_BUG_CATCHING_CONTESTANT_10A
	dw EVENT_BUG_CATCHING_CONTESTANT_1B
	dw EVENT_BUG_CATCHING_CONTESTANT_2B
	dw EVENT_BUG_CATCHING_CONTESTANT_3B
	dw EVENT_BUG_CATCHING_CONTESTANT_4B
	dw EVENT_BUG_CATCHING_CONTESTANT_5B
	dw EVENT_BUG_CATCHING_CONTESTANT_6B
	dw EVENT_BUG_CATCHING_CONTESTANT_7B
	dw EVENT_BUG_CATCHING_CONTESTANT_8B
	dw EVENT_BUG_CATCHING_CONTESTANT_9B
	dw EVENT_BUG_CATCHING_CONTESTANT_10B
	dw EVENT_INITIALIZED_EVENTS
	dw -1

InitialEngineFlags:
	dw -1

InitialVariableSpritesAndMapScenes: ; CAN PROBABLY REMOVE THESE
varspriteaddr EQUS "wVariableSprites - SPRITE_VARS +"
	dw -1
