#!/bin/bash
# Double-click this file to start the IA Data Extractor

# Get the directory where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change to that directory
cd "$DIR"

# Clear the screen
clear

# Display welcome message
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║           IA DATA EXTRACTOR WEB APPLICATION                ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "Starting server..."
echo ""
echo "Once the server starts, open your web browser and go to:"
echo ""
echo "    http://localhost:5001"
echo ""
echo "------------------------------------------------------------"
echo ""

# Start the Flask app
python3 app.py

# Keep terminal open if there's an error
if [ $? -ne 0 ]; then
    echo ""
    echo "------------------------------------------------------------"
    echo "Press any key to close this window..."
    read -n 1
fi
