# -*- coding: utf-8 -*-
"""
Created on Sat Aug 24 07:45:31 2024

@author: dwg11
"""
import os

# Paths to the relevant files and directories
scripts_file = 'data/maps/scripts.asm'
asm_directory = 'maps/'

# Read the scripts file and extract the .asm file names
with open(scripts_file, 'r') as file:
    lines = file.readlines()

# Extract .asm file names from the INCLUDE lines in the scripts file
asm_files_needed = []
for line in lines:
    if line.startswith('INCLUDE'):
        # Extract the file name after the "INCLUDE" keyword and remove "maps/" prefix
        asm_file = line.split('"')[1].replace("maps/", "")
        asm_files_needed.append(asm_file)

# Get the list of all .asm files that exist in the asm_directory
asm_files_existing = [file for file in os.listdir(asm_directory) if file.endswith('.asm')]

# Print the two lists
print("ASM files needed (from scripts file):")
for file in asm_files_needed:
    print(file)

print("\nASM files existing (in asm_directory):")
for file in asm_files_existing:
    print(file)
    

# Compare the two lists and find the asm files that are needed but do not yet exist
asm_files_missing = [file for file in asm_files_needed if file not in asm_files_existing]

# Print the results
print("\nASM files needed but not yet existing:")
if asm_files_missing:
    for file in asm_files_missing:
        print(file)
else:
    print("All needed ASM files exist.")
    
# Let's start by loading the template and then generate the missing files with customized first lines

# File paths
template_path = 'maps/Template.asm'
asm_directory = 'maps/'  # Assuming this directory is where the files need to be saved

# Read the template file
with open(template_path, 'r') as template_file:
    template_content = template_file.readlines()

# Example missing files from the previous logic
# For demonstration purposes, we will use a small sample list of missing files
# Replace this list with the actual missing files list
missing_files = asm_files_missing

# Function to create new asm files based on the template
def create_asm_files(missing_files, template_content):
    for file_name in missing_files:
        # Extract the map name by removing the ".asm" extension
        map_name = file_name.replace('.asm', '')
        
        # Customize the first line of the template
        customized_first_line = f"{map_name}_MapScriptHeader: ;"
        
        # Replace the first line of the template with the customized line
        customized_content = [customized_first_line] + template_content[1:]
        
        # Define the path for the new file
        new_file_path = asm_directory + file_name
        
        # Write the customized content to the new asm file
        with open(new_file_path, 'w') as new_file:
            new_file.writelines(customized_content)
        
    return "Files created successfully."

# Run the function to create the files
create_asm_files(missing_files, template_content)