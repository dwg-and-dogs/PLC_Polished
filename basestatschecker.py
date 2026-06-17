# -*- coding: utf-8 -*-
"""
Created on Wed Jun 17 09:52:20 2026

@author: dwg11
"""

#!/usr/bin/env python3
"""
Validate Pokémon ASM files for naming consistency.

Checks that:
1. The pokemon name in the dimensions path matches the file's directory name
2. The pokemon name in the abilities_for macro matches the file's directory name
"""

import re
import sys
from pathlib import Path


def extract_pokemon_name_from_path(file_path):
    """Extract pokemon name from the file path structure."""
    # Expected: data/pokemon/base_stats/<pokemon_name>.asm
    parts = file_path.parts
    if len(parts) >= 4 and parts[-2] == "base_stats":
        return parts[-1].replace(".asm", "").lower()
    return None


def extract_dimensions_pokemon(content):
    """Extract pokemon name from INCBIN dimensions line."""
    match = re.search(r'INCBIN\s+"gfx/pokemon/([^/]+)/front\.dimensions"', content)
    if match:
        return match.group(1).lower()
    return None


def extract_abilities_pokemon(content):
    """Extract pokemon name from abilities_for line."""
    match = re.search(r'abilities_for\s+([A-Z_]+)\s*,', content)
    if match:
        return match.group(1).lower()
    return None


def check_pokemon_file(file_path):
    """Check a single ASM file for inconsistencies."""
    errors = []
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        return [f"Error reading file: {e}"]
    
    # Get the pokemon name from the directory structure
    dir_pokemon = extract_pokemon_name_from_path(file_path)
    if not dir_pokemon:
        return ["Could not extract pokemon name from path"]
    
    # Check dimensions line
    dims_pokemon = extract_dimensions_pokemon(content)
    if dims_pokemon is None:
        errors.append("Missing INCBIN dimensions line")
    elif dims_pokemon != dir_pokemon:
        errors.append(
            f"Dimensions mismatch: found '{dims_pokemon}' but directory is '{dir_pokemon}'"
        )
    
    # Check abilities line
    abilities_pokemon = extract_abilities_pokemon(content)
    if abilities_pokemon is None:
        errors.append("Missing abilities_for line")
    elif abilities_pokemon != dir_pokemon:
        errors.append(
            f"Abilities mismatch: found '{abilities_pokemon}' but directory is '{dir_pokemon}'"
        )
    
    return errors


def main():
    """Main function to scan all pokemon ASM files."""
    base_path = Path("data/pokemon/base_stats")
    
    if not base_path.exists():
        print(f"Error: {base_path} not found")
        sys.exit(1)
    
    asm_files = sorted(base_path.glob("*.asm"))
    
    if not asm_files:
        print(f"No ASM files found in {base_path}")
        sys.exit(0)
    
    print(f"Checking {len(asm_files)} Pokémon ASM files...\n")
    
    issues_found = False
    
    for file_path in asm_files:
        errors = check_pokemon_file(file_path)
        
        if errors:
            issues_found = True
            pokemon_name = file_path.stem
            print(f"❌ {pokemon_name}.asm")
            for error in errors:
                print(f"   • {error}")
            print()
    
    if not issues_found:
        print("✅ All files passed validation!")
        sys.exit(0)
    else:
        print("⚠️  Some issues were found")
        sys.exit(1)


if __name__ == "__main__":
    main()