from PIL import Image
import subprocess
import os

def convert_svg_to_png(svg_path, output_path=None, width=800, height=200):
    """
    Convert SVG to PNG using Inkscape (if available) or ImageMagick as fallback
    """
    if output_path is None:
        output_path = os.path.splitext(svg_path)[0] + '.png'
    
    # Try using Inkscape first (usually gives best results)
    try:
        subprocess.run([
            'inkscape',
            '--export-type=png',
            f'--export-width={width}',
            f'--export-height={height}',
            f'--export-filename={output_path}',
            svg_path
        ], check=True)
        print(f"Successfully converted using Inkscape: {output_path}")
        return True
    except FileNotFoundError:
        print("Inkscape not found, trying ImageMagick...")
    except subprocess.CalledProcessError:
        print("Inkscape conversion failed, trying ImageMagick...")
    
    # Try ImageMagick as fallback
    try:
        subprocess.run([
            'magick',
            'convert',
            svg_path,
            '-resize',
            f'{width}x{height}',
            output_path
        ], check=True)
        print(f"Successfully converted using ImageMagick: {output_path}")
        return True
    except FileNotFoundError:
        print("ImageMagick not found")
    except subprocess.CalledProcessError:
        print("ImageMagick conversion failed")
    
    print("\nTo convert SVGs to PNGs, you'll need either:")
    print("1. Inkscape (preferred): https://inkscape.org/release")
    print("2. ImageMagick: https://imagemagick.org/script/download.php")
    return False

# Example usage
svg_file = "outlined_text.svg"  # your SVG file
convert_svg_to_png(svg_file, width=800, height=200)