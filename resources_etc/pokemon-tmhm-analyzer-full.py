"""
Simplified Pokémon TM/HM Compatibility Analyzer

This script processes Pokémon data files to create a compatibility chart
showing which Pokémon can learn which TM/HM/MT moves.

This version doesn't require xlsxwriter.
"""

import os
import re
import argparse
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from pathlib import Path

def extract_tmhm_moves(constants_content):
    """Extract TM/HM/MT moves from the constants file."""
    moves = []
    
    # Regular expression to match move definitions
    move_pattern = re.compile(r'^\s*add_(tm|hm|mt)\s+([A-Z_]+)')
    
    for line in constants_content.split('\n'):
        match = move_pattern.match(line)
        if match:
            move_type = match.group(1).upper()
            move_name = match.group(2)
            moves.append({
                'type': move_type,
                'name': move_name,
                'id': len(moves)  # Assign an ID for ordering
            })
    
    return moves

def extract_pokemon_name(pokemon_content, filename=None):
    """Extract the Pokémon name from the ASM file content."""
    # Try to find the name in the abilities_for line
    abilities_match = re.search(r'abilities_for\s+([A-Z_]+)', pokemon_content)
    if abilities_match:
        return abilities_match.group(1)
    
    # If not found, try to extract from a filename comment
    filename_match = re.search(r';\s*([a-zA-Z0-9_]+)\.asm', pokemon_content)
    if filename_match:
        return filename_match.group(1).upper()
    
    # Use the filename as a last resort
    if filename:
        return os.path.splitext(os.path.basename(filename))[0].upper()
    
    return "UNKNOWN"

def parse_pokemon_tmhm(pokemon_content, filename=None):
    """Parse a Pokémon's TM/HM learnset from its ASM file."""
    tmhm_section = False
    tmhm_line = ""
    pokemon_name = extract_pokemon_name(pokemon_content, filename)
    
    for line in pokemon_content.split('\n'):
        line = line.strip()
        
        # Identify the start of TM/HM section
        if '; tm/hm learnset' in line:
            tmhm_section = True
            continue
        
        # Collect TM/HM data until the end marker
        if tmhm_section:
            if '; end' in line:
                break
            
            # Remove 'tmhm' prefix if it exists
            cleaned_line = re.sub(r'^\s*tmhm\s+', '', line)
            if cleaned_line:
                tmhm_line += cleaned_line
    
    # Split by commas and clean up
    moves = [move.strip() for move in tmhm_line.split(',') if move.strip()]
    
    return {
        'name': pokemon_name,
        'moves': moves
    }

def process_pokemon_file(file_path):
    """Process a single Pokémon ASM file."""
    try:
        with open(file_path, 'r') as f:
            content = f.read()
        
        return parse_pokemon_tmhm(content, file_path)
    except Exception as e:
        print(f"Error processing {file_path}: {str(e)}")
        return None

def create_compatibility_matrix(pokemon_data, move_list):
    """Create a compatibility matrix between Pokémon and moves."""
    # Create a dictionary mapping move names to their indices
    move_indices = {move['name']: i for i, move in enumerate(move_list)}
    
    # Initialize the DataFrame with zeros
    df = pd.DataFrame(
        0, 
        index=[p['name'] for p in pokemon_data], 
        columns=[m['name'] for m in move_list]
    )
    
    # Fill in the matrix
    for pokemon in pokemon_data:
        for move in pokemon['moves']:
            if move in move_indices:
                df.loc[pokemon['name'], move] = 1
    
    return df

def visualize_compatibility(compatibility_df, output_file='pokemon_tmhm_compatibility.png'):
    """Create a heatmap visualization of the compatibility matrix."""
    # For large datasets, we might need to adjust the visualization
    num_pokemon = len(compatibility_df.index)
    num_moves = len(compatibility_df.columns)
    
    # Calculate appropriate figure size
    fig_width = max(20, num_moves * 0.2)
    fig_height = max(10, num_pokemon * 0.2)
    
    plt.figure(figsize=(fig_width, fig_height))
    
    # Create heatmap
    ax = sns.heatmap(compatibility_df, cmap='viridis', cbar=False)
    
    # Adjust font size based on the number of elements
    if num_pokemon > 50 or num_moves > 50:
        plt.xticks(fontsize=8, rotation=90)
        plt.yticks(fontsize=8)
    
    plt.title('Pokémon TM/HM/MT Compatibility')
    plt.ylabel('Pokémon')
    plt.xlabel('Moves')
    plt.tight_layout()
    plt.savefig(output_file, dpi=300)
    plt.close()
    
    # If the dataset is very large, create additional visualizations
    if num_pokemon > 50:
        # Create a subset visualization of the first 50 Pokémon
        subset_df = compatibility_df.iloc[:50]
        subset_file = os.path.splitext(output_file)[0] + '_subset.png'
        
        plt.figure(figsize=(fig_width, 15))
        sns.heatmap(subset_df, cmap='viridis', cbar=False)
        plt.title('Pokémon TM/HM/MT Compatibility (First 50 Pokémon)')
        plt.ylabel('Pokémon')
        plt.xlabel('Moves')
        plt.tight_layout()
        plt.savefig(subset_file, dpi=300)
        plt.close()

def export_to_csv(compatibility_df, output_file='pokemon_tmhm_compatibility.csv'):
    """Export the compatibility matrix to a CSV file."""
    compatibility_df.to_csv(output_file)

def create_move_type_analysis(compatibility_df, move_list, output_file='move_type_analysis.csv'):
    """Create an analysis of which types of moves (TM/HM/MT) each Pokémon can learn."""
    # Create a dictionary mapping move names to their type
    move_types = {move['name']: move['type'] for move in move_list}
    
    # Initialize columns for the analysis
    tm_count = []
    hm_count = []
    mt_count = []
    total_count = []
    
    # Calculate counts for each Pokémon
    for pokemon in compatibility_df.index:
        tm_moves = sum(1 for move in compatibility_df.columns 
                     if compatibility_df.loc[pokemon, move] == 1 and move_types.get(move) == 'TM')
        hm_moves = sum(1 for move in compatibility_df.columns 
                     if compatibility_df.loc[pokemon, move] == 1 and move_types.get(move) == 'HM')
        mt_moves = sum(1 for move in compatibility_df.columns 
                     if compatibility_df.loc[pokemon, move] == 1 and move_types.get(move) == 'MT')
        
        tm_count.append(tm_moves)
        hm_count.append(hm_moves)
        mt_count.append(mt_moves)
        total_count.append(tm_moves + hm_moves + mt_moves)
    
    # Create a new DataFrame with the analysis
    analysis_df = pd.DataFrame({
        'Pokemon': compatibility_df.index,
        'TM_Count': tm_count,
        'HM_Count': hm_count,
        'MT_Count': mt_count,
        'Total_Moves': total_count
    })
    
    # Sort by total moves
    analysis_df = analysis_df.sort_values('Total_Moves', ascending=False)
    
    # Export to CSV
    analysis_df.to_csv(output_file, index=False)
    
    return analysis_df

def create_move_popularity_analysis(compatibility_df, output_file='move_popularity.csv'):
    """Analyze which moves are learned by the most Pokémon."""
    # Calculate the number of Pokémon that can learn each move
    move_counts = compatibility_df.sum().sort_values(ascending=False)
    
    # Convert to DataFrame for easier export
    move_analysis_df = pd.DataFrame({
        'Move': move_counts.index,
        'Pokemon_Count': move_counts.values,
        'Percentage': (move_counts.values / len(compatibility_df)) * 100
    })
    
    # Export to CSV
    move_analysis_df.to_csv(output_file, index=False)
    
    return move_analysis_df

def main():
    # Set up argument parser
    parser = argparse.ArgumentParser(description='Analyze Pokémon TM/HM compatibility')
    parser.add_argument('constants_path', help='Path to tmhm_constants.asm')
    parser.add_argument('base_stats_dir', help='Directory containing Pokémon base stats ASM files')
    parser.add_argument('--output-dir', default='.', help='Directory for output files')
    parser.add_argument('--single-pokemon', help='Only process a single Pokemon file (e.g., abomasnow.asm)')
    
    args = parser.parse_args()
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Read constants file
    try:
        with open(args.constants_path, 'r') as f:
            constants_content = f.read()
    except Exception as e:
        print(f"Error reading constants file: {str(e)}")
        return
    
    # Extract moves from constants
    move_list = extract_tmhm_moves(constants_content)
    print(f"Found {len(move_list)} moves")
    
    # Process Pokémon files
    pokemon_data = []
    
    if args.single_pokemon:
        # Process just one Pokémon
        file_path = os.path.join(args.base_stats_dir, args.single_pokemon)
        if os.path.exists(file_path):
            result = process_pokemon_file(file_path)
            if result:
                pokemon_data.append(result)
        else:
            print(f"Error: File {file_path} not found")
            return
    else:
        # Process all Pokémon files
        pokemon_files = list(Path(args.base_stats_dir).glob('*.asm'))
        
        for file_path in pokemon_files:
            result = process_pokemon_file(file_path)
            if result:
                pokemon_data.append(result)
    
    print(f"Processed {len(pokemon_data)} Pokémon")
    
    if not pokemon_data:
        print("No Pokémon data found. Check your paths.")
        return
    
    # Create compatibility matrix
    compatibility_df = create_compatibility_matrix(pokemon_data, move_list)
    
    # Output file paths
    vis_path = os.path.join(args.output_dir, 'pokemon_tmhm_compatibility.png')
    csv_path = os.path.join(args.output_dir, 'pokemon_tmhm_compatibility.csv')
    move_type_path = os.path.join(args.output_dir, 'move_type_analysis.csv')
    move_popularity_path = os.path.join(args.output_dir, 'move_popularity.csv')
    
    # Visualize and export
    visualize_compatibility(compatibility_df, vis_path)
    export_to_csv(compatibility_df, csv_path)
    
    # Additional analyses
    move_type_df = create_move_type_analysis(compatibility_df, move_list, move_type_path)
    move_popularity_df = create_move_popularity_analysis(compatibility_df, move_popularity_path)
    
    # Print summary
    print(f"Compatibility matrix created and exported to {args.output_dir}")
    print(f"Top 5 Pokémon by move count:")
    for _, row in move_type_df.head(5).iterrows():
        print(f"  {row['Pokemon']}: {row['Total_Moves']} moves ({row['TM_Count']} TM, {row['HM_Count']} HM, {row['MT_Count']} MT)")
    
    print(f"\nTop 5 most common moves:")
    for _, row in move_popularity_df.head(5).iterrows():
        print(f"  {row['Move']}: {row['Pokemon_Count']} Pokémon ({row['Percentage']:.1f}%)")

if __name__ == "__main__":
    main()