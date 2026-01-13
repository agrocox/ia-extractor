#!/bin/bash
# Startup script for IA Data Extractor Web App

echo "======================================"
echo "IA Data Extractor Web Application"
echo "======================================"
echo ""
echo "Starting server..."
echo ""

cd "$(dirname "$0")"
python3 app.py
