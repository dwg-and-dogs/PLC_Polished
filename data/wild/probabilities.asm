GrassMonProbTable:
	table_width 1, GrassMonProbTable
	db 25  ; 25% chance
	db 50  ; 25% chance
	db 70  ; 20% chance
	db 83  ; 13% chance
	db 93  ; 10% chance
	db 98  ;  5% chance
	db 100 ;  2% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 1, WaterMonProbTable
	db 60  ; 60% chance
	db 90  ; 30% chance
	db 100 ; 10% chance
	assert_table_length NUM_WATERMON
