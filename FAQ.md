# FAQ

If you have a question about Crystal Inheritance, or think you've found a bug, please read this FAQ first.

You can report bugs on the discord or to me on Reddit by DM, u/dwg6m9.

### Which file do I need to play?

Versions >0.0.1 is released as a pre-patched gbc file. 

For earlier versions, the ROM you should use for patching:

* Pokémon - Crystal Version (UE) (V1.0) [C][!].gbc
  (`md5: 9f2922b235a5eeb78d65594e82ef5dde`)

It's identical to the one built by the [pokecrystal](https://github.com/pret/pokecrystal) project.


### Difficulty Selection 

TODO 

Normal mode trainers have no EVs no boss or rival battles have items. Normal mode difficulty is comparable to Platinum or B2W2. If you like to nuzlocke, this difficulty should be fair. 

In Hard Mode, experienced players who battle every trainer can expect to be a few levels below boss battles. Difficulty is still easier than the Kaizo series. Opponents have EVs, items, and some coverage moves. 


### Are there any sandbox or debug features? 

There are two debug features:

(Beta only!) The first is the radio in Kurt's house. It will give you a few Lv100 team members, all TM, Dex entries, items, ... 

(All versions) The back-left corner of the Azalea Gym has a portal to a debug room. Simply interact with the furthest-left flower tile. Starting from the top-left and working to the bottom-right: 
* Random type pokemon gift, for monotype runs
* All items
* Lv100 super team 
* Dev
* Random any pokemon
* Give all pokemon, no forms 
* Give all pokemon, variant forms 


### Where did this Pokémon go?

Some first forms, especially babies, were removed to make room for more evolutionary lines. 


### Is there documentation for all the {Pokémon, items, moves, etc}?

The game's [data files](data/) do a fairly good job of listing things you'll want to know. Some highlights:

* [Base stats and TM learnsets](data/pokemon/base_stats/)
* [Level-up learnsets and evolution methods](data/pokemon/evos_attacks.asm)
* [Egg moves](data/pokemon/egg_moves.asm)
* [Move attributes](data/moves/moves.asm)
* [TM+HM+tutor list](data/moves/tmhm_moves.asm)
* [Wild Pokémon](data/wild/)

An encounter table is posted in the discord channel for the beta. 

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
* **Difficulty:** Easy: No EVs or items on trainers; Normal: Typical romhack difficult; Expert: Full teams of 6 and higher EVs for bosses. 

If you need to change these options after starting a game, press Left+B at the title screen to reset them.


### I don't recognize this move, what is it?

There's only room for 255 moves, including Struggle. Some similar moves were combined to free up space.

* "**Fury Strikes**" = Fury Swipes + Fury Attack
* "**Healing Light**" = Morning Sun + Moonlight + Synthesis
* "**Fresh Snack**" = Softboiled + Milk Drink

### How do I evolve my Pokémon?

Evolution and learnsets are posted in the discord channel for the beta. Notable evolutions: 

* Pokemon evolve into alternate forms by using the Odd Souvenir from a standard pre-evolution (e.g., Quilava to Hisuian Typhlosion). There is no method to convert a plain form to a variant form. 
* Kadabra, Graveler, Machoke, Haunter evolve at Lv. 40 
* Ponyta, Grimer, Rhydon evolve at Lv. 25
* Item trade evolutions (like Seadra into Kingdra while holding a Dragon Scale) evolve while holding the item.
* Magneton evoles with a Thunderstone
* Ursaring evolves with a Moon Stone 
* Yanma, Tangela, and Piloswine evolve while knowing AncientPower
* Eevee evoles into Espeon with Sun Stone; Umbreon with Dusk Stone, Leafeon with Leaf Stone, Glaceon with Ice Stone, Sylveon with Shiny Stone
* Rufflet evolves at Lv. 36

### Where do I get this item?

Item locations are posted in the discord beta channel. 

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

Badge 1, Anarres Town: 16
	Optional, Bugsy:  18
Badge 2, Gauldenrod: 21
	Stadium: 24
Badge 3, Goldenrod: 29
Badge 4, Violet City: 33
Badge 5, Western Capital: 36
Badge 6, Trader's Landing Docks: 40
Badge 7, Olivine City: 43
Badge 8, Mahogany Town: 45
	Optional, Jasmine: 48
	Optional, Morty: 49
Badge 9, Sinjoh Camp: 48
	Optional, Clair: 50 
Badge 10, Eerie Hamlet: 51

Clast's Cradle B1F: 53

Final Gauntlet
General Tyrus: 55
General Nemo: 57

If "No" chosen: 
	General Andrea: 57
	Emperor Vesper: 60
If "Yes" chosen:
	<Spoiler 1/2>: 60
	<Spoiler 2/2>: 60


### Spoilers below!






### Seriously, spoilers below!


### Wait, who is this character?

Silas: Elder of Anarres Town. 
Amos: Leader of resistance to Mejimi. 

Vesper: Emperor of Historic Johto.
Andrea: General and aide to Vesper, overseer of mining operation in historic Mt Mortar. Attempts to influence the player. 

Tyrus: General and aide to Mejimi, overseer of Gauldenrod. 
Nemo: General and aide to Mejimi, overseer of Trader's Landing. 

Sandra: Elder of Gauldenrod. 
Sybil: Western Capital religious leader. 
Remy: Elder of Trader's Landing. 
Petra: Hisuian expedition leader. 


### Where do I get the legendary Pokémon?

Legendary pokemon are found in the locations below: 

*Entei: Solve the last Alph puzzle and use the item obtained on the rock indent on the eastern half of Route 42. 
*Suicune: Save the Miltank on Route 39. 
*Raikou: Top of Lighthouse (beyond the room with Jasmine and the scientists) with Lugia or Politoed in the party. 
*Lugia: Historic Whirl Islands (Sheltered Shores), requires waterfall
*Ho-Oh: Show Morty any of the legendary beasts, defeat him, then ascend Tin Tower. 
*Celebi: Timeless Tapestry
*Heatran: Clast's Cradle, bottom floor

Legendary pokemon, Spiritomb, and Rotom reset each time you complete the final gauntlet and see your team portraits. 


### Wait, what's going on in historic Johto?

The plot is partially inspired by the time of the Meiji Restoration in Japan ca. 1860. 

Outsiders have landed at the western port, demanding free access.  
Emperor Vesper worries that Johto may end up like Kanto as a colony.

Emperor Vesper is influenced by General Andrea to form an empire in Johto that will be united in its resistance to the outsiders. 
General Andrea believes that the traditional attitudes of Johto are holding it back. 
Emperor Vesper will assume a divine role to make his status unquestionable. 
Over time, General Andrea grows more frustrated with Emperor Vesper as she sees that he is not truly reforming Johto. 

The emperor's plan is opposed by the leaders of various cities in Johto. 
The resistance is organized by the character of Amos.


### Wait, what's going on in modern Johto?

There is a severe drought. Kurt believes the drought is due to the region going against its traditions, especially because of the influence of Silph Co. 

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
9. Pearl in Olivine City Northeast House
10. Surf Mail in Olivine City 
11. Old Amber in Mahogany Town
12. Sweet Honey in Eerie Hamlet
13. Master Ball in Gauldenrod Guild

### I can't figure out this puzzle!


TODO 

* [Celebi, Heatran, Violet Catacombs, Cabin #4 Sudoku](screenshots/Inheritance_Publish/Features/solved_puzzles)

Kimono puzzles:
	Kimono 2: Talk to the hedgehog from the south, then east, then north, then south, then east. 

Whirl Islands:
1. Talk to the sages to go back in time to the Vortex Caverns. 
2. Solve the boulder puzzle with both boulders. 
3. Hit the switches in this order: 5 -- 4 -- 3 -- 1. You may need to hit the reset block. 
4. Surf on the tiles to reach the center switch. 
5. Talk to the sages to go forward in time to the Whirl Islands. 
6. Descend past Kurt to get to the Whirlpool HM. 
7. Enter the Whirl Islands by the top-left island. 
8. Find the stairs that allow you to progress. 
9. Solve the overworld maze. 
10. Solve the water currents puzzle. 
11. Descend the waterfall, witness Kurt capture Lugia. 



TODO

Enigma Glacier: hint, use the overworld boulders to help you land where you need to. Only the bottom boulder needs to be used. 

Ruins of Alph Puzzles: 
	Bronzong: 
	Lugia: 

Brass Tower:
