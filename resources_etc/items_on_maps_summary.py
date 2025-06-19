# -*- coding: utf-8 -*-
"""
Created on Wed Apr 23 17:16:49 2025

@author: dwg11
"""

import os
import re
import csv

def create_map_item_csv(item_constants_file, maps_dir, output_csv_path):
    """
    Generates a CSV file indicating which items are present in each map,
    excluding items that start with "NAM_".

    Args:
        item_constants_file (str): Path to the item_constants.asm file.
        maps_dir (str): Path to the directory containing the map .asm files.
        output_csv_path (str): Path to save the generated CSV file.
    """

    # 1. Extract Item Names (excluding NAM_...)
    item_names = []
    with open(item_constants_file, 'r', encoding='utf-8') as f:
        for line in f:
            match = re.search(r'const\s+([A-Z_]+)', line)
            if match:
                item_name = match.group(1)
                if not item_name.startswith("NAM_"):  # Exclude items starting with "NAM_"
                    item_names.append(item_name)

    # 2. List Map Files
    map_files = [f for f in os.listdir(maps_dir) if f.endswith('.asm')]

    # 3. Parse Map Files and Create Data
    data = []
    for map_file in map_files:
        map_name = os.path.splitext(map_file)[0]
        map_path = os.path.join(maps_dir, map_file)
        present_items = []
        try:
            with open(map_path, 'r', encoding='utf-8') as f:
                map_content = f.read()
                for item in item_names:
                    if re.search(r'\b' + item + r'\b', map_content):
                        present_items.append(item)
        except UnicodeDecodeError as e:
            print(f"Error decoding file {map_file}: {e}")
            continue

        row = [0] * len(item_names)
        for i, item in enumerate(item_names):
            if item in present_items:
                row[i] = 1

        data.append([map_name] + row)

    # 4. Create the CSV
    with open(output_csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Map'] + item_names)
        writer.writerows(data)

if __name__ == "__main__":
    item_constants_file = 'constants/item_constants.asm'  # Replace if needed
    maps_dir = 'maps'  # Replace if needed
    output_csv_path = 'map_items.csv'

    create_map_item_csv(item_constants_file, maps_dir, output_csv_path)
    print(f"CSV file '{output_csv_path}' created successfully.")