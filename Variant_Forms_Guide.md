Files



Just looking to add the regional forms. 



**1.) constants/pokemon\_constants.asm**

;this file just tells the makers how many variant forms there will be. 



```

ALOLAN\_FORM EQU 2

&nbsp;	const\_skip

&nbsp;	...



Some things are there for making sure there is a constant number of these 



**2.) Data/pokemon/variant\_forms.asm**

;this file contains the types of pokemon that are capable of having a variant form. 



VariantSpeciesAndFormTable:

&nbsp;	table\_width 2, VariantSpeciesAndFormTable

&nbsp;	dp GYARADOS,  GYARADOS\_RED\_FORM

&nbsp;	dp MEWTWO,    MEWTWO\_ARMORED\_FORM

&nbsp;	dp RATTATA,   ALOLAN\_FORM





3.) Data/pokemon/valid\_variants.asm 

; this file

ValidVariantRanges: ; for Wonder Trade

&nbsp;	db UNOWN,     NUM\_UNOWN

&nbsp;	db ARBOK,     2 ; ARBOK\_JOHTO\_FORM or ARBOK\_KANTO\_FORM

&nbsp;	db MAGIKARP,  NUM\_MAGIKARP

&nbsp;	db RATTATA,   2 ; ALOLAN



