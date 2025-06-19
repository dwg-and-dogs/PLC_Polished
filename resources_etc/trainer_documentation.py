# -*- coding: utf-8 -*-
"""
Created on Thu Apr 24 14:27:14 2025

@author: dwg11
"""

import os
import re
import argparse
from collections import defaultdict
import sys # To potentially write status messages to stderr

# --- Configuration ---
DEFAULT_MAPS_DIR = 'maps'
DEFAULT_MAP_ORDER_FILE = 'map_order.txt'
DEFAULT_OUTPUT_FILE = 'trainer_list.txt' # Default output filename

# --- Regular Expressions (Unchanged) ---
loadtrainer_pattern = re.compile(
    r'^\s*loadtrainer\s+([A-Z0-9_]+)\s*,\s*([A-Z0-9_]+)\s*.*$',
    re.IGNORECASE
)
generictrainer_pattern = re.compile(
    r'^\s*generictrainer\s+([A-Z0-9_]+)\s*,\s*([A-Z0-9_]+)\s*,.*$',
    re.IGNORECASE
)

# --- Helper Function for Console Output ---
def log_message(message):
    """Prints a message to the standard console (stderr)."""
    print(message, file=sys.stderr)

# --- Core Functions (Unchanged from previous version) ---

def find_trainers_in_maps(maps_dir):
    """
    Scans files within the specified directory for trainer definitions.
    """
    found_trainers = []
    if not os.path.isdir(maps_dir):
        log_message(f"Error: Directory not found: {maps_dir}")
        return found_trainers

    log_message(f"Scanning for trainers in directory: {maps_dir}...")

    for root, _, files in os.walk(maps_dir):
        for filename in files:
            file_path = os.path.join(root, filename)
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    for line_num, line in enumerate(f, 1):
                        match_load = loadtrainer_pattern.match(line)
                        if match_load:
                            trainer_class = match_load.group(1).upper()
                            identifier = match_load.group(2).upper()
                            found_trainers.append({
                                'file': file_path,
                                'line_num': line_num,
                                'type': 'loadtrainer',
                                'class': trainer_class,
                                'identifier': identifier
                            })
                            continue

                        match_generic = generictrainer_pattern.match(line)
                        if match_generic:
                            trainer_class = match_generic.group(1).upper()
                            identifier = match_generic.group(2).upper()
                            found_trainers.append({
                                'file': file_path,
                                'line_num': line_num,
                                'type': 'generictrainer',
                                'class': trainer_class,
                                'identifier': identifier
                            })
            except IOError as e:
                log_message(f"Warning: Could not read file {file_path}: {e}")
            except Exception as e:
                log_message(f"Warning: An unexpected error occurred processing file {file_path}: {e}")

    found_trainers.sort(key=lambda t: (t['file'], t['line_num']))
    log_message(f"Scan complete. Found {len(found_trainers)} total trainer references.")
    return found_trainers

def read_map_order(filename):
    """
    Reads the desired map order from a text file.
    """
    if not os.path.isfile(filename):
        log_message(f"Error: Map order file not found: {filename}")
        return None
    try:
        with open(filename, 'r', encoding='utf-8') as f:
            order = [line.strip() for line in f if line.strip()]
        log_message(f"Read {len(order)} entries from map order file: {filename}")
        return order
    except IOError as e:
        log_message(f"Error: Could not read map order file {filename}: {e}")
        return None

def group_trainers_by_map(trainers_list):
    """
    Groups trainers by the base name of their source file.
    """
    trainers_by_map = defaultdict(list)
    for trainer in trainers_list:
        base_name = os.path.splitext(os.path.basename(trainer['file']))[0]
        trainers_by_map[base_name].append(trainer)
    return dict(trainers_by_map)

# --- Main Execution Logic ---
if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Find trainer definitions, order by map_order.txt, and write to a file."
    )
    parser.add_argument(
        'maps_directory',
        nargs='?',
        default=DEFAULT_MAPS_DIR,
        help=f"The directory containing map files (default: '{DEFAULT_MAPS_DIR}')"
    )
    parser.add_argument(
        '-m', '--map-order',
        default=DEFAULT_MAP_ORDER_FILE,
        help=f"Path to the map order file (default: '{DEFAULT_MAP_ORDER_FILE}')"
    )
    parser.add_argument(
        '-o', '--output',
        default=DEFAULT_OUTPUT_FILE,
        help=f"Path to the output report file (default: '{DEFAULT_OUTPUT_FILE}')"
    )
    args = parser.parse_args()

    # 1. Read the desired map order
    map_order = read_map_order(args.map_order)

    # 2. Find all trainers
    all_trainers = find_trainers_in_maps(args.maps_directory)

    if not all_trainers:
        log_message("\nNo trainers found. Exiting.")
        exit()

    if map_order is None:
        log_message("\nCannot proceed without a valid map order file. Exiting.")
        exit()

    # 3. Group trainers by map base name
    trainers_grouped = group_trainers_by_map(all_trainers)
    processed_maps = set()

    log_message(f"Preparing report to write to: {args.output}")

    # --- Generate Report Output ---
    try:
        with open(args.output, 'w', encoding='utf-8') as outfile:
            outfile.write("--- Trainers by Map Order ---\n")

            # 4. Write trainers according to map_order.txt
            for map_name in map_order:
                if map_name in trainers_grouped:
                    processed_maps.add(map_name)
                    outfile.write(f"\n== Map: {map_name} ==\n")
                    for trainer in trainers_grouped[map_name]:
                        outfile.write(
                            f"  - L{trainer['line_num']:<4} ({trainer['type']}): "
                            f"Class={trainer['class']}, Identifier={trainer['identifier']} "
                            f"(File: {trainer['file']})\n"
                        )
                # else: # Optionally note maps with no trainers
                    # outfile.write(f"\n== Map: {map_name} ==\n  (No trainers found)\n")


            # 5. Write trainers from maps not listed in map_order.txt
            remaining_maps = set(trainers_grouped.keys()) - processed_maps
            if remaining_maps:
                outfile.write("\n--- Trainers in Maps NOT listed in Map Order File ---\n")
                for map_name in sorted(list(remaining_maps)):
                     outfile.write(f"\n== Map: {map_name} ==\n")
                     for trainer in trainers_grouped[map_name]:
                        outfile.write(
                            f"  - L{trainer['line_num']:<4} ({trainer['type']}): "
                            f"Class={trainer['class']}, Identifier={trainer['identifier']} "
                            f"(File: {trainer['file']})\n"
                        )

            outfile.write("\n--- End of Report ---\n")

        log_message(f"\nSuccessfully wrote trainer report to: {args.output}")

    except IOError as e:
        log_message(f"\nError: Could not write report to file {args.output}: {e}")
    except Exception as e:
         log_message(f"\nError: An unexpected error occurred while writing the report: {e}")