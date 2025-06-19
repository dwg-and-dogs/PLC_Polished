# -*- coding: utf-8 -*-
"""
Created on Wed Apr 23 14:23:39 2025

@author: dwg11
"""

import os
import re
import csv

def create_ability_compatibility_csv(ability_constants_file, pokemon_dir, output_csv_path):
    """
    Generates a CSV file indicating ability compatibility for Pokémon.

    Args:
        ability_constants_file (str): Path to the ability_constants.asm file.
        pokemon_dir (str): Path to the directory containing the Pokémon .asm files.
        output_csv_path (str): Path to save the generated CSV file.
    """

    # 1. Extract Ability Names
    ability_names = []
    with open(ability_constants_file, 'r') as f:
        for line in f:
            match = re.search(r'const\s+(\w+)', line)
            if match:
                ability_names.append(match.group(1))

    # 2. List Pokémon Files
    pokemon_files = [f for f in os.listdir(pokemon_dir) if f.endswith('.asm')]

    # 3. Parse Pokémon Files and Create Data
    data = []
    for pokemon_file in pokemon_files:
        pokemon_name = os.path.splitext(pokemon_file)[0]
        pokemon_path = os.path.join(pokemon_dir, pokemon_file)
        pokemon_abilities = []
        with open(pokemon_path, 'r') as f:
            for line in f:
                if 'abilities_for' in line:
                    pokemon_abilities = re.findall(r'\b\w+\b', line)
                    pokemon_abilities = pokemon_abilities[1:] #remove 'abilities_for'
                    break  # Assuming only one 'abilities_for' line per file
        
        row = [0] * len(ability_names)
        for i, ability in enumerate(ability_names):
            if ability in pokemon_abilities:
                row[i] = 1
            elif ability not in pokemon_abilities and re.search(r'\b' + ability + r'\b', line):
                print(f"Unexpected value {ability} in {pokemon_name}.asm")

        data.append([pokemon_name] + row)

    # 4. Create the CSV
    with open(output_csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Pokemon'] + ability_names)  # Header row
        writer.writerows(data)

if __name__ == "__main__":
    ability_constants_file = 'constants/ability_constants.asm'  # Replace with the actual path if needed
    pokemon_dir = 'data/pokemon/base_stats'  # Replace with the actual path if needed
    output_csv_path = 'ability_compatibility.csv'

    create_ability_compatibility_csv(ability_constants_file, pokemon_dir, output_csv_path)
    print(f"CSV file '{output_csv_path}' created successfully.")