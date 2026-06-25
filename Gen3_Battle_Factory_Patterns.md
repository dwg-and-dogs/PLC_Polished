# Gen 3 Battle Factory — Item / Move / Archetype Patterns

*A working reference for building rental teams in the Emerald Battle Factory (the rental pool = the Battle Frontier Pokémon list, Generation III).*

**Scope note.** This is built from the full Ungrouped + Group 1 + Group 2 rental sets and the opening of Group 3. Group 3 is the highest-tier band (fully evolved, fully competitive movesets) and uses the *same* design grammar as the strong "round-2" sets in Group 2, just applied to better species. Every pattern below is drawn from the actual sets and holds across the whole pool. Where a rule has exceptions, it's flagged.

The Factory assigns each species a small number of fixed sets: **species → held item → 4 moves → nature → EV spread**. Almost nothing is random within a set. So if you can *read the item*, you can usually predict the moves, and vice-versa. That's the whole game of drafting and of guessing what the opponent is holding.

---

## 1. What items mean (item → role, and role → item)

Items in this facility are not flavor. Each one is a tell for what the set is trying to do.

### Survivability / "stay alive" items
- **Focus Band** — the single most common item, the all-purpose "don't die" band (≈1/10 chance to survive a lethal hit at 1 HP). Lands on: frail offensive mons, weak/unevolved mons, and anything built around a **comeback move** (Flail, Counter/Mirror Coat, Endeavor). If you see Focus Band, expect either a glass cannon or a Counter/Flail trap. Examples: Magikarp, Feebas, Geodude/Graveler, Machoke, Marshtomp, Metang, Wobbuffet, Medicham, Misdreavus, Camerupt.
- **Sitrus Berry** — auto-heal ~30 HP once. The "bulky / balanced staying power" pick. Starters and middling tanks love it. Examples: Drowzee, Onix, Slowpoke, Squirtle, Lairon, Omastar, Wigglytuff, Lunatone/Solrock.
- **Leftovers** — passive recovery; reserved for genuine **stall/tank** sets (Slakoth, plus round-2 Parasect, Chansey, Sunflora, Jumpluff, Swalot, Cloyster). Leftovers ≈ "this thing wants the game to go long."
- **Shell Bell** — heal a fraction of damage dealt; goes on **bulky attackers** that swing hard every turn (Octillery, Omastar, Politoed, plus round-2 Surf/Hydro Pump users like Wartortle, Azumarill, Pelipper, Seadra, Huntail, Gorebyss, Mantine).

### Status-cure berries (matched to the threat the set fears)
These are a precise tell — the berry tells you what status the set is worried about.
- **Persim Berry** (confusion) — *extremely* common, default for special attackers and anything that fears confusion hax. Hoothoot, Dratini, Larvitar, Baltoy, Meowth, Duskull, Gloom, Haunter, Arbok, Zangoose, Sneasel, Crawdaunt, Noctowl, Cacturne.
- **Cheri Berry** (paralysis) — fast mons and Electric-weak mons. Azurill, Whismur, Zubat, Mareep, Electrike, Shellder, Vibrava, Elekid, Masquerain, Magneton, Dragonair, Shelgon, Lickitung(r2), Porygon(r2).
- **Rawst Berry** (burn) — often frail Fire-types or physical mons that hate burn. Vulpix, Shuppet, Magnemite, Growlithe, Ponyta, Banette.
- **Chesto Berry** (sleep) — frequently paired with **Rest** (see move combos). Teddiursa, round-2 Wailmer, Bayleef, Dragonair, Tangela, Poliwrath, Relicanth.
- **Aspear** (freeze), **Pecha** (poison), **Lum** (any status) — Lum shows up on the *stronger round-2 sets* (Sableye, Haunter, Grovyle, Arbok, Venomoth, Girafarig, Grumpig, Magneton), i.e. "this set is good enough to deserve a one-time full cure."

### Type-boosting items (the set is a STAB attacker of that type)
If a mon holds one of these, its set is built around hitting hard with that type:
- **Mystic Water** → Water (Marill, Surskit, Poliwag, Corphish, Seadra, Mantine)
- **Charcoal** → Fire (Houndour)
- **Magnet** → Electric (Flaaffy)
- **Soft Sand** → Ground (Sandshrew, Cubone, Pupitar, Piloswine, **Dugtrio**)
- **Sharp Beak** → Flying (Pidgey, Pidgeot, **Fearow**)
- **Black Belt** → Fighting (Mankey, Poliwrath, Hitmonlee, Pinsir)
- **Black Glasses** → Dark (Sableye)
- **Miracle Seed** → Grass (Shroomish)
- **Poison Barb** → Poison (Ekans, Koffing)
- **Silk Scarf** → Normal (Zigzagoon, Aipom, Raticate, Wigglytuff, Persian)
- **NeverMeltIce** → Ice (Spheal, Delibird, Cloyster)
- **Silver Powder** → Bug (Dustox)
- **TwistedSpoon** → Psychic (Ralts, Abra, Natu, Kadabra, Chimecho, Stantler)
- **Hard Stone** → Rock (Nosepass, Sudowoodo); **Metal Coat** → Steel (Lairon)
- **Specialty single-mon items:** Light Ball (Pikachu), Metal Powder (Ditto), Stick (Farfetch'd), Deep Sea Scale (Clamperl)

### Offense-shaping items
- **Scope Lens** (crit rate) → **crit-fishing physical attackers**, especially Slash/Crabhammer/Cross Chop/Aerial Ace users. Makuhita, Machop, Treecko, Totodile, Snubbull, Anorith, Beedrill, Weepinbell, Croconaw, Combusken, Gligar, Seviper, Sharpedo, Kabutops, Golbat, Primeape, Charmeleon, Pidgeot, Machoke.
- **King's Rock** (flinch) → **fast priority/multi-hit Normal attackers**. Pairs with Quick Attack, ExtremeSpeed, Fake Out, Mach Punch, Hyper Fang. Sentret, Rattata, Smeargle, Diglett, Swellow, Hitmonchan, Sneasel(r2), Mightyena(r2).
- **BrightPowder** (evasion) → frail sweepers, starters, and evasion-haxers. Skitty, Smoochum, Torchic, Bulbasaur, Chikorita, Mawile, Bayleef, Grovyle, Absol, Scyther, Quilava(r2), Bellossom(r2).
- **Choice Band** → either a pure wallbreaker (Beldum: Take Down) or the **Trick-Band disruption** set (round-2 Furret, Linoone, Kecleon, Absol).

### Pinch berries (activate at ~25% HP) — sweeper fuel
These signal an **Endure/Substitute → low-HP payoff** plan, or just a built-in late-game boost:
- **Salac Berry** (+Speed) → Taillow, Eevee, Minun, plus round-2 Endure+Flail/Reversal sets (Vigoroth, Kingler, Kabutops, Pinsir).
- **Liechi Berry** (+Attack) → Spinarak, Spearow, Doduo, Bagon, Volbeat, Illumise, Hitmontop, Furret, Scyther, Relicanth.
- **Petaya Berry** (+Sp. Atk) → Poochyena, Horsea, Remoraid, Poliwhirl, Girafarig, Plusle, Grumpig, Castform, Ninjask, Goldeen.

### Utility / niche items
- **White Herb** (resets lowered stats) → mons with self-debuffing moves, especially **Overheat** users (round-2 Solrock, Torkoal) and stat-droppers (Kirlia, Pidgeotto, Linoone).
- **Mental Herb** (cures infatuation) → Meditite, Swablu, Beautifly, Mightyena.
- **Quick Claw** (RNG priority) → **slow** mons that want to move first; heavy on round-2 sets (Luvdisc, Delcatty, Roselia, Magcargo, Gligar, Seviper, Sandslash, Seaking, Crawdaunt).
- **Lax Incense** (evasion) → the universal **filler/support default**, especially for status-spreaders, screen-setters, and the bug cocoons. If a set is "do support stuff and chip," it tends to hold this.

**Quick reverse lookup (role → item you'll usually see):**
| Role | Typical item(s) |
|---|---|
| Crit-fishing physical attacker | Scope Lens |
| Fast flincher / priority spam | King's Rock |
| Endure→Flail/Reversal sweeper | Salac / Liechi / Petaya |
| STAB special/physical nuker | matching type item |
| Glass cannon / Counter / Flail | Focus Band |
| Bulky attacker | Shell Bell, Sitrus |
| Staller / tank | Leftovers |
| Status-haxer / support | Lax Incense, BrightPowder |
| Choice wallbreaker / Trick disruptor | Choice Band |
| Overheat / stat-drop user | White Herb |

---

## 2. Moves that travel together (move synergies)

The Factory builds sets around recognizable combos. Spot one move and you can often guess the other three.

### Setup + payoff
- **Endure + pinch berry + Flail / Reversal** — the classic "boost at 1 HP and clean up." (Kingler r2: Flail/Endure/Salac; Kabutops r2: Flail/Endure/Salac; Pinsir r2: Flail/Swords Dance/Endure/Salac; Taillow: Endeavor/Quick Attack/Salac.)
- **Swords Dance + STAB + priority** (Scyther, Pinsir, Ninjask) → physical sweeper.
- **Calm Mind + dual special STAB** (Lunatone, Medicham) → special setup.
- **Dragon Dance + physical STAB + Rest/Chesto** (Dragonair, Seadra, Shelgon) → bulky dragon sweeper.
- **Bulk Up + Fighting STAB + coverage** (round-2 Primeape).
- **Growth / Sunny Day + SolarBeam + Synthesis** — sun package on Grass mons (Gloom r2, Bellossom r2, Tropius r2, Sunflora).

### Weather packages
- **Rain Dance + Water STAB** (Marill, Lotad, Surskit, Poliwag, Seadra, Mantine, Omastar r2, Huntail r2, Gorebyss r2, Magneton r2 + Thunder).
- **Sunny Day + SolarBeam / Synthesis** (Grass sun mons above).
- **Sandstorm + Rock/Ground** (Trapinch, Sandshrew, Nosepass, Sandslash, Pupitar, Camerupt, Solrock).
- **Hail + Ice** (Spheal, Delibird, Sealeo, Piloswine).

### Defensive / punish cores
- **Counter + Mirror Coat (+ Encore / Destiny Bond / Charm)** — the Wobbuffet/Wynaut/Feebas "mirror" punisher. Almost always on Focus Band.
- **Focus Band + Flail / Endeavor** — comeback-from-the-brink chip.
- **Rest + Chesto Berry** (instant-wake healing), or **Rest + Sleep Talk** (Seaking r2).

### Disruption / control
- **Trick + Choice Band + Frustration** — cripple a wall by force-feeding it a Choice item (Furret r2, Linoone r2, Kecleon r2, Absol r2 variants).
- **Trap + chip:** Mean Look / Spider Web / Block + Night Shade / Perish Song / Toxic. Perish-trap on round-2 Murkrow (Perish Song + Mean Look). Spider Web + Night Shade on Spinarak/Ariados.
- **Partial-trap + status:** Fire Spin / Whirlpool / Sand Tomb / Bind / Wrap + Toxic or chip (Trapinch, Fearow-line, Torkoal, Vulpix).
- **Knock Off / Torment / Taunt / Encore** — single-move disruptors sprinkled onto otherwise offensive sets (Shuppet, Banette, Murkrow, Mightyena, Sableye, Slakoth).

### Hax / status spreading
- **Confuse Ray + Attract / Swagger / Sing** — stack confusion + para/sleep/infatuation for full-RNG lockdown (Skitty, Azurill, Cleffa, Igglybuff, Vulpix, Smoochum).
- **Will-O-Wisp + Night Shade** — burn + fixed damage on ghosts (Shuppet, Vulpix, Banette, Kirlia).
- **Thunder Wave / Stun Spore / Glare + setup or chip** — para-then-hit.
- **Spore / Sleep Powder / Hypnosis / Sing + attack** — sleep is the strongest opener; Spore (Paras, Shroomish, Parasect r2) is the gold standard.

### Curl/roll and screen filler
- **Defense Curl + Rollout** (Seedot, Phanpy, Dunsparce, Wailmer, Voltorb) — snowball physical.
- **Light Screen / Reflect (+ support)** — durability filler on bulky support mons (Mareep, Ledian, Pineco, Paras, Bulbasaur, Lunatone).

---

## 3. The archetypes (what each rental is *for*)

Every set in the pool slots into one of these. When drafting, aim for a balanced spread — typically a sweeper or two, a tank/pivot, and a disruptor — and read your opponent's lead item to guess its archetype.

1. **Crit-fishing physical attacker** — Scope Lens + Slash/Crabhammer/Cross Chop/Aerial Ace. *Machop, Kabutops, Sharpedo, Primeape, Gligar, Croconaw.*
2. **STAB special attacker** — type item or Lax Incense + dual coverage beams (Ice Beam / Thunderbolt / Psychic / Flamethrower). *Castform r2, Magneton, Lunatone, Grumpig r2, Sealeo r2.*
3. **Priority / flincher** — King's Rock + Quick Attack / Mach Punch / ExtremeSpeed / Fake Out. *Smeargle, Swellow, Hitmonchan, Sneasel, Mightyena.*
4. **Endure-pinch sweeper** — Salac/Liechi/Petaya + Endure + Flail/Reversal (often + Swords Dance). *Kingler, Kabutops, Pinsir, Taillow, Vigoroth.*
5. **Setup sweeper** — Calm Mind / Dragon Dance / Swords Dance / Bulk Up + STAB. *Dragonair, Seadra, Scyther, Ninjask, Medicham, Lunatone.*
6. **Bulky attacker / wallbreaker** — Shell Bell or Choice Band + strong STAB + recovery/coverage. *Octillery, Omastar, Beldum, Camerupt, Lickitung r2.*
7. **Tank / staller** — Leftovers/Sitrus + Toxic/Protect/recovery + Rest. *Chansey r2, Swalot r2, Cloyster r2, Slakoth, Tangela r2.*
8. **Counter / Mirror Coat punisher** — Focus Band + Counter + Mirror Coat (+ Encore/Destiny Bond). *Wobbuffet, Wynaut, Feebas.*
9. **Trapper** — Mean Look / Spider Web / Block + Perish Song / Night Shade / Toxic. *Murkrow r2, Ariados, Spinarak.*
10. **Disruptor** — Trick+Choice Band, or Knock Off / Taunt / Torment / Encore on an attacker. *Furret r2, Linoone r2, Kecleon r2, Sableye, Banette.*
11. **Status / evasion haxer** — BrightPowder/Lax Incense + Confuse Ray + Attract/Swagger/Sing + Double Team. *Skitty, Cleffa, Vulpix, Smoochum, Pikachu.*
12. **Weather abuser** — Rain Dance / Sunny Day / Sandstorm / Hail + the matching payoff. *Mantine, Bellossom r2, Sandslash, Sealeo.*
13. **Support / pivot** — Baton Pass / Helping Hand / Follow Me / Wish / Heal Bell / screens. *Ledyba, Mawile, Togetic, Delcatty, Plusle/Minun, Furret.*
14. **Glass-cannon revenge killer** — frail, max Speed, Focus Band/pinch berry, one big move + Quick Attack. *Diglett, Electrike, Elekid, Gastly.*

---

## 4. How to use this when drafting

- **Read the lead item first.** Scope Lens = crit attacker (play around the crit), King's Rock = expect flinches, Focus Band = it may survive your KO **or** it's a Counter/Flail trap (don't blindly slam it with your physical attacker), Choice Band = it's locked once it moves (or about to Trick you), Quick Claw = a slow mon hoping to outspeed.
- **Your own picks should cover the archetypes you fear.** A Counter/Mirror Coat punisher (Wobbuffet) hoses physical and special attackers; a fast Taunt/Trick user shuts down stallers; a sleep-inducer (Spore) neutralizes setup sweepers before they start.
- **Status berries tell you a mon's weakness.** A Cheri Berry holder is para-bait-aware (so it fears your Thunder Wave less); a Persim holder expects confusion; a Chesto holder is probably running Rest and wants to be pressured before it can sleep.
- **Pinch-berry + Endure** is the most dangerous "looks weak, isn't" pattern — don't leave these at low HP expecting a free KO; they're built to flip the board with Flail/Reversal at +Speed/+Attack.
- **Trade up across rounds.** After each Factory battle you can swap for a beaten opponent's Pokémon. The higher groups (toward Group 3) carry real coverage (Earthquake, Shadow Ball, Surf, Ice Beam, Calm Mind, Dragon Dance) — prioritize swapping into those complete sets over the filler/status sets from the early pool.
