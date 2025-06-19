# -*- coding: utf-8 -*-
"""
Pokemon Base Stats Summary Script
Created on Wed Jan 10 10:32:04 2024
@author: dwg11
"""
import os
import glob

path = 'C:/Users/dwg11/PLC_Polished/'
os.chdir(path)

# Get all .asm files from the base_stats directory
base_stats_dir = "data/pokemon/base_stats/"
file_list = glob.glob(os.path.join(base_stats_dir, "*.asm"))
file_list.sort()  # Sort alphabetically for consistency

print(f"Found {len(file_list)} .asm files in {base_stats_dir}")

def check_formatting(files):
    """Check if all files have the same formatting."""
    if not files:
        print("No files to check.")
        return False
    
    # Read the contents of the first file
    with open(files[0], 'r') as f:
        reference_lines = f.readlines()

    # Compare the contents of the other files with the first one
    for file in files[1:]:
        with open(file, 'r') as f:
            lines = f.readlines()

        # Check if the number of lines is the same
        if len(lines) != len(reference_lines):
            print(f"File '{file}' has a different number of lines.")
            return False

    print("All files have the same formatting.")
    return True

def write_files_to_text(file_list, output_file):
    """Write all Pokemon data to a combined text file."""
    with open(output_file, 'w') as combined_file:
        for file_name in file_list:
            try:
                with open(file_name, 'r') as file:
                    combined_file.write(f"--- Contents of {file_name} ---\n")
                    combined_file.write(file.read())
                    combined_file.write("\n\n")
            except FileNotFoundError:
                print(f"File '{file_name}' not found.")

# Check formatting of all files
formatting_ok = check_formatting(file_list)

if formatting_ok:
    # Write all Pokemon data to a single file
    output_text_file = 'PKMN_BST_DATA.txt'
    write_files_to_text(file_list, output_text_file)
    print(f"Successfully wrote all data to {output_text_file}")
else:
    print("Formatting check failed. Output file not created.")