# -*- coding: utf-8 -*-
"""
Created on Sat Feb  7 15:27:50 2026

@author: dwg11
"""

import os
import pandas as pd
import re
import zipfile

# --- CONFIGURATION ---
ZIP_PATH = "data/pokemon/base_stats_copy_020726_zip.zip"  # Replace with your actual zip filename
CSV_PATH = "all_mon_bts.xlsx"
OUTPUT_REPORT = "stat_discrepancies_020726.csv"

def run_stat_audit():
    # 1. Load Ground Truth
    print(f"Loading {CSV_PATH}...")
    try:
        # We specify encoding and set engine='python' which is more robust for messy files
        # on_bad_lines='warn' will skip any row that doesn't match the column count
        df_gt = pd.read_csv(CSV_PATH, encoding='latin1', on_bad_lines='warn', engine='python')
    except Exception as e:
        print(f"Failed to load CSV: {e}")
        return
    
    # Create a mapping for easy lookup: {normalized_filename: dataframe_row}
    filename_map = {}
    for _, row in df_gt.iterrows():
        # Normalize name (e.g., "Mime Jr." -> "mime_jr")
        clean_name = str(row['Name']).lower().strip().replace(' ', '_').replace("'", "").replace('.', '').replace('-', '_')
        form = str(row['Form']).lower().strip() if pd.notna(row['Form']) else ""
        
        if not form or form == "":
            filename_map[clean_name] = row
        else:
            # Matches names like "rattata_alolan.asm" or "alolan_rattata.asm"
            clean_form = form.replace(' ', '_').replace('-', '_')
            filename_map[f"{clean_name}_{clean_form}"] = row
            filename_map[f"{clean_form}_{clean_name}"] = row

    # 2. Process the Zip
    results = []
    print(f"Processing {ZIP_PATH}...")
    
    if not os.path.exists(ZIP_PATH):
        print(f"Error: {ZIP_PATH} not found.")
        return

    with zipfile.ZipFile(ZIP_PATH, 'r') as z:
        for filename in z.namelist():
            # Skip non-asm files or hidden files
            if not filename.endswith('.asm') or '__MACOSX' in filename:
                continue
            
            # Get the name from the filename (e.g., "data/pokemon/abra.asm" -> "abra")
            base_name = os.path.splitext(os.path.basename(filename))[0].lower()
            
            # Attempt to find the Pokemon in the spreadsheet
            row = filename_map.get(base_name)
            if row is None:
                results.append({'File': filename, 'Status': 'MANUAL REVIEW', 'Details': 'Filename does not match any CSV entry'})
                continue

            try:
                with z.open(filename) as f:
                    content = f.read().decode('utf-8', errors='ignore')
                
                # Regex for: db HP, ATK, DEF, SPD, SAT, SDF
                # Matches the line regardless of whitespace
                match = re.search(r'^\s*db\s+(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+)', content, re.MULTILINE)
                
                if match:
                    # Extract values based on your provided order: hp atk def spd sat sdf
                    asm_vals = [int(x) for x in match.groups()]
                    asm_stats = {
                        'HP': asm_vals[0], 'Attack': asm_vals[1], 'Defense': asm_vals[2], 
                        'Speed': asm_vals[3], 'Sp. Atk': asm_vals[4], 'Sp. Def': asm_vals[5]
                    }
                    
                    # Compare against CSV
                    mismatches = []
                    for stat in ['HP', 'Attack', 'Defense', 'Speed', 'Sp. Atk', 'Sp. Def']:
                        csv_val = int(row[stat])
                        if asm_stats[stat] != csv_val:
                            mismatches.append(f"{stat}: CSV({csv_val}) vs ASM({asm_stats[stat]})")
                    
                    if mismatches:
                        results.append({
                            'File': filename, 
                            'Pokemon': f"{row['Name']} ({row['Form']})" if pd.notna(row['Form']) else row['Name'], 
                            'Status': 'MISMATCH', 
                            'Details': " | ".join(mismatches)
                        })
                    else:
                        results.append({'File': filename, 'Pokemon': row['Name'], 'Status': 'OK', 'Details': ''})
                else:
                    results.append({'File': filename, 'Status': 'PARSE ERROR', 'Details': 'Could not find the "db" stat line'})
            
            except Exception as e:
                results.append({'File': filename, 'Status': 'FILE ERROR', 'Details': str(e)})

    # 3. Save and Summarize
    report_df = pd.DataFrame(results)
    report_df.to_csv(OUTPUT_REPORT, index=False)
    
    mismatches = report_df[report_df['Status'] == 'MISMATCH']
    unmatched = report_df[report_df['Status'] == 'MANUAL REVIEW']
    
    print(f"\n--- Done! ---")
    print(f"Total files processed: {len(report_df)}")
    print(f"Mismatches found: {len(mismatches)}")
    print(f"Files needing manual review: {len(unmatched)}")
    print(f"Full report saved to: {OUTPUT_REPORT}")

if __name__ == "__main__":
    run_stat_audit()