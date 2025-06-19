# -*- coding: utf-8 -*-
"""
Created on Fri Apr 25 12:20:54 2025

@author: dwg11
"""

import os
import re
import csv
from pathlib import Path

def extract_pokemon_data(file_path):
    """Extract types and abilities from a pokemon base stats file."""
    pokemon_name = os.path.basename(file_path).replace('.asm', '')
    
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Extract types
    type_match = re.search(r'db (\w+), (\w+) ; type', content)
    if type_match:
        type1 = type_match.group(1)
        type2 = type_match.group(2)
    else:
        # Handle single type Pokémon
        type_match = re.search(r'db (\w+) ; type', content)
        if type_match:
            type1 = type_match.group(1)
            type2 = "NONE"
        else:
            type1 = "UNKNOWN"
            type2 = "UNKNOWN"
    
    # Extract abilities
    abilities_match = re.search(r'abilities_for \w+, (\w+), (\w+), (\w+)', content)
    if abilities_match:
        ability1 = abilities_match.group(1)
        ability2 = abilities_match.group(2)
        ability3 = abilities_match.group(3)
    else:
        # Handle Pokémon with fewer abilities
        abilities_match = re.search(r'abilities_for \w+, (\w+), (\w+)', content)
        if abilities_match:
            ability1 = abilities_match.group(1)
            ability2 = abilities_match.group(2)
            ability3 = "NONE"
        else:
            abilities_match = re.search(r'abilities_for \w+, (\w+)', content)
            if abilities_match:
                ability1 = abilities_match.group(1)
                ability2 = "NONE"
                ability3 = "NONE"
            else:
                ability1 = "UNKNOWN"
                ability2 = "UNKNOWN"
                ability3 = "UNKNOWN"
    
    return [pokemon_name, type1, type2, ability1, ability2, ability3]

def generate_pokemon_csv(base_stats_dir, output_file):
    """Generate CSV file with pokemon data."""
    pokemon_data = []
    
    # Get all .asm files in the directory
    for file_name in os.listdir(base_stats_dir):
        if file_name.endswith('.asm'):
            file_path = os.path.join(base_stats_dir, file_name)
            pokemon_data.append(extract_pokemon_data(file_path))
    
    # Sort alphabetically by pokemon name
    pokemon_data.sort(key=lambda x: x[0])
    
    # Write to CSV
    with open(output_file, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Pokemon', 'Type1', 'Type2', 'Ability1', 'Ability2', 'Ability3'])
        writer.writerows(pokemon_data)
    
    print(f"CSV file created successfully: {output_file}")

if __name__ == "__main__":
    # Directory containing base stats files
    base_stats_dir = "data/pokemon/base_stats"
    
    # Output CSV file
    output_file = "pokemon_data.csv"
    
    # Check if directory exists
    if not os.path.exists(base_stats_dir):
        print(f"Error: Directory '{base_stats_dir}' not found.")
    else:
        generate_pokemon_csv(base_stats_dir, output_file)