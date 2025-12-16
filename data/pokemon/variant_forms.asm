; Data tables that vary for forms list normal species data up to 255 (EGG),
; then continue with entries for these species+form combinations.

CosmeticSpeciesAndFormTable:
	table_width 2, CosmeticSpeciesAndFormTable
	dp UNOWN,     UNOWN_B_FORM
	dp UNOWN,     UNOWN_C_FORM
	dp UNOWN,     UNOWN_D_FORM
	dp UNOWN,     UNOWN_E_FORM
	dp UNOWN,     UNOWN_F_FORM
	dp UNOWN,     UNOWN_G_FORM
	dp UNOWN,     UNOWN_H_FORM
	dp UNOWN,     UNOWN_I_FORM
	dp UNOWN,     UNOWN_J_FORM
	dp UNOWN,     UNOWN_K_FORM
	dp UNOWN,     UNOWN_L_FORM
	dp UNOWN,     UNOWN_M_FORM
	dp UNOWN,     UNOWN_N_FORM
	dp UNOWN,     UNOWN_O_FORM
	dp UNOWN,     UNOWN_P_FORM
	dp UNOWN,     UNOWN_Q_FORM
	dp UNOWN,     UNOWN_R_FORM
	dp UNOWN,     UNOWN_S_FORM
	dp UNOWN,     UNOWN_T_FORM
	dp UNOWN,     UNOWN_U_FORM
	dp UNOWN,     UNOWN_V_FORM
	dp UNOWN,     UNOWN_W_FORM
	dp UNOWN,     UNOWN_X_FORM
	dp UNOWN,     UNOWN_Y_FORM
	dp UNOWN,     UNOWN_Z_FORM
	dp UNOWN,     UNOWN_EXCLAMATION_FORM
	dp UNOWN,     UNOWN_QUESTION_FORM
	assert_table_length NUM_COSMETIC_FORMS
	; fallthrough

VariantSpeciesAndFormTable: ; as many variants as we have 
	table_width 2, VariantSpeciesAndFormTable
	dp PONYTA,    GALARIAN_FORM
	dp RAPIDASH,  GALARIAN_FORM
	dp VOLTORB,   HISUIAN_FORM
	assert_table_length NUM_VARIANT_FORMS
	; fallthrough

ExtSpeciesTable: ; no change here from polished - the OG is just this. 
; For species after index 254. Just a simple ordered table.
; We can't just convert directly, that results in problems with formes, even if
; the extspecies doesn't have a form on its own.
; could do: maybe convert directly anyway by splitting the tables up for
; optimization reasons? This would only really be relevant for the pokedex.
	table_width 2, ExtSpeciesTable
	assert_table_length NUM_EXT_SPECIES

	db 0 ; end
