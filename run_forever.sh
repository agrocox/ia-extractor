#!/bin/bash
# Keep IA Extractor running permanently

cd ~/ia_extractor_web

# Kill any existing instances
pkill -f 'python3 app.py'
pkill ngrok

# Start Flask in the background (persistent)
nohup python3 app.py > ~/ia_extractor_web/flask.log 2>&1 &
sleep 3

# Start ngrok in the background (persistent)
nohup ngrok http 5001 --log=stdout > ~/ia_extractor_web/ngrok.log 2>&1 &
sleep 5

# Get the URL
PUBLIC_URL=$(curl -s http://localhost:4040/api/tunnels | python3 -c "import sys, json; data = json.load(sys.stdin); print(data['tunnels'][0]['public_url'] if data.get('tunnels') else 'Checking...')" 2>/dev/null)

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║              IA EXTRACTOR - NOW RUNNING FOREVER            ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "✅ Your public URL:"
echo ""
echo "    $PUBLIC_URL"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "✅ Server is now running in the background"
echo "✅ Safe to close this Terminal window"
echo "✅ Will keep running even after you close Terminal"
echo ""
echo "⚠️  Server will stop if you:"
echo "   • Restart your Mac"
echo "   • Run: pkill ngrok"
echo ""
echo "🔄 To restart after Mac reboot:"
echo "   cd ~/ia_extractor_web && ./run_forever.sh"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
