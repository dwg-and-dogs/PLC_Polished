#!/usr/bin/env python3
"""
Pokémon Trainer Guide Generator
================================
Reads assembly source files and produces a landscape-PDF trainer guide.

Usage:
    python generate_guide.py [easy|normal|expert]

Output:
    trainer_guide_<mode>.pdf

Requirements:
    pip install reportlab
"""

import re
import sys
from pathlib import Path

try:
    from reportlab.lib import colors
    from reportlab.lib.pagesizes import landscape, letter
    from reportlab.lib.units import mm
    from reportlab.lib.styles import ParagraphStyle
    from reportlab.lib.enums import TA_CENTER, TA_LEFT
    from reportlab.platypus import (
        SimpleDocTemplate, Table, TableStyle,
        Paragraph, Spacer, KeepTogether,
    )
except ImportError:
    print("ERROR: reportlab is required.\n  pip install reportlab", file=sys.stderr)
    sys.exit(1)


# ═══════════════════════════════════════════════════════════════════════════════
#  Configuration — edit paths here if your layout differs
# ═══════════════════════════════════════════════════════════════════════════════

MODE = sys.argv[1].lower() if len(sys.argv) > 1 else "normal"
if MODE not in ("easy", "normal", "expert"):
    print(f"Unknown mode '{MODE}'. Choose: easy | normal | expert", file=sys.stderr)
    sys.exit(1)

MOVES_PATH   = Path("data/moves/moves.asm")
PARTIES_PATH = Path("data/trainers/parties.asm")
OUTPUT_PATH  = Path(f"trainer_guide_{MODE}.pdf")

ORDER_PATH = Path(f"trainer_parties_{MODE}.txt")


# ═══════════════════════════════════════════════════════════════════════════════
#  Colours
# ═══════════════════════════════════════════════════════════════════════════════

def _c(h: str) -> colors.Color:
    """#RRGGBB → reportlab Color."""
    h = h.lstrip("#")
    return colors.Color(int(h[0:2], 16) / 255,
                        int(h[2:4], 16) / 255,
                        int(h[4:6], 16) / 255)


# Bulbapedia Generation VI type colours
TYPE_COLORS: dict = {
    "NORMAL":   _c("#A8A878"), "FIGHTING": _c("#C03028"),
    "FLYING":   _c("#A890F0"), "POISON":   _c("#A040A0"),
    "GROUND":   _c("#E0C068"), "ROCK":     _c("#B8A038"),
    "BUG":      _c("#A8B820"), "GHOST":    _c("#705898"),
    "STEEL":    _c("#B8B8D0"), "FIRE":     _c("#F08030"),
    "WATER":    _c("#6890F0"), "GRASS":    _c("#78C850"),
    "ELECTRIC": _c("#F8D030"), "PSYCHIC":  _c("#F85888"),
    "ICE":      _c("#98D8D8"), "DRAGON":   _c("#7038F8"),
    "DARK":     _c("#705848"), "FAIRY":    _c("#EE99AC"),
}

DARK_BG    = _c("#212840")   # species / level header
DARKER_BG  = _c("#181E38")   # nickname row
HEADER_BG  = _c("#2A3468")   # trainer name banner
ITEM_BG    = _c("#D4A520")   # warm gold — held item
NO_ITEM_BG = _c("#BBBBBB")   # grey — no item
EMPTY_BG   = _c("#111825")   # empty card slot


def type_color(name: str) -> colors.Color:
    return TYPE_COLORS.get(name.upper(), TYPE_COLORS["NORMAL"])


def fg_for(bg: colors.Color) -> colors.Color:
    """White text on dark backgrounds, black on light."""
    lum = 0.299 * bg.red + 0.587 * bg.green + 0.114 * bg.blue
    return colors.white if lum < 0.58 else colors.black


# ═══════════════════════════════════════════════════════════════════════════════
#  Parsing helpers
# ═══════════════════════════════════════════════════════════════════════════════

def strip_comment(line: str) -> str:
    return re.sub(r"\s*;.*$", "", line).strip()


def clean_asm_str(s: str) -> str:
    """Remove surrounding quotes and trailing @ from assembly string literals.
    Special token names like <RIVAL> are converted to title case (-> 'Rival')."""
    result = s.strip().strip('"').rstrip("@").strip()
    m = re.match(r"^<(\w+)>$", result)
    if m:
        result = m.group(1).title()
    return result


def title_case(s: str) -> str:
    """AERIAL_ACE → Aerial Ace"""
    return s.replace("_", " ").title()


def hp_type_from_dvs(dvs: str | None) -> str:
    """DVS_HP_FLYING → FLYING.  Falls back to NORMAL."""
    if not dvs:
        return "NORMAL"
    m = re.match(r"DVS_HP_(\w+)", dvs)
    return m.group(1) if m else "NORMAL"


# ═══════════════════════════════════════════════════════════════════════════════
#  File parsers
# ═══════════════════════════════════════════════════════════════════════════════

def parse_moves(path: Path) -> dict:
    """
    Returns {MOVE_NAME: TYPE_NAME}.

    Matches lines of the form:
        move MOVE_NAME, EFFECT_xxx, power, TYPE, accuracy, pp, chance, category
    """
    result: dict = {}
    pattern = re.compile(
        r"^\s*move\s+(\w+)\s*,\s*\w+\s*,\s*\w+\s*,\s*(\w+)\s*,",
        re.MULTILINE,
    )
    for m in pattern.finditer(path.read_text()):
        result[m.group(1)] = m.group(2)
    return result


def parse_parties(path: Path) -> dict:
    """
    Returns {TRAINER_KEY: [party, ...]}

    TRAINER_KEY is the group label uppercased with "Group" removed
    (e.g. "FalknerGroup" → "FALKNER").

    Each party dict:
        {
            'name':    str,               # e.g. "Falkner"
            'pokemon': [pokemon_dict, ...]
        }

    Each pokemon_dict:
        {
            'level':    int,
            'species':  str,              # e.g. "MANTINE"
            'item':     str | None,       # None when NO_ITEM
            'nickname': str,              # may be empty
            'moves':    [str, ...],       # up to 4, NO_MOVE filtered out
            'hp_type':  str,              # type for Hidden Power
        }

    Assumptions (matching the provided assembly format):
      • Trainer entry format uses all four TRAINERTYPE flags:
            TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
        so every pokemon line is:
            db LEVEL, SPECIES, ITEM_OR_NO_ITEM, DVS_CONSTANT, "Nickname@"
        followed by:
            db MOVE1, MOVE2, MOVE3, MOVE4
      • Entries are terminated with  db -1
      • Groups are delimited by labels of the form  WordGroup:
    """
    text = path.read_text()
    trainers: dict = {}

    # Split into group sections on labels like "FalknerGroup:"
    # re.split with a capturing group returns [pre, name1, body1, name2, body2, ...]
    parts = re.split(r"^(\w+Group):\s*$", text, flags=re.MULTILINE)

    for i in range(1, len(parts) - 1, 2):
        key  = parts[i].replace("Group", "").upper()
        body = parts[i + 1]
        parties: list = []

        # Each trainer entry ends with  db -1
        for raw_entry in re.split(r"\bdb\s+-1\b[^\n]*", body):
            lines = [strip_comment(ln) for ln in raw_entry.splitlines()]
            lines = [ln for ln in lines if ln]
            if not lines:
                continue

            name:  str  = None   # type: ignore[assignment]
            flags: str  = ""
            pokes: list = []
            j = 0

            while j < len(lines):
                line = lines[j]

                # ── (1) Trainer name: first  db "Name@"
                if name is None:
                    m = re.match(r'^db\s+"([^"]+)"', line)
                    if m:
                        name = clean_asm_str(m.group(1))
                    j += 1
                    continue

                # ── (2) Flags line
                if not flags:
                    if "TRAINERTYPE" in line:
                        flags = line
                    j += 1
                    continue

                # ── (3) Pokemon line
                # Only LEVEL and SPECIES are always present. Everything else
                # depends on TRAINERTYPE_* flags and varies widely:
                #
                #   TRAINERTYPE_NORMAL / bare TRAINERTYPE_MOVES
                #       db LEVEL, SPECIES
                #   TRAINERTYPE_ITEM | TRAINERTYPE_MOVES (no DVS)
                #       db LEVEL, SPECIES, ITEM
                #   TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
                #       db LEVEL, SPECIES, ITEM, DVS_CONST, "NICK@"
                #   TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
                #       db LEVEL, SPECIES, ITEM, EVS_NUMBER
                #   TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
                #       db LEVEL, SPECIES, ITEM, ABILITY_X | NAT_X, GENDER[;, extra]
                #       (the ; makes everything after it a comment, already stripped)
                #
                # Strategy: require only LEVEL + SPECIES, then parse the tail
                # token-by-token guided by the flags present.
                m = re.match(r"^db\s+(\d+)\s*,\s*(\w+)(.*)", line)
                if m:
                    level   = int(m.group(1))
                    species = m.group(2)
                    tail    = m.group(3)   # everything after species

                    # Split tail on commas; tokens may contain spaces
                    # (e.g. "ABILITY_1 | NAT_NEUTRAL") — that is fine, we only
                    # care about the item slot and any quoted nickname / DVS_HP_.
                    tokens = [t.strip() for t in tail.split(",") if t.strip()]

                    item     = None
                    nickname = ""
                    hp_type  = "NORMAL"
                    tok_idx  = 0

                    # Item is always the first tail token when the flag is set
                    if "TRAINERTYPE_ITEM" in flags and tok_idx < len(tokens):
                        raw_item = tokens[tok_idx]
                        item     = None if raw_item == "NO_ITEM" else raw_item
                        tok_idx += 1

                    # Remaining tokens: scan for quoted nickname and DVS_HP_ type
                    for tok in tokens[tok_idx:]:
                        if tok.startswith('"'):
                            nickname = clean_asm_str(tok)
                        elif re.match(r"DVS_HP_\w+", tok):
                            hp_type = tok.split("DVS_HP_", 1)[1]

                    moves: list = []

                    # Look ahead for moves line (starts with db then a capital
                    # letter — pokemon lines always start with a digit level)
                    if "TRAINERTYPE_MOVES" in flags and j + 1 < len(lines):
                        nxt = lines[j + 1]
                        if re.match(r"^db\s+[A-Z_]", nxt):
                            raw_moves = re.match(r"^db\s+(.*)", nxt).group(1).split(",")
                            moves = [
                                mv.strip() for mv in raw_moves
                                if mv.strip() and mv.strip() != "NO_MOVE"
                            ]
                            j += 1  # consume the moves line

                    pokes.append({
                        "level":    level,
                        "species":  species,
                        "item":     item,
                        "nickname": nickname,
                        "moves":    moves,
                        "hp_type":  hp_type,
                    })

                j += 1

            if name and pokes:
                parties.append({"name": name, "pokemon": pokes})

        if parties:
            trainers[key] = parties

    return trainers


def parse_order(path: Path) -> list:
    """
    Returns [(TRAINER_KEY, 0-based-party-index), ...]

    Order files contain lines like:
        FALKNER, 2
    where the number is 1-based (1 = easy entry, 2 = standard, 3 = expert).
    """
    order: list = []
    for line in path.read_text().splitlines():
        line = strip_comment(line).strip()
        m = re.match(r"(\w+)\s*,\s*(\d+)", line)
        if m:
            order.append((m.group(1).upper(), int(m.group(2)) - 1))
    return order


# ═══════════════════════════════════════════════════════════════════════════════
#  PDF layout
# ═══════════════════════════════════════════════════════════════════════════════

CARD_W = 37 * mm      # width of one Pokémon card column
FONT   = "Helvetica"
FONT_B = "Helvetica-Bold"
FONT_I = "Helvetica-Oblique"


def _para(text: str, font: str, size: float,
          fg: colors.Color, align=TA_CENTER) -> Paragraph:
    return Paragraph(text, ParagraphStyle(
        "p",
        fontName=font,
        fontSize=size,
        textColor=fg,
        alignment=align,
        leading=size + 2.5,
    ))


# ─── One Pokémon card ─────────────────────────────────────────────────────────

def pokemon_card(poke: dict, move_types: dict) -> Table:
    """
    Returns a single-column Table representing one Pokémon.

    Row layout (7 rows total so all cards are the same height):
        0  Species name + level       dark navy
        1  Nickname                   darker navy
        2  Held item (or —)           gold / grey
        3  Move 1                     type colour
        4  Move 2                     type colour
        5  Move 3                     type colour
        6  Move 4                     type colour
    """
    rows:   list = []
    styles: list = [
        ("ALIGN",         (0, 0), (-1, -1), "CENTER"),
        ("VALIGN",        (0, 0), (-1, -1), "MIDDLE"),
        ("TOPPADDING",    (0, 0), (-1, -1), 2),
        ("BOTTOMPADDING", (0, 0), (-1, -1), 2),
        ("LEFTPADDING",   (0, 0), (-1, -1), 3),
        ("RIGHTPADDING",  (0, 0), (-1, -1), 3),
        ("BOX",           (0, 0), (-1, -1), 0.6, _c("#3D4D80")),
        ("LINEBELOW",     (0, 0), (0, -2),  0.3, _c("#3D4D80")),
    ]

    def add_row(para: Paragraph, bg: colors.Color) -> None:
        idx = len(rows)
        rows.append([para])
        styles.append(("BACKGROUND", (0, idx), (0, idx), bg))

    # Row 0 — species + level
    add_row(
        _para(f"{title_case(poke['species'])}  Lv.{poke['level']}",
              FONT_B, 7, colors.white),
        DARK_BG,
    )

    # Row 1 — nickname
    add_row(
        _para(poke["nickname"] or "", FONT_I, 5.5,
              colors.Color(0.72, 0.72, 0.72)),
        DARKER_BG,
    )

    # Row 2 — held item
    item = poke["item"]
    item_bg = ITEM_BG if item else NO_ITEM_BG
    add_row(
        _para(title_case(item) if item else "—", FONT, 6, fg_for(item_bg)),
        item_bg,
    )

    # Rows 3-6 — moves
    for move in poke["moves"][:4]:
        # HIDDEN_POWER's type comes from the DVS constant, not the moves table
        if move == "HIDDEN_POWER":
            mv_type = poke.get("hp_type", "NORMAL")
        else:
            mv_type = move_types.get(move, "NORMAL")
        mv_bg = type_color(mv_type)
        add_row(_para(title_case(move), FONT, 6, fg_for(mv_bg)), mv_bg)

    # Pad to exactly 7 rows so cards align across a row
    while len(rows) < 7:
        add_row(_para("", FONT, 6, colors.black), EMPTY_BG)

    t = Table(rows, colWidths=[CARD_W])
    t.setStyle(TableStyle(styles))
    return t


def empty_card() -> Table:
    """Filler card for trainers with fewer than 6 Pokémon."""
    rows = [[""] for _ in range(7)]
    t = Table(rows, colWidths=[CARD_W])
    t.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, -1), EMPTY_BG),
        ("BOX",        (0, 0), (-1, -1), 0.3, _c("#252E50")),
    ]))
    return t


# ─── Full document ────────────────────────────────────────────────────────────

def generate_pdf(output_path: Path, trainers: dict,
                 order: list, move_types: dict) -> None:

    doc = SimpleDocTemplate(
        str(output_path),
        pagesize=landscape(letter),
        leftMargin=12 * mm, rightMargin=12 * mm,
        topMargin=12 * mm,  bottomMargin=12 * mm,
    )

    total_card_w = 6 * CARD_W   # ≈ 222 mm — fits comfortably on landscape Letter
    story: list  = []

    # ── Page title ────────────────────────────────────────────────────────────
    title_tbl = Table(
        [[_para(f"Pokémon Trainer Guide  ·  {MODE.title()} Mode",
                FONT_B, 15, colors.white)]],
        colWidths=[total_card_w],
    )
    title_tbl.setStyle(TableStyle([
        ("BACKGROUND",    (0, 0), (-1, -1), HEADER_BG),
        ("TOPPADDING",    (0, 0), (-1, -1), 6),
        ("BOTTOMPADDING", (0, 0), (-1, -1), 6),
    ]))
    story.append(title_tbl)
    story.append(Spacer(1, 5 * mm))

    # ── One block per trainer ─────────────────────────────────────────────────
    for trainer_key, party_idx in order:
        if trainer_key not in trainers:
            print(f"  ⚠  '{trainer_key}' not found in parties.asm — skipping",
                  file=sys.stderr)
            continue

        parties   = trainers[trainer_key]
        party_idx = min(party_idx, len(parties) - 1)
        party     = parties[party_idx]

        # Trainer name banner
        name_tbl = Table(
            [[_para(party["name"], FONT_B, 12, colors.white, align=TA_LEFT)]],
            colWidths=[total_card_w],
        )
        name_tbl.setStyle(TableStyle([
            ("BACKGROUND",    (0, 0), (-1, -1), HEADER_BG),
            ("TOPPADDING",    (0, 0), (-1, -1), 4),
            ("BOTTOMPADDING", (0, 0), (-1, -1), 4),
            ("LEFTPADDING",   (0, 0), (-1, -1), 8),
        ]))

        # Pokémon cards (pad to 6 with empty slots)
        cards = [pokemon_card(p, move_types) for p in party["pokemon"][:6]]
        while len(cards) < 6:
            cards.append(empty_card())

        cards_tbl = Table([cards], colWidths=[CARD_W] * 6)
        cards_tbl.setStyle(TableStyle([
            ("ALIGN",         (0, 0), (-1, -1), "CENTER"),
            ("VALIGN",        (0, 0), (-1, -1), "TOP"),
            ("TOPPADDING",    (0, 0), (-1, -1), 0),
            ("BOTTOMPADDING", (0, 0), (-1, -1), 0),
            ("LEFTPADDING",   (0, 0), (-1, -1), 1),
            ("RIGHTPADDING",  (0, 0), (-1, -1), 1),
        ]))

        # Keep the banner + cards on the same page if possible
        story.append(KeepTogether([
            name_tbl,
            cards_tbl,
            Spacer(1, 6 * mm),
        ]))

    doc.build(story)
    print(f"✓  Written to  {output_path}")


# ═══════════════════════════════════════════════════════════════════════════════
#  Entry point
# ═══════════════════════════════════════════════════════════════════════════════

if __name__ == "__main__":
    print(f"Mode : {MODE}")

    missing = [p for p in (MOVES_PATH, PARTIES_PATH, ORDER_PATH) if not p.exists()]
    if missing:
        for p in missing:
            print(f"ERROR: file not found: {p}", file=sys.stderr)
        sys.exit(1)

    print(f"  Moves   : {MOVES_PATH}")
    print(f"  Parties : {PARTIES_PATH}")
    print(f"  Order   : {ORDER_PATH}")

    move_types = parse_moves(MOVES_PATH)
    print(f"  Loaded {len(move_types)} moves")

    trainers = parse_parties(PARTIES_PATH)
    total_parties = sum(len(v) for v in trainers.values())
    print(f"  Loaded {total_parties} parties across {len(trainers)} trainers: "
          f"{sorted(trainers.keys())}")

    order = parse_order(ORDER_PATH)
    print(f"  Order  : {[(t, i + 1) for t, i in order]}")

    generate_pdf(OUTPUT_PATH, trainers, order, move_types)