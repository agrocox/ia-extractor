#!/usr/bin/env python3
"""Quick test to verify the web app works."""

import os
from pathlib import Path

def test_setup():
    """Test that all required files and folders exist."""
    base_dir = Path(__file__).parent

    print("Testing IA Extractor Web App Setup...")
    print("=" * 50)

    # Check required files
    required_files = [
        'app.py',
        'templates/index.html',
        'start_server.sh',
        'README.md'
    ]

    all_good = True

    for file in required_files:
        file_path = base_dir / file
        if file_path.exists():
            print(f"✓ {file}")
        else:
            print(f"✗ {file} - MISSING!")
            all_good = False

    # Check required folders
    required_folders = ['uploads', 'output', 'templates']

    for folder in required_folders:
        folder_path = base_dir / folder
        if folder_path.exists():
            print(f"✓ {folder}/ directory")
        else:
            print(f"✗ {folder}/ directory - MISSING!")
            all_good = False

    print("=" * 50)

    # Check Python dependencies
    print("\nChecking Python dependencies...")
    print("-" * 50)

    dependencies = ['flask', 'pdfplumber', 'openpyxl']

    for dep in dependencies:
        try:
            __import__(dep)
            print(f"✓ {dep}")
        except ImportError:
            print(f"✗ {dep} - NOT INSTALLED!")
            print(f"  Install with: pip3 install {dep}")
            all_good = False

    print("=" * 50)

    if all_good:
        print("\n✓ All checks passed!")
        print("\nTo start the server, run:")
        print("  ./start_server.sh")
        print("\nThen open your browser to:")
        print("  http://localhost:5000")
    else:
        print("\n✗ Some checks failed!")
        print("\nPlease fix the issues above before starting the server.")

    print()

if __name__ == '__main__':
    test_setup()
