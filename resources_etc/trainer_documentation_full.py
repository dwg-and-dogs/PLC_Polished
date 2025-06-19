# -*- coding: utf-8 -*-
"""
Created on Fri Apr 25 15:56:58 2025

@author: dwg11
"""
# -*- coding: utf-8 -*-
"""
Reads trainer_list.txt and adds party data from parties.asm.
Revised version with corrected party copying logic.
"""

import os
import re
import argparse
from collections import defaultdict
import sys

# --- Configuration ---
DEFAULT_TRAINER_LIST_FILE = 'trainer_list.txt'
DEFAULT_PARTIES_FILE = 'data/trainers/parties.asm'
DEFAULT_OUTPUT_FILE = 'trainer_list_with_parties.txt'

# --- Regular Expressions ---
trainer_info_pattern = re.compile(
    r'^\s*-\s*L\d+\s+\(.*\):\s*Class=([A-Z0-9_]+),\s*Identifier=([A-Z0-9_]+)\s*\(File:.*\).*$',
    re.IGNORECASE
)
group_label_pattern = re.compile(r'^([A-Za-z0-9_]+)Group:\s*$')
trainer_name_db_pattern = re.compile(r'^\s*db\s+"([^@<]+)@"\s*(?:;.*)?$') # Exclude <RIVAL>
rival_name_db_pattern = re.compile(r'^\s*db\s+"<RIVAL>@"\s*(?:;.*)?$') # Specific pattern for <RIVAL>
numbered_trainer_comment_pattern = re.compile(r'^\s*;\s*([A-Z0-9_]+)\s+(\d+)\s*(?:;.*)?$', re.IGNORECASE)
party_end_db_pattern = re.compile(r'^\s*db\s+-1\s*;?\s*(end)?\s*$')

# --- Helper Function for Console Output ---
def log_message(message):
    """Prints a message to the standard console (stderr)."""
    print(message, file=sys.stderr)

# --- Main Function ---
def add_parties(trainer_list_path, parties_path, output_path):
    """
    Reads trainer_list, finds corresponding parties in parties.asm, and writes combined output.
    """
    if not os.path.isfile(trainer_list_path):
        log_message(f"Error: Trainer list file not found: {trainer_list_path}")
        return
    if not os.path.isfile(parties_path):
        log_message(f"Error: Parties file not found: {parties_path}")
        return

    log_message(f"Reading trainers from: {trainer_list_path}")
    log_message(f"Reading parties from: {parties_path}")
    log_message(f"Writing output to: {output_path}")

    try:
        with open(parties_path, 'r', encoding='utf-8', errors='ignore') as f_parties:
            parties_lines = f_parties.readlines()
    except IOError as e:
        log_message(f"Error reading parties file {parties_path}: {e}")
        return

    try:
        with open(trainer_list_path, 'r', encoding='utf-8', errors='ignore') as f_list, \
             open(output_path, 'w', encoding='utf-8') as f_out:

            named_trainer_search_counts = defaultdict(int) # Keep track *within the current group search*

            for trainer_line in f_list:
                f_out.write(trainer_line) # Write the original trainer line

                match = trainer_info_pattern.match(trainer_line)
                if not match:
                    continue

                trainer_class = match.group(1).upper()
                trainer_identifier = match.group(2).upper()
                log_message(f"Processing: Class={trainer_class}, Identifier={trainer_identifier}")

                # --- Prepare for search ---
                target_group_label = trainer_class.capitalize() + "Group:"
                # Handle known inconsistencies or patterns
                if trainer_class.startswith("RIVAL") and trainer_class[-1].isdigit():
                    target_group_label = trainer_class.capitalize() + "Group:" # e.g. Rival0Group:
                elif trainer_class == "SR_AND_JR":
                     target_group_label = "SrAndJrGroup:" # Specific case
                elif trainer_class == "KIMONO_GIRL_1":
                    target_group_label = "KimonoGirl1Group:" # Specific case for numbered classes
                elif trainer_class == "KIMONO_GIRL_2":
                    target_group_label = "KimonoGirl2Group:"
                elif trainer_class == "KIMONO_GIRL_3":
                    target_group_label = "KimonoGirl3Group:"
                elif trainer_class == "KIMONO_GIRL_4":
                    target_group_label = "KimonoGirl4Group:"
                elif trainer_class == "KIMONO_GIRL_5":
                    target_group_label = "KimonoGirl5Group:"
                # Add more explicit mappings if needed

                is_numeric_id = trainer_identifier.isdigit()
                target_numeric_id = int(trainer_identifier) if is_numeric_id else None
                target_name_base = None
                target_name_occurrence = 0

                if not is_numeric_id:
                    name_match = re.match(r'^([A-Z_]+)(\d+)$', trainer_identifier)
                    if name_match:
                        target_name_base = name_match.group(1)
                        target_name_occurrence = int(name_match.group(2))
                    else:
                        target_name_base = trainer_identifier
                        target_name_occurrence = 1

                # --- Search within parties_lines ---
                found_party_start_index = -1
                in_target_group = False
                named_trainer_search_counts.clear() # Reset for each trainer search

                for i, party_line in enumerate(parties_lines):
                    stripped_party_line = party_line.strip()

                    # Exit search if we leave the target group
                    if in_target_group and group_label_pattern.match(stripped_party_line) and not stripped_party_line.startswith(target_group_label):
                        break

                    if stripped_party_line.startswith(target_group_label):
                        in_target_group = True
                        continue

                    if not in_target_group:
                        continue

                    # --- Inside the target group ---
                    start_copy_from_index = -1

                    if is_numeric_id:
                        num_comment_match = numbered_trainer_comment_pattern.match(stripped_party_line)
                        if num_comment_match:
                             comment_class = num_comment_match.group(1).upper()
                             comment_id = int(num_comment_match.group(2))
                             if comment_class == trainer_class and comment_id == target_numeric_id:
                                 # Found the comment identifying the start
                                 start_copy_from_index = i + 1 # Start copying *after* this comment line
                                 log_message(f"  Found numeric marker for {trainer_class} {target_numeric_id} at line {i+1}")
                                 break # Found the starting point marker

                    else: # Named identifier
                        # Match db "Name@"
                        name_db_match = trainer_name_db_pattern.match(stripped_party_line)
                        if name_db_match:
                             party_file_name = name_db_match.group(1).upper()
                             if party_file_name == target_name_base:
                                 named_trainer_search_counts[party_file_name] += 1
                                 if named_trainer_search_counts[party_file_name] == target_name_occurrence:
                                     # Found the correct occurrence
                                     start_copy_from_index = i + 1 # Start copying *after* the name line
                                     log_message(f"  Found named marker for {target_name_base}{target_name_occurrence} at line {i+1}")
                                     break # Found the starting point marker
                        # Also need to handle RIVAL with numbered ID - they use db "<RIVAL>@"
                        elif rival_name_db_pattern.match(stripped_party_line) and trainer_class.startswith("RIVAL"):
                             # This case is handled by the numeric check looking for the comment first.
                             # If we reach here, it means we are likely looking for a RIVAL numerically,
                             # but the comment wasn't found first. This shouldn't happen if format is consistent.
                             pass


                # --- Copy the party block if start was found ---
                if start_copy_from_index != -1:
                    party_copied = False
                    first_data_line_found = False
                    for j in range(start_copy_from_index, len(parties_lines)):
                        line_to_copy = parties_lines[j]
                        stripped_line_to_copy = line_to_copy.strip()

                        # Skip initial comments/empty lines before the actual party data
                        if not first_data_line_found:
                            if not stripped_line_to_copy or stripped_line_to_copy.startswith(';'):
                                continue
                            else:
                                first_data_line_found = True # Start copying from this line

                        # Write the line (already verified it's not initial comment/empty)
                        f_out.write(line_to_copy)
                        party_copied = True # Mark that we started copying

                        # Check if this is the end marker
                        if party_end_db_pattern.match(stripped_line_to_copy):
                            log_message(f"  Finished copying party.")
                            break # Stop copying after writing the end marker

                    if not party_copied: # Should not happen if start_copy_from_index was valid
                         log_message(f"  Warning: Found start marker but failed to copy any party lines for {trainer_class} {trainer_identifier}")
                         f_out.write("    Party: COPY FAILED (Found start, but no data?)\n")

                else: # start_copy_from_index remained -1
                    log_message(f"  Party start marker not found for Class={trainer_class}, Identifier={trainer_identifier}")
                    f_out.write("    Party: NO TRAINER FOUND\n")


            f_out.write("\n--- End of Combined Report ---\n")

    except IOError as e:
        log_message(f"Error writing output file {output_path}: {e}")
    except Exception as e:
        log_message(f"An unexpected error occurred: {e}")
        import traceback
        traceback.print_exc()

# --- Script Execution ---
if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Combine trainer list with party data."
    )
    parser.add_argument(
        '-l', '--list-file',
        default=DEFAULT_TRAINER_LIST_FILE,
        help=f"Path to the input trainer list file (default: '{DEFAULT_TRAINER_LIST_FILE}')"
    )
    parser.add_argument(
        '-p', '--parties-file',
        default=DEFAULT_PARTIES_FILE,
        help=f"Path to the trainer parties file (default: '{DEFAULT_PARTIES_FILE}')"
    )
    parser.add_argument(
        '-o', '--output',
        default=DEFAULT_OUTPUT_FILE,
        help=f"Path to the output combined file (default: '{DEFAULT_OUTPUT_FILE}')"
    )
    args = parser.parse_args()

    add_parties(args.list_file, args.parties_file, args.output)