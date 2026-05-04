# -*- coding: utf-8 -*-
"""
Created on Fri May  1 09:19:35 2026

@author: dwg11
"""
import re

def generate_evolution_methods_with_levels(input_path, output_path):
    # Matches the header label
    label_pattern = re.compile(r'^([A-Za-z0-9_]+EvosAttacks:)', re.IGNORECASE)
    # Matches an evolution line and captures the move name if it's an EVOLVE_MOVE
    evo_pattern = re.compile(r'^\s*db\s+(EVOLVE_[A-Z_]+)(?:,\s+([A-Z_]+))?')
    # Matches a move learning line and captures the level and the move name
    move_pattern = re.compile(r'^\s*db\s+(\d+),\s+([A-Z_]+)')

    with open(input_path, 'r') as infile:
        lines = infile.readlines()

    output_blocks = []
    
    # Process the file in blocks delimited by the labels
    i = 0
    while i < len(lines):
        label_match = label_pattern.search(lines[i])
        if label_match:
            current_label = label_match.group(1)
            evolutions = []
            move_levels = {}
            
            # Look ahead from this label until the next label or end of file
            j = i + 1
            while j < len(lines) and not label_pattern.search(lines[j]):
                # 1. Identify Evolution lines
                evo_match = evo_pattern.search(lines[j])
                if evo_match:
                    method = evo_match.group(1)
                    target_move = evo_match.group(2)
                    evolutions.append({'full_line': lines[j].strip(), 'method': method, 'move': target_move})
                
                # 2. Map moves to their levels for this specific Pokémon
                move_match = move_pattern.search(lines[j])
                if move_match:
                    level = move_match.group(1)
                    move_name = move_match.group(2)
                    move_levels[move_name] = level
                
                j += 1
            
            # If we found evolutions, format and store them
            if evolutions:
                block = [current_label]
                for evo in evolutions:
                    line_to_write = f"\t{evo['full_line']}"
                    # If it's a move evolution and we found the level in the move list
                    if evo['method'] == "EVOLVE_MOVE" and evo['move'] in move_levels:
                        line_to_write += f" ; level {move_levels[evo['move']]}"
                    block.append(line_to_write)
                output_blocks.append("\n".join(block))
            
            i = j # Move pointer to the next block
        else:
            i += 1

    # Write the formatted blocks to the file
    with open(output_path, 'w') as outfile:
        outfile.write("\n\n".join(output_blocks))

if __name__ == "__main__":
    input_file = 'data/pokemon/evos_attacks.asm'
    output_file = 'evolution_methods.txt'
    
    try:
        generate_evolution_methods_with_levels(input_file, output_file)
        print(f"Success! Integrated move levels into {output_file}")
    except FileNotFoundError:
        print(f"Error: Could not find {input_file}.")