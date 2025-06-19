# -*- coding: utf-8 -*-
"""
Created on Thu Apr 24 06:45:01 2025

@author: dwg11
"""

import os
import tkinter as tk
from tkinter import messagebox, scrolledtext
import re

class FileSearchApp:
    def __init__(self, root):
        self.root = root
        self.root.title("File Search Tool")
        self.root.geometry("700x500")
        self.root.resizable(True, True)
        
        # Create UI elements
        self.create_widgets()
        
    def create_widgets(self):
        # Frame for search input
        input_frame = tk.Frame(self.root, pady=10)
        input_frame.pack(fill=tk.X)
        
        # Search keyword label and entry
        tk.Label(input_frame, text="Search for:").pack(side=tk.LEFT, padx=10)
        self.search_entry = tk.Entry(input_frame, width=30)
        self.search_entry.pack(side=tk.LEFT, padx=5)
        self.search_entry.focus()
        
        # Search button
        search_button = tk.Button(input_frame, text="Search", command=self.search_files)
        search_button.pack(side=tk.LEFT, padx=10)
        
        # Frame for results
        results_frame = tk.Frame(self.root)
        results_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)
        
        # Results display
        tk.Label(results_frame, text="Results:").pack(anchor=tk.W)
        
        self.results_text = scrolledtext.ScrolledText(results_frame, wrap=tk.WORD, width=80, height=20)
        self.results_text.pack(fill=tk.BOTH, expand=True, pady=5)
        self.results_text.config(state=tk.DISABLED)
        
        # Status bar
        self.status_var = tk.StringVar()
        self.status_var.set("Ready")
        status_bar = tk.Label(self.root, textvariable=self.status_var, bd=1, relief=tk.SUNKEN, anchor=tk.W)
        status_bar.pack(side=tk.BOTTOM, fill=tk.X)
    
    def search_files(self):
        # Clear previous results
        self.results_text.config(state=tk.NORMAL)
        self.results_text.delete(1.0, tk.END)
        
        keyword = self.search_entry.get().strip()
        if not keyword:
            messagebox.showwarning("Warning", "Please enter a search keyword.")
            return
        
        self.status_var.set("Searching...")
        self.root.update_idletasks()
        
        # Get current directory
        current_dir = os.getcwd()
        file_count = 0
        match_count = 0
        
        try:
            # Walk through directory tree
            for root, dirs, files in os.walk(current_dir):
                for file in files:
                    # Skip binary files and focus on text files that might contain the keyword
                    if self.is_likely_text_file(file):
                        file_path = os.path.join(root, file)
                        file_count += 1
                        try:
                            with open(file_path, 'r', encoding='utf-8', errors='replace') as f:
                                content = f.read()
                                # Case-insensitive search
                                pattern = re.compile(re.escape(keyword), re.IGNORECASE)
                                matches = pattern.finditer(content)
                                
                                match_found = False
                                match_lines = []
                                
                                # Process matches
                                for match in matches:
                                    match_found = True
                                    match_count += 1
                                    
                                    # Get context around match
                                    start = max(0, match.start() - 50)
                                    end = min(len(content), match.end() + 50)
                                    
                                    # Find line number
                                    line_num = content.count('\n', 0, match.start()) + 1
                                    
                                    # Get match context
                                    context = content[start:end].replace('\n', ' ').strip()
                                    if start > 0:
                                        context = '...' + context
                                    if end < len(content):
                                        context += '...'
                                    
                                    match_lines.append(f"Line {line_num}: {context}")
                                
                                # Add file info to results if matches found
                                if match_found:
                                    relative_path = os.path.relpath(file_path, current_dir)
                                    self.results_text.insert(tk.END, f"\nFile: {relative_path}\n", "file")
                                    for line in match_lines[:10]:  # Limit to first 10 matches per file
                                        self.results_text.insert(tk.END, f"  {line}\n", "match")
                                    if len(match_lines) > 10:
                                        self.results_text.insert(tk.END, f"  ... and {len(match_lines) - 10} more matches\n")
                        except (UnicodeDecodeError, PermissionError, IOError):
                            # Skip files that can't be read
                            continue
        except Exception as e:
            self.results_text.insert(tk.END, f"Error: {str(e)}\n")
        
        # Update status and results summary
        self.status_var.set(f"Search complete. Scanned {file_count} files, found {match_count} matches.")
        
        if match_count == 0:
            self.results_text.insert(tk.END, f"No matches found for '{keyword}'.")
        else:
            self.results_text.insert(tk.END, f"\nFound {match_count} matches for '{keyword}' across {file_count} files.")
        
        self.results_text.config(state=tk.DISABLED)
    
    def is_likely_text_file(self, filename):
        # Common text file extensions - add more as needed
        text_extensions = ['.txt', '.py', '.java', '.c', '.cpp', '.h', '.html', '.css', '.js', 
                          '.json', '.xml', '.md', '.csv', '.log', '.ini', '.cfg', '.conf',
                          '.sh', '.bat', '.ps1', '.rb', '.php', '.pl', '.sql', '.r', '.yml', '.asm']
        
        # Check if the file has a text extension
        _, ext = os.path.splitext(filename.lower())
        return ext in text_extensions

def main():
    root = tk.Tk()
    app = FileSearchApp(root)
    root.mainloop()

if __name__ == "__main__":
    main()