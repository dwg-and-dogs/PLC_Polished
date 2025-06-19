# -*- coding: utf-8 -*-
"""
Created on Fri Sep 27 13:29:13 2024

@author: dwg11
"""

import re

def extract_pokemon_names(file_path):
    pokemon_names = []
    
    with open(file_path, 'r') as file:
        for line in file:
            # Use regex to find the Pokemon name
            match = re.search(r'dba\s+(\w+)Frontpic', line)
            if match:
                # Extract the name, remove 'Frontpic', and convert to lowercase
                name = match.group(1).lower()
                pokemon_names.append(name)
    
    return pokemon_names

# File path
file_path = 'data/pokemon/big_pic_pointers_png_092724.asm'

# Extract Pokemon names
pokemon_list = extract_pokemon_names(file_path)

# Print the list of Pokemon names
for name in pokemon_list:
    print(name)

# Print the total count of Pokemon
print(f"\nTotal number of Pokemon: {len(pokemon_list)}")





from PIL import Image, ImageDraw
import os

def read_pokemon_names(file_path):
    pokemon_names = []
    with open(file_path, 'r') as file:
        for line in file:
            if line.strip().startswith('dba'):
                name = line.split()[1].replace('Frontpic', '').lower()
                pokemon_names.append(name)
    return pokemon_names[:251]  # Return all 251 names

def read_pal_file(pokemon_name):
    pal_path = f"gfx/pokemon/{pokemon_name}/normal.pal"
    colors = []
    with open(pal_path, 'r') as file:
        for line in file:
            if line.strip().startswith('RGB'):
                rgb_values = line.replace(',', '').split()[1:4]
                r, g, b = map(int, rgb_values)
                colors.append((r * 8, g * 8, b * 8))  # Rescale from 0-31 to 0-255
    return colors[:2]  # Return only the first two colors

def is_grayscale(img):
    if img.mode != 'RGBA':
        img = img.convert('RGBA')
    width, height = img.size
    for x in range(width):
        for y in range(height):
            r, g, b, a = img.getpixel((x, y))
            if a > 0 and (r != g or g != b):  # Check non-transparent pixels
                return False
    return True

def apply_colors(img, colors):
    if not is_grayscale(img):
        return img  # Return the original image if it's not grayscale
    
    data = img.getdata()
    new_data = []
    for item in data:
        if item[3] > 0:  # If the pixel is not fully transparent
            r, g, b, a = item
            if r == g == b:  # Check if it's a shade of gray
                if 1 <= r < 128:  # Dark gray
                    new_data.append(colors[1] + (a,))  # Using colors[1] for dark gray
                elif 128 <= r < 255:  # Light gray
                    new_data.append(colors[0] + (a,))  # Using colors[0] for light gray
                else:  # Keep white (255, 255, 255) and black (0, 0, 0) as is
                    new_data.append(item)
            else:
                new_data.append(item)  # Keep non-gray colors as is
        else:
            new_data.append(item)  # Keep fully transparent pixels as is
    img.putdata(new_data)
    return img

def process_pokemon_image(pokemon_name, cell_size=56):
    image_path = f"gfx/pokemon/{pokemon_name}/back.png"
    
    with Image.open(image_path) as img:
        img = img.convert("RGBA")
        width, height = img.size
        
        square_size = min(width, height)
        cropped_img = img.crop((0, 0, square_size, square_size))
        
        # Read colors from .pal file
        colors = read_pal_file(pokemon_name)
        
        # Apply colors only if the image is grayscale
        if is_grayscale(cropped_img):
            colored_img = apply_colors(cropped_img, colors)
        else:
            colored_img = cropped_img
        
        # Create a new transparent image of cell_size x cell_size
        final_img = Image.new('RGBA', (cell_size, cell_size), (0, 0, 0, 0))
        
        # Calculate position to paste the colored image (centered)
        paste_x = (cell_size - square_size) // 2
        paste_y = (cell_size - square_size) // 2
        
        # Paste the colored image onto the transparent background
        final_img.paste(colored_img, (paste_x, paste_y), colored_img)
        
        return final_img

def create_pokemon_grid(pokemon_names, grid_size=(12, 22), cell_size=56, border_width=2):
    grid_width = grid_size[0] * cell_size + (grid_size[0] + 1) * border_width
    grid_height = grid_size[1] * cell_size + (grid_size[1] + 1) * border_width
    grid_img = Image.new('RGBA', (grid_width, grid_height), (0, 0, 0, 255))  # Black background
    
    for i, name in enumerate(pokemon_names):
        try:
            pokemon_img = process_pokemon_image(name, cell_size)
            row = i // grid_size[0]
            col = i % grid_size[0]
            paste_x = col * (cell_size + border_width) + border_width
            paste_y = row * (cell_size + border_width) + border_width
            
            grid_img.alpha_composite(pokemon_img, (paste_x, paste_y))
            print(f"Processed {i+1}/251: {name}")
        except Exception as e:
            print(f"Error processing {name}: {str(e)}")
    
    output_path = "screenshots/back_images_092724.png"
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    grid_img.save(output_path, "PNG")
    
    print(f"Image saved to {output_path}")

# Main execution
file_path = "data/pokemon/big_pic_pointers_png_092724.asm"
pokemon_names = read_pokemon_names(file_path)

if pokemon_names:
    create_pokemon_grid(pokemon_names)
else:
    print("No Pokemon names found in the list.")