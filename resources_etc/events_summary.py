# -*- coding: utf-8 -*-
"""
Created on Mon Apr 21 12:47:39 2025

@author: dwg11
"""
import os
import re
from datetime import datetime

# Function to extract events from constants file
def extract_events_from_constants(constants_file_path):
    events = set()
    lines = []
    with open(constants_file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()
        for line in lines:
            # Look for lines that define event constants
            match = re.search(r'const\s+(EVENT_[A-Z0-9_]+)', line)
            if match:
                events.add(match.group(1))
    return events, lines

# Function to extract events from map files
def extract_events_from_maps(maps_directory):
    events = set()
    event_pattern = re.compile(r'EVENT_[A-Z0-9_]+')
    
    # Only look for .asm files directly in the maps directory
    for filename in os.listdir(maps_directory):
        if filename.endswith('.asm'):
            file_path = os.path.join(maps_directory, filename)
            # Try different encodings to handle non-standard characters
            try:
                with open(file_path, 'r', encoding='utf-8') as file:
                    content = file.read()
            except UnicodeDecodeError:
                try:
                    with open(file_path, 'r', encoding='latin-1') as file:
                        content = file.read()
                except UnicodeDecodeError:
                    # If both fail, use utf-8 with error handling
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
                        content = file.read()
            
            # Find all occurrences of EVENT_*
            found_events = event_pattern.findall(content)
            events.update(found_events)
    
    return events

# Function to create annotated event flags file
def create_annotated_event_flags_file(original_file_path, events_in_maps, date_str):
    output_filename = f"event_flags_{date_str}.txt"
    
    with open(original_file_path, 'r', encoding='utf-8') as input_file:
        lines = input_file.readlines()
    
    with open(output_filename, 'w', encoding='utf-8') as output_file:
        for line in lines:
            # Check if this line defines an event
            match = re.search(r'const\s+(EVENT_[A-Z0-9_]+)', line)
            if match:
                event_name = match.group(1)
                # If this event is not used in maps, add the comment
                if event_name not in events_in_maps:
                    # Remove any existing newline and add our comment
                    line_without_newline = line.rstrip()
                    # Check if there's already a comment
                    if ';' in line_without_newline:
                        # Add our comment after the existing comment
                        line = line_without_newline + " ; EVENT NOT USED IN MAPS\n"
                    else:
                        # Add our comment with a semicolon
                        line = line_without_newline + " ; EVENT NOT USED IN MAPS\n"
            
            output_file.write(line)
    
    return output_filename

# Main execution
def main():
    # Paths
    constants_file = 'constants/event_flags.asm'
    maps_directory = 'maps/'
    
    # Get current date for filename
    date_str = datetime.now().strftime("%Y%m%d")
    
    # Extract events from both sources
    print("Extracting events from constants file...")
    constants_events, _ = extract_events_from_constants(constants_file)
    print(f"Found {len(constants_events)} events in constants file")
    
    print("Extracting events from map files...")
    map_events = extract_events_from_maps(maps_directory)
    print(f"Found {len(map_events)} unique events in map files")
    
    # Find events in maps but not in constants
    events_in_maps_not_in_constants = map_events - constants_events
    
    # Find events in constants but not in maps
    events_in_constants_not_in_maps = constants_events - map_events
    
    # Create annotated event flags file
    annotated_file = create_annotated_event_flags_file(constants_file, map_events, date_str)
    
    # Write results to files (with UTF-8 encoding)
    with open('events_found_in_maps.txt', 'w', encoding='utf-8') as f:
        f.write(f"Total unique events found in maps: {len(map_events)}\n\n")
        for event in sorted(map_events):
            f.write(f"{event}\n")
    
    with open('events_in_maps_not_in_constants.txt', 'w', encoding='utf-8') as f:
        f.write(f"Events found in maps but not defined in constants: {len(events_in_maps_not_in_constants)}\n\n")
        for event in sorted(events_in_maps_not_in_constants):
            f.write(f"{event}\n")
    
    with open('events_in_constants_not_in_maps.txt', 'w', encoding='utf-8') as f:
        f.write(f"Events defined in constants but not used in maps: {len(events_in_constants_not_in_maps)}\n\n")
        for event in sorted(events_in_constants_not_in_maps):
            f.write(f"{event}\n")
    
    # Print summary
    print("\nSummary:")
    print(f"Total events in constants: {len(constants_events)}")
    print(f"Total unique events in maps: {len(map_events)}")
    print(f"Events in maps but not in constants: {len(events_in_maps_not_in_constants)}")
    print(f"Events in constants but not in maps: {len(events_in_constants_not_in_maps)}")
    print("\nOutput files created:")
    print("- events_found_in_maps.txt")
    print("- events_in_maps_not_in_constants.txt")
    print("- events_in_constants_not_in_maps.txt")
    print(f"- {annotated_file} (annotated version of event_flags.asm)")

if __name__ == "__main__":
    main()