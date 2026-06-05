# -*- coding: utf-8 -*-
"""
Created on Wed Oct 30 15:08:33 2024

@author: dwg11
"""

from PIL import Image, ImageDraw, ImageFont
import numpy as np

def create_outlined_text(
    text,
    font_path,
    font_size=100,
    text_color=(255, 165, 0),
    outline_color=(0, 0, 0),
    outline_size=3,
    padding=50,
    background_color=(0, 0, 0, 0)  # Transparent background by default
):
    """
    Create a high resolution image with outlined text.
    
    Args:
        text (str): The text to render
        font_path (str): Path to the .ttf font file
        font_size (int): Size of the font
        text_color (tuple): RGB color for the text
        outline_color (tuple): RGB color for the outline
        outline_size (int): Thickness of the outline in pixels
        padding (int): Padding around the text in pixels
        background_color (tuple): RGBA color for the background
    
    Returns:
        PIL.Image: The resulting image with outlined text
    """
    
    # Create a font object
    font = ImageFont.truetype(font_path, font_size)
    
    # Create a temporary image to measure text size
    temp_img = Image.new('RGBA', (1, 1))
    temp_draw = ImageDraw.Draw(temp_img)
    
    # Get text dimensions
    bbox = temp_draw.textbbox((0, 0), text, font=font)
    text_width = bbox[2] - bbox[0]
    text_height = bbox[3] - bbox[1]
    
    # Create the actual image with padding
    img_width = text_width + 2 * padding
    img_height = text_height + 2 * padding
    
    # Create image with transparent background
    image = Image.new('RGBA', (img_width, img_height), background_color)
    draw = ImageDraw.Draw(image)
    
    # Calculate center position
    x = (img_width - text_width) // 2
    y = (img_height - text_height) // 2
    
    # Draw the outline by drawing the text multiple times with offsets
    for offset_x in range(-outline_size, outline_size + 1):
        for offset_y in range(-outline_size, outline_size + 1):
            if offset_x * offset_x + offset_y * offset_y <= outline_size * outline_size:
                draw.text(
                    (x + offset_x, y + offset_y),
                    text,
                    font=font,
                    fill=outline_color
                )
    
    # Draw the main text
    draw.text((x, y), text, font=font, fill=text_color)
    
    return image

# Example usage
if __name__ == "__main__":
    # Parameters
    text = "A CRYSTAL ADVENTURE • DWG"
    font_path = "Gabriola.ttf"  # Replace with your font path
    
    # Create the image
    outlined_text = create_outlined_text(
        text=text,
        font_path=font_path,
        font_size=200,
        text_color=(255, 165, 0),  # interior of  text
        outline_color=(0, 0, 0),     # Black outline
        outline_size=5,              # 5 pixel outline
        padding=100                  # 100 pixel padding
    )
    
    # Save the image
    outlined_text.save("CRYSTALADVENTUREDWG.png")