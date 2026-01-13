#!/bin/bash
# Start IA Extractor with public URL using ngrok

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║         IA EXTRACTOR - PUBLIC INTERNET ACCESS              ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Check if ngrok is configured
if ! ngrok config check &> /dev/null; then
    echo "⚠️  ngrok is not configured yet!"
    echo ""
    echo "Quick setup (2 minutes):"
    echo ""
    echo "1. Go to: https://dashboard.ngrok.com/signup"
    echo "2. Sign up (free)"
    echo "3. Copy your authtoken"
    echo "4. Run: ngrok config add-authtoken YOUR_TOKEN"
    echo ""
    echo "Then run this script again."
    echo ""
    exit 1
fi

# Get directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "Starting Flask app..."
python3 app.py > /tmp/ia_flask.log 2>&1 &
FLASK_PID=$!

echo "Waiting for Flask to start..."
sleep 3

echo "Starting ngrok tunnel..."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🌍 YOUR PUBLIC URL:"
echo ""

# Start ngrok and capture the URL
ngrok http 5001 --log=stdout &
NGROK_PID=$!

sleep 3

# Get the public URL
PUBLIC_URL=$(curl -s http://localhost:4040/api/tunnels | grep -o '"public_url":"https://[^"]*' | grep -o 'https://[^"]*' | head -1)

if [ -n "$PUBLIC_URL" ]; then
    echo "    $PUBLIC_URL"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "✅ Share this URL with anyone!"
    echo ""
    echo "They can:"
    echo "  • Open it in any browser"
    echo "  • From anywhere in the world"
    echo "  • Upload PDFs and download Excel files"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo ""
else
    echo "❌ Could not get public URL"
    echo "Visit http://localhost:4040 to see ngrok dashboard"
    echo ""
fi

# Wait for Ctrl+C
wait
