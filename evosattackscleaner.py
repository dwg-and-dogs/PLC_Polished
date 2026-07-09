"""
Remove comments (';' and everything after) and any resulting
'db 0' lines from a .asm file, writing the result to a NEW file.

Run in an IPython console, e.g.:
    %run clean_asm.py

Just edit INPUT_PATH / OUTPUT_PATH below if needed.
"""

from pathlib import Path

INPUT_PATH = "data/pokemon/evos_attacks.asm"
OUTPUT_PATH = "data/pokemon/evos_attacks_clean.txt"


def clean_line(line: str):
    # Strip trailing newline for processing
    stripped_line = line.rstrip("\n")

    # Remove comment: everything from ';' onward
    if ";" in stripped_line:
        stripped_line = stripped_line.split(";", 1)[0]

    # Remove trailing whitespace left behind after comment removal
    stripped_line = stripped_line.rstrip()

    # Drop lines that are now just "db 0" (ignoring leading whitespace/tabs)
    if stripped_line.strip() == "db 0":
        return None

    # Drop fully blank lines that resulted from comment removal
    if stripped_line.strip() == "":
        return None

    return stripped_line


in_path = Path(INPUT_PATH)
out_path = Path(OUTPUT_PATH)

with in_path.open("r") as f:
    lines = f.readlines()

cleaned = []
for line in lines:
    result = clean_line(line)
    if result is not None:
        cleaned.append(result)

with out_path.open("w") as f:
    f.write("\n".join(cleaned) + "\n")

print(f"Wrote cleaned file to: {out_path}")