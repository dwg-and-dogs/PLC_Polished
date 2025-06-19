import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as patches
import numpy as np

def hex_to_rgb(hex_color):
    """Convert hex color to RGB tuple (0-1 range for matplotlib)"""
    hex_color = hex_color.lstrip('#')
    return tuple(int(hex_color[i:i+2], 16)/255.0 for i in (0, 2, 4))

def create_pattern(color1, color2, width=1, height=1, pattern_type='checkerboard'):
    """Create a pattern mixing both colors"""
    pixels_w = int(width * 100)
    pixels_h = int(height * 100)
    
    if pattern_type == 'checkerboard':
        # Create checkerboard pattern
        checker_size = 8  # Size of each checker square
        pattern = np.zeros((pixels_h, pixels_w))
        
        for i in range(pixels_h):
            for j in range(pixels_w):
                if ((i // checker_size) + (j // checker_size)) % 2 == 0:
                    pattern[i, j] = 1
        
    elif pattern_type == 'stripes':
        # Create vertical stripes
        stripe_width = 10
        pattern = np.zeros((pixels_h, pixels_w))
        
        for j in range(pixels_w):
            if (j // stripe_width) % 2 == 0:
                pattern[:, j] = 1
    
    # Apply colors based on pattern
    r = np.where(pattern, color1[0], color2[0])
    g = np.where(pattern, color1[1], color2[1])
    b = np.where(pattern, color1[2], color2[2])
    
    return np.stack([r, g, b], axis=2)

def create_pokemon_color_chart(csv_file='polychrome_colors.csv', pattern_type='checkerboard'):
    # Read the CSV file
    df = pd.read_csv(csv_file)
    
    # Set up the figure
    fig, ax = plt.subplots(figsize=(12, len(df) * 0.8))
    
    # Define dimensions
    row_height = 0.8
    col_width = 1.5
    type_col_width = 2.0
    
    for i, row in df.iterrows():
        y_pos = len(df) - i - 1  # Reverse order so first type is at top
        
        # Convert hex colors to RGB
        color1 = hex_to_rgb(row['Hex1'])
        color2 = hex_to_rgb(row['Hex2'])
        
        # Add type name on the left
        ax.text(0.1, y_pos + row_height/2, row['Type'], 
                fontsize=12, fontweight='bold', 
                verticalalignment='center', horizontalalignment='left')
        
        # Create the three color columns with black borders
        x_start = type_col_width
        
        # Column 1: First color
        rect1 = patches.Rectangle((x_start, y_pos), col_width, row_height, 
                                 facecolor=color1, edgecolor='black', linewidth=2)
        ax.add_patch(rect1)
        
        # Column 2: Pattern (middle)
        pattern_img = create_pattern(color1, color2, col_width, row_height, pattern_type)
        ax.imshow(pattern_img, extent=[x_start + col_width, x_start + 2*col_width, 
                                       y_pos, y_pos + row_height], aspect='auto')
        
        # Add border for gradient column
        rect2 = patches.Rectangle((x_start + col_width, y_pos), col_width, row_height, 
                                 facecolor='none', edgecolor='black', linewidth=2)
        ax.add_patch(rect2)
        
        # Column 3: Second color
        rect3 = patches.Rectangle((x_start + 2*col_width, y_pos), col_width, row_height, 
                                 facecolor=color2, edgecolor='black', linewidth=2)
        ax.add_patch(rect3)
        
        # Add hex codes as labels below each color
#        ax.text(x_start + col_width/2, y_pos - 0.1, f"#{row['Hex1']}", 
#                fontsize=8, ha='center', va='top')
#        ax.text(x_start + col_width + col_width/2, y_pos - 0.1, pattern_type.title(), 
#                fontsize=8, ha='center', va='top')
#        ax.text(x_start + 2*col_width + col_width/2, y_pos - 0.1, f"#{row['Hex2']}", 
#                fontsize=8, ha='center', va='top')
    
    # Set up the plot
    ax.set_xlim(0, type_col_width + 3*col_width + 0.5)
    ax.set_ylim(-0.5, len(df))
    ax.set_aspect('equal')
    
    # Remove axes
    ax.set_xticks([])
    ax.set_yticks([])
    ax.spines['top'].set_visible(False)
    ax.spines['right'].set_visible(False)
    ax.spines['bottom'].set_visible(False)
    ax.spines['left'].set_visible(False)
    
    # Add title
    plt.title('Pokemon Type Color Palette', fontsize=16, fontweight='bold', pad=20)
    
    # Add column headers
    headers_y = len(df) + 0.2
    ax.text(x_start + col_width/2, headers_y, "Color 1", 
            fontsize=12, fontweight='bold', ha='center')
    ax.text(x_start + col_width + col_width/2, headers_y, "Pattern", 
            fontsize=12, fontweight='bold', ha='center')
    ax.text(x_start + 2*col_width + col_width/2, headers_y, "Color 2", 
            fontsize=12, fontweight='bold', ha='center')
    
    plt.tight_layout()
    plt.savefig('pokemon_type_colors.png', dpi=300, bbox_inches='tight')
    plt.show()


def hex_to_standard_rgb(hex_color):
    """Convert hex color to standard RGB (0-255 range)"""
    hex_color = hex_color.strip().lstrip('#')
    return tuple(int(hex_color[i:i+2], 16) for i in (0, 2, 4))

def standard_rgb_to_gbc(rgb_tuple):
    """Convert standard RGB (0-255) to GBC RGB (0-31)"""
    return tuple(round(value * 31 / 255) for value in rgb_tuple)

def convert_csv_to_gbc_format(csv_file='polychrome_colors.csv'):
    """Read CSV and convert hex codes to GBC RGB format"""
    # Read the CSV file
    df = pd.read_csv(csv_file)
    
    # Process each row
    for _, row in df.iterrows():
        type_name = row.iloc[0]  # First column is the type name
        hex1 = row.iloc[1]       # Second column is first hex code
        hex2 = row.iloc[2]       # Third column is second hex code
        
        # Convert first hex to GBC RGB
        rgb1_standard = hex_to_standard_rgb(hex1)
        rgb1_gbc = standard_rgb_to_gbc(rgb1_standard)
        
        # Convert second hex to GBC RGB
        rgb2_standard = hex_to_standard_rgb(hex2)
        rgb2_gbc = standard_rgb_to_gbc(rgb2_standard)
        
        # Print in the requested format
        print(f"{type_name}")
        print(f"RGB {rgb1_gbc[0]}, {rgb1_gbc[1]}, {rgb1_gbc[2]}")
        print(f"RGB {rgb2_gbc[0]}, {rgb2_gbc[1]}, {rgb2_gbc[2]}")
        print()  # Empty line for readability

if __name__ == "__main__":
    convert_csv_to_gbc_format()

if __name__ == "__main__":
    # You can choose 'checkerboard' or 'stripes'
    create_pokemon_color_chart(pattern_type='checkerboard')
    
    # Uncomment the line below to create a version with stripes instead
    # create_pokemon_color_chart(pattern_type='stripes')