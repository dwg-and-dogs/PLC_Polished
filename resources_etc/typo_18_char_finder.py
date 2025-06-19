# -*- coding: utf-8 -*-
"""
Created on Mon Apr 21 13:07:25 2025

@author: dwg11
"""

import os
import re
import sys

def count_characters(text):
    """
    Count characters in text with special rules:
    - '#' counts as 4 characters
    - '...' counts as 3 characters (standard)
    """
    # Replace '#' with 4 characters worth
    text = text.replace('#', 'xxxx')
    
    # The ellipsis already counts correctly (3 characters)
    # so no special handling needed
    
    return len(text)

def check_line_for_typo(line, line_number, filename):
    """
    Check if a line contains a typo based on the rules:
    - Must follow keywords: text, line, para, or cont
    - More than 17 characters between quotes is a typo
    """
    # Pattern to match lines starting with one of the keywords followed by quoted text
    pattern = r'^\s*(text|line|para|cont)\s+"([^"]*)"'
    
    match = re.match(pattern, line)
    if match:
        keyword = match.group(1)
        quoted_text = match.group(2)
        
        char_count = count_characters(quoted_text)
        
        if char_count > 18:
            return {
                'filename': filename,
                'line_number': line_number,
                'line': line.strip(),
                'char_count': char_count,
                'keyword': keyword
            }
    
    return None

def scan_directory(directory):
    """
    Scan all .asm files in the given directory for typos
    """
    typos = []
    
    if not os.path.exists(directory):
        print(f"Error: Directory '{directory}' does not exist")
        return typos
    
    for filename in os.listdir(directory):
        if filename.endswith('.asm'):
            filepath = os.path.join(directory, filename)
            
            try:
                with open(filepath, 'r', encoding='utf-8') as file:
                    for line_number, line in enumerate(file, 1):
                        typo = check_line_for_typo(line, line_number, filename)
                        if typo:
                            typos.append(typo)
            except Exception as e:
                print(f"Error reading file {filename}: {str(e)}")
    
    return typos

def main():
    # Directory to scan
    directory = 'maps'
    output_file = 'asm_typos.txt'
    
    print(f"Scanning directory '{directory}' for typos...")
    
    typos = scan_directory(directory)
    
    with open(output_file, 'w', encoding='utf-8') as f:
        if not typos:
            f.write("No typos found!\n")
            print("No typos found!")
        else:
            f.write(f"Found {len(typos)} typo(s):\n")
            f.write("-" * 50 + "\n")
            
            for typo in typos:
                f.write(f"File: {typo['filename']}\n")
                f.write(f"Line {typo['line_number']}: {typo['line']}\n")
                f.write(f"Character count: {typo['char_count']} (> 18)\n")
                f.write("-" * 50 + "\n")
            
            print(f"Found {len(typos)} typo(s). Results written to {output_file}")
    
    print(f"Output written to {output_file}")

if __name__ == "__main__":
    main()