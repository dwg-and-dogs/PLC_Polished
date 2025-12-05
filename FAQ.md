# FAQ

If you have a question about Crystal Inheritance, or think you've found a bug, please read this FAQ first.

You can report bugs on the discord or to me on Reddit by DM, u/dwg6m9.

### Which file do I need to play?

Version 0.1.0 is released as a pre-patched gbc file. 

For earlier versions, the ROM you should use for patching:

* Pokémon - Crystal Version (UE) (V1.0) [C][!].gbc
  (`md5: 9f2922b235a5eeb78d65594e82ef5dde`)

It's identical to the one built by the [pokecrystal](https://github.com/pret/pokecrystal) project.

### Where did this Pokémon go?

Many first forms were removed to make room for more evolutionary lines. 

Evolution lines whose types were already overrepresented (normal-flying, for example) were cut.

There are plans to re-work the Dex to restore first forms. 

### Is there documentation for all the {Pokémon, items, moves, etc}?

The game's [data files](data/) do a fairly good job of listing things you'll want to know. Some highlights:

* [Base stats and TM learnsets](data/pokemon/base_stats/)
* [Level-up learnsets and evolution methods](data/pokemon/evos_attacks.asm)
* [Egg moves](data/pokemon/egg_moves.asm)
* [Move attributes](data/moves/moves.asm)
* [TM+HM+tutor list](data/moves/tmhm_moves.asm)
* [Wild Pokémon](data/wild/)
* TODO: Trainer Parties and movesets (Spoilers!)

A route-by-route encounter table is posted at ___ (insert screenshot or excel table)

### My Pokémon is a different color, is it shiny?

There's a 1 in 1,024 chance to encounter a shiny Pokémon, and they'll be marked with a star next to their name. You're probably noticing the effect of the **IVs vary colors** option (see below).

There is also a 1 in 1,048,576 change to encounter a Pokémon with maximum DVs for a given hidden power. These are special Pokémon that have wildly varying color palettes. 

### What are the options at the start of a new game?

* **Natures:** Enables [natures](https://bulbapedia.bulbagarden.net/wiki/Nature) from Gen 3 onward.
* **Abilities:** Enables [abilities](https://bulbapedia.bulbagarden.net/wiki/Ability) from Gen 3 onward.
* **Phys/Spcl split:** Enables the [Physical/Special split](https://bulbapedia.bulbagarden.net/wiki/Damage_category) from Gen 4 onward.
* **Exp. scaling:** Enables the [experience formula](https://bulbapedia.bulbagarden.net/wiki/Experience#Gain_formula) from Gen 5, 7 and 8, which scales experience by the ratio of the opponent's level to your level.
* **Perfect stats:** All Pokémon stats, for you and the opponent, are calculated as if they had maximum IVs. The actual IVs are still random, so color variation and Hidden Power type are not affected.
* **Traded Pokémon treat you as OT:** All differences in traded Pokémon go away: they always obey you, don't gain boosted experience, and can be nicknamed.
* **Nuzlocke mode:** Enables a [Nuzlocke challenge](https://bulbapedia.bulbagarden.net/wiki/Nuzlocke_Challenge); see [FEATURES.md](FEATURES.md) for detailed clauses.

If you need to change these options after starting a game, press Left+B at the title screen to reset them.


### I don't recognize this move, what is it?

There's only room for 255 moves, including Struggle. I wanted to fit in as many useful new moves as possible, so some similar moves were combined to free up space.

* "**Fury Strikes**" = Fury Swipes + Fury Attack
* "**Healing Light**" = Morning Sun + Moonlight + Synthesis
* "**Fresh Snack**" = Softboiled + Milk Drink

### How do I evolve my Pokémon?

* Pokemon evolve into Hisui forms by using the Hisui Stone from a standard pre-evolution (Hisuian forms: Typhlosion, Samurott, Decidueye, Arcanine, Electrode, Overqwil (from standard Qwilfish), Sneasler (from standard Sneasel), Wyrdeer (from Stantler))
* Kadabra, Graveler, Machoke, Haunter evolve at Lv. 40 
* Ponyta, Grimer, Rhydon evolve at Lv. 25
* Item trade evolutions (like Seadra into Kingdra while holding a Dragon Scale) now evolve while holding the item.
* Magneton evoles with a Thunderstone
* Ursaring evolves with a Moon Stone 
* Yanma, Tangela, and Piloswine evolve while knowing AncientPower
* Eevee evoles into Espeon with Sun Stone; Umbreon with Dusk Stone, Leafeon with Leaf Stone, Glaceon with Ice Stone, Sylveon with Shiny Stone


### Where do I get this item?

*...

Full spreadsheet is at: TODO 

### Where do I get this TM/HM or move tutor?

TODO: Post spreadsheet

### What do photographs do?

They make your Pokémon happier, just like haircuts. There is a photographer in the Ecruteak Shrine north of Ecruteak City. 

### What is the Judge Machine?

The Judge Machine in Goldenrod City's PokéCom Center shows your Pokémon's EVs (effort) and IVs (potential). 


### What do the new balls do?

Material 		-- PokeBall 	-- Effect
Radiant Opal 	-- Jeze Ball 	-- Better catch rate for Dark, Psychic, Fairy 
Shore Foam 		-- Bub Ball 	-- Better catch rate for Ice, Water 
Fixed Charge 	-- Deci Ball 	-- Better catch rate for Electric
Tough Leaves 	-- Herb Ball 	-- Better catch rate for Poison, Bug, Grass
Hollow Rock 	-- Geode 		-- Better catch rate for Steel, Ground, Rock 
Red Apricorn 	-- Love Ball 	-- Better catch rate for opposite gender & increases friendship (combines Love Ball and Friend Ball effect from vanilla) 
White Apricorn 	-- Fast Ball 	-- Vanilla behavior

### What are suggested level caps?

TODO

Anarres: 
Gauldenrod: 
Goldenrod:
Violet:
Dance Theatre:
Western Capital: 
Trader's Landing Port:
Lighthouse:
Mahogany:
Sinjoh:
Eerie Hamlet:
Final Gauntlet:
Final Boss:


### Spoilers below!






### Seriously, spoilers below!


### Wait, who is this character?

Hollis: Elder of Anarres Town. 
Amos: Leader of resistance to Mejimi. 

Mejimi: Emperor of Historic Johto.
Adrinna: General and aide to Mejimi, overseer of mining operation in historic Mt Mortar. Attempts to influence the player. 

Bobesh: General and aide to Mejimi, overseer of Gauldenrod. 
Kensey: General and aide to Mejimi, overseer of Trader's Landing. 

Sandra: Elder of Gauldenrod. 
Vespera: Western Capital religious leader. 
Barbeau: Elder of Trader's Landing. 
Kanna: Hisuian expedition leader. 



### Where do I get the legendary Pokémon?

Legendary pokemon are found in the locations below: 

*Entei: Solve the last Alph puzzle and use the item obtained on the rock indent on the eastern half of Route 42. 
*Suicune: Save the Miltank on Route 39. 
*Raikou: Top of Lighthouse (beyond the room with Jasmine and the scientists) with Lugia or Politoed in the party. 
*Lugia: Historic Whirl Islands (Sheltered Shores), requires waterfall
*Ho-Oh: Show Morty any of the legendary beasts, defeat him, then ascend Tin Tower. 
*Celebi: Timeless Tapestry
*Heatran: Clast's Cradle, bottom floor

Legendary pokemon cannot be reset. 


### Wait, what's going on in historic Johto?

The plot is partially inspired by the time of the Meiji Restoration in Japan ca. 1860. 

Outsiders have landed at the western port, demanding free access. 
It is known to the Emperor and his generals that Kanto surrendered to the outsiders and is in danger of becoming completely subsumed by the outsiders. 

Emperor Mejimi is influenced by General Adrinna to form an empire in Johto that will be united in its resistance to the outsiders. 
General Adrinna believes that the traditional attitudes of Johto are holding it back. 
Emperor Mejimi will assume a divine role to make his status unquestionable. 
Over time, General Adrinna grows more frustrated with Emperor Mejimi as she sees that he is not truly reforming Johto. 

The emperor's plan is opposed by the leaders of various cities in Johto. 
The resistance is organized by the character of Amos. 


### Wait, what's going on in modern Johto?

There is a severe drought taking hold. Kurt believes the drought is due to the region going against its traditions that held it close to nature, especially because of the influence of Silph Co. 

Silph has installed several water-generating plants throughout Johto to disastrous effect, from building a water tower in Violet, to a distillation plant in Olivine, and a water project at the Lake of Rage. 

The drought is so severe that the region is essentially split in two, with the entire Eastern half being guarded by Dragon Tamers to prevent Silph from accessing the water in Mt. Silver. 

Johto's gym leaders have given in to cynicism that prevents them from addressing the drought, except for Pryce. Pryce is going around to each of the gym leaders to convince them to help their cities. 

Your Rival feels bitter about the way he has been treated in Azalea and joins Silph with his inventions. Over time, he becomes disillusioned. 



### I'm stuck on the trade quest for the master ball!

0. Mint Leaf in Azalea Pokecenter
1. Tinymushroom in Anarres North House
2. Lemonade in Gauldenrod Southwest House
3. Brick Piece in National Park
4. Ragecandybar in Goldenrod Museum 2F
5. Big Mushroom in Violet West House
6. Liteblue Mail in Ecruteak West House
7. Gold Leaf in Ecruteak Central House
9. Pearl in Olivine City, Northeast House
10. Surf Mail in Olivine City 
11. Old Amber in Mahogany Town
12. Sweet Honey in Eerie Hamlet
13. Master Ball in Gauldenrod Guild

### I can't figure out this puzzle!

Ruins of Alph Puzzles: 

Kimono puzzles:
	Kimono 1: <link>
	Kimono 2: Talk to the hedgehog from the south, then east, then north, then south, then east. 
	Kimono 3: <link>
	Kimono 4: 
	Kimono 5: 

Sheltered shores: Hit switches in order 5-4-3-1, then hit the center switch. 

Western Glacier:

Brass Tower:
