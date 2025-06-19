# -*- coding: utf-8 -*-
"""
Created on Mon Apr 21 12:56:50 2025

@author: dwg11
"""

import os
import re

def find_maps_with_coord_events(maps_directory):
    # Pattern to match coord_event lines (but not def_coord_events)
    coord_event_pattern = re.compile(r'^\s*coord_event\s+\d+,\s*\d+', re.MULTILINE)
    
    maps_with_coord_events = []
    
    for filename in os.listdir(maps_directory):
        if filename.endswith('.asm'):
            file_path = os.path.join(maps_directory, filename)
            
            try:
                with open(file_path, 'r', encoding='utf-8') as file:
                    content = file.read()
            except UnicodeDecodeError:
                try:
                    with open(file_path, 'r', encoding='latin-1') as file:
                        content = file.read()
                except UnicodeDecodeError:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
                        content = file.read()
            
            # Check if this file contains coord_event lines
            if coord_event_pattern.search(content):
                maps_with_coord_events.append(filename)
    
    return maps_with_coord_events

def main():
    maps_directory = 'maps/'
    
    print("Searching for map files with coord_event lines...")
    maps_with_coord_events = find_maps_with_coord_events(maps_directory)
    
    # Write results to file
    with open('maps_with_coord_events.txt', 'w', encoding='utf-8') as f:
        f.write(f"Maps containing coord_event lines: {len(maps_with_coord_events)}\n\n")
        for filename in sorted(maps_with_coord_events):
            f.write(f"{filename}\n")
    
    # Print summary
    print(f"\nFound {len(maps_with_coord_events)} map files with coord_event lines")
    print("Results saved to: maps_with_coord_events.txt")
    
    # Optional: display the list on console as well
    if maps_with_coord_events:
        print("\nMaps with coord_event lines:")
        for filename in sorted(maps_with_coord_events):
            print(f"  - {filename}")

if __name__ == "__main__":
    main()