# -*- coding: utf-8 -*-
"""
Created on Thu Apr 24 06:34:31 2025

@author: dwg11
"""

import os

def search_directory(search_word):
    """
    Searches all .txt and .asm files within the current directory (and its subdirectories)
    for a specific word (case-insensitive) and prints the full file path and matching lines.

    Args:
        search_word (str): The word to search for.
    """
    results = {}
    current_directory = os.getcwd()
    for root, _, files in os.walk(current_directory):
        for file in files:
            if file.endswith(".txt") or file.endswith(".asm"):  # Now checking for .asm as well
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        for line_number, line in enumerate(f, 1):
                            if search_word.lower() in line.lower():
                                if file_path not in results:
                                    results[file_path] = []
                                results[file_path].append((line_number, line.strip()))
                except UnicodeDecodeError:
                    print(f"Warning: Could not decode file '{file_path}'. Skipping.")

    if results:
        print(f"Found '{search_word}' (case-insensitive) in the following .txt and .asm files within '{current_directory}' and its subdirectories:")
        for file_path, matches in results.items():
            print(f"\n{file_path}:")
            for line_number, line in matches:
                print(f"  Line {line_number}: {line}")
    else:
        print(f"'{search_word}' not found (case-insensitive) in any .txt or .asm files within '{current_directory}' and its subdirectories.")

if __name__ == "__main__":
    search_term = input("Enter the word to search for: ")
    search_directory(search_term)
    