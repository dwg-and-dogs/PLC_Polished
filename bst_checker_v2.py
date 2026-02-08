# -*- coding: utf-8 -*-
"""
Created on Sat Feb  7 15:49:55 2026

@author: dwg11
"""

#!/usr/bin/env python3
"""
Compare Pokemon base stats from .asm files with Excel spreadsheet

Usage:
    python compare_base_stats.py [BASE_STATS_DIR] [EXCEL_FILE] [BASE_STATS_ASM]

If no arguments provided, uses:
    - BASE_STATS_DIR: data/pokemon/base_stats/
    - EXCEL_FILE: all_mon_bst.xlsx
    - BASE_STATS_ASM: base_stats.asm
"""

import re
import sys
import pandas as pd
from pathlib import Path


def extract_pokemon_files(base_stats_file):
    """Extract list of pokemon filenames from base_stats.asm"""
    pokemon_files = []
    
    with open(base_stats_file, 'r') as f:
        for line in f:
            # Look for lines like: INCLUDE "data/pokemon/base_stats/abra.asm"
            match = re.search(r'INCLUDE "data/pokemon/base_stats/([^"]+\.asm)"', line)
            if match:
                pokemon_files.append(match.group(1))
    
    return pokemon_files


def parse_asm_file(asm_file):
    """Parse a .asm file and extract base stats"""
    try:
        with open(asm_file, 'r') as f:
            first_line = f.readline().strip()
            
        # Parse line like: db  25,  20,  15,  90, 105,  55 ; 310 BST
        match = re.search(r'db\s+([\d,\s]+);\s*(\d+)\s+BST', first_line)
        if not match:
            return None
        
        # Extract stats
        stats_str = match.group(1)
        bst_from_comment = int(match.group(2))
        
        # Split and clean stats
        stats = [int(s.strip()) for s in stats_str.split(',')]
        
        if len(stats) != 6:
            return None
        
        hp, attack, defense, speed, sp_atk, sp_def = stats
        calculated_bst = sum(stats)
        
        return {
            'HP': hp,
            'Attack': attack,
            'Defense': defense,
            'Speed': speed,
            'Sp. Atk': sp_atk,
            'Sp. Def': sp_def,
            'BST_Comment': bst_from_comment,
            'BST_Calculated': calculated_bst
        }
    except Exception as e:
        print(f"Error parsing {asm_file}: {e}")
        return None


def get_pokemon_name_from_filename(filename):
    """Convert filename to Pokemon name and form for matching with Excel"""
    # Remove .asm extension
    name = filename.replace('.asm', '')
    
    # Handle special cases with underscores (regional forms, etc.)
    # Examples: arcanine_hisuian -> ('Arcanine', 'Hisuian Arcanine')
    #           raichu_alolan -> ('Raichu', 'Alolan Raichu')
    #           porygon_z -> ('Porygon-Z', '')
    
    if '_' in name:
        parts = name.split('_')
        base_name = parts[0].capitalize()
        
        # Handle special cases
        if name == 'porygon_z':
            return ('Porygon-Z', '')
        elif name == 'ho_oh':
            return ('Ho-Oh', '')
        elif len(parts) == 2 and parts[1] in ['alolan', 'galarian', 'hisuian']:
            # Format: Hisuian Arcanine, Alolan Raichu, etc.
            form_name = parts[1].capitalize()
            return (base_name, f"{form_name} {base_name}")
        elif len(parts) >= 2:
            # Other forms like 'bloodmoon', 'immortal', 'ancestor'
            form_text = ' '.join(parts[1:]).capitalize()
            return (base_name, f"{base_name} {form_text}")
    
    return (name.capitalize(), '')


def main():
    # Parse command line arguments
    if len(sys.argv) > 1:
        base_stats_dir = Path(sys.argv[1])
        excel_file = Path(sys.argv[2]) if len(sys.argv) > 2 else Path('all_mon_bst.xlsx')
        base_stats_file = Path(sys.argv[3]) if len(sys.argv) > 3 else Path('base_stats.asm')
    else:
        # Default paths
        base_stats_dir = Path('data/pokemon/base_stats')
        excel_file = Path('all_mon_bst.xlsx')
        base_stats_file = Path('data/pokemon/base_stats.asm')
    
    # Check if files exist
    if not excel_file.exists():
        print(f"❌ Error: Excel file not found: {excel_file}")
        print("\nUsage: python compare_base_stats.py [BASE_STATS_DIR] [EXCEL_FILE] [BASE_STATS_ASM]")
        return
    
    if not base_stats_file.exists():
        print(f"❌ Error: Base stats file not found: {base_stats_file}")
        print("\nUsage: python compare_base_stats.py [BASE_STATS_DIR] [EXCEL_FILE] [BASE_STATS_ASM]")
        return
    
    # Load Excel file
    print("Loading Excel file...")
    df = pd.read_excel(excel_file)
    
    # Create a lookup dictionary for faster access
    # Key: (Name, Form), Value: row data
    excel_lookup = {}
    for idx, row in df.iterrows():
        name = row['Name'].strip() if pd.notna(row['Name']) else ''
        form = row['Form'].strip() if pd.notna(row['Form']) else ''
        
        # Create entries for both with and without form
        excel_lookup[(name, form)] = row
        # Also create entry with just name if no form
        if not form:
            excel_lookup[(name, '')] = row
    
    # Extract pokemon files from base_stats.asm
    print("Extracting Pokemon file list...")
    pokemon_files = extract_pokemon_files(base_stats_file)
    print(f"Found {len(pokemon_files)} Pokemon files to check\n")
    
    # Track results
    inconsistencies = []
    not_found = []
    matches = 0
    
    # Process each Pokemon file
    for poke_file in pokemon_files:
        asm_path = base_stats_dir / poke_file
        
        # Check if file exists in uploads
        if not asm_path.exists():
            continue  # Silently skip missing files
        
        # Parse the .asm file
        asm_stats = parse_asm_file(asm_path)
        if not asm_stats:
            print(f"⚠️  Could not parse: {poke_file}")
            continue
        
        # Get Pokemon name and form for lookup
        pokemon_name, form = get_pokemon_name_from_filename(poke_file)
        
        # Look up in Excel - try with form first, then without
        excel_row = None
        lookup_key_used = None
        
        if (pokemon_name, form) in excel_lookup:
            excel_row = excel_lookup[(pokemon_name, form)]
            lookup_key_used = f"{pokemon_name} ({form})" if form else pokemon_name
        elif (pokemon_name, '') in excel_lookup:
            excel_row = excel_lookup[(pokemon_name, '')]
            lookup_key_used = pokemon_name
        
        if excel_row is None:
            not_found.append({
                'file': poke_file,
                'name': pokemon_name,
                'form': form,
                'asm_bst': asm_stats['BST_Calculated']
            })
            continue
        
        # Compare stats
        discrepancies = []
        
        # Check each stat
        if asm_stats['HP'] != excel_row['HP']:
            discrepancies.append(f"HP: {asm_stats['HP']} (asm) vs {excel_row['HP']} (excel)")
        if asm_stats['Attack'] != excel_row['Attack']:
            discrepancies.append(f"Attack: {asm_stats['Attack']} (asm) vs {excel_row['Attack']} (excel)")
        if asm_stats['Defense'] != excel_row['Defense']:
            discrepancies.append(f"Defense: {asm_stats['Defense']} (asm) vs {excel_row['Defense']} (excel)")
        if asm_stats['Speed'] != excel_row['Speed']:
            discrepancies.append(f"Speed: {asm_stats['Speed']} (asm) vs {excel_row['Speed']} (excel)")
        if asm_stats['Sp. Atk'] != excel_row['Sp. Atk']:
            discrepancies.append(f"Sp. Atk: {asm_stats['Sp. Atk']} (asm) vs {excel_row['Sp. Atk']} (excel)")
        if asm_stats['Sp. Def'] != excel_row['Sp. Def']:
            discrepancies.append(f"Sp. Def: {asm_stats['Sp. Def']} (asm) vs {excel_row['Sp. Def']} (excel)")
        if asm_stats['BST_Calculated'] != excel_row['Total']:
            discrepancies.append(f"BST: {asm_stats['BST_Calculated']} (asm) vs {excel_row['Total']} (excel)")
        
        # Check if BST comment matches calculated
        if asm_stats['BST_Comment'] != asm_stats['BST_Calculated']:
            discrepancies.append(f"BST comment mismatch: {asm_stats['BST_Comment']} (comment) vs {asm_stats['BST_Calculated']} (calculated)")
        
        if discrepancies:
            inconsistencies.append({
                'file': poke_file,
                'name': lookup_key_used,
                'issues': discrepancies
            })
        else:
            matches += 1
    
    # Print results
    print("\n" + "="*80)
    print("COMPARISON RESULTS")
    print("="*80)
    print(f"\n✓ Matches: {matches}")
    print(f"✗ Inconsistencies: {len(inconsistencies)}")
    print(f"? Not found in Excel: {len(not_found)}")
    
    if inconsistencies:
        print("\n" + "="*80)
        print("INCONSISTENCIES FOUND:")
        print("="*80)
        for item in inconsistencies:
            print(f"\n🔴 {item['name']} ({item['file']})")
            for issue in item['issues']:
                print(f"   - {issue}")
    
    if not_found:
        print("\n" + "="*80)
        print("NOT FOUND IN EXCEL:")
        print("="*80)
        for item in not_found:
            name_display = f"{item['name']} - {item['form']}" if item['form'] else item['name']
            print(f"   - {name_display} ({item['file']}) - ASM BST: {item['asm_bst']}")
    
    print("\n" + "="*80)
    print("DONE")
    print("="*80)


if __name__ == '__main__':
    main()