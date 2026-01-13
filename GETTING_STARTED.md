# Getting Started with IA Data Extractor

## ✨ What You Got

I've created a **web application** that allows your assistant (or anyone) to convert IA PDF forms to Excel spreadsheets using a simple drag-and-drop interface.

**No technical knowledge required!** Just drag, drop, and download.

---

## 🚀 Quick Start (For You)

### Option 1: Double-Click to Start (Easiest!)

1. Go to your home folder: `~/ia_extractor_web/`
2. **Double-click** the file: `LAUNCH_APP.command`
3. A Terminal window will open
4. Open Safari and go to: **`localhost:5001`**
5. You'll see a beautiful purple page - that's the app!

### Option 2: Start from Terminal

```bash
cd ~/ia_extractor_web
./start_server.sh
```

Then go to `localhost:5001` in your browser.

---

## 👤 For Your Assistant

**Give them this file:** `ASSISTANT_INSTRUCTIONS.md`

It has step-by-step instructions with screenshots and troubleshooting.

**Or just tell them:**

1. Double-click `LAUNCH_APP.command` in the `ia_extractor_web` folder
2. Open browser to `localhost:5001`
3. Drag PDF file onto the page
4. Click "Upload & Process"
5. Download the Excel file

That's it!

---

## 📂 What's Inside

```
~/ia_extractor_web/
├── LAUNCH_APP.command          ← Double-click this to start!
├── app.py                       ← The server code
├── templates/
│   └── index.html              ← The web interface
├── uploads/                    ← Temporary PDF storage
├── output/                     ← Generated Excel files
├── README.md                   ← Technical documentation
├── ASSISTANT_INSTRUCTIONS.md   ← Simple guide for your assistant
└── test_app.py                 ← Test if everything works
```

---

## 🎨 Features

- **Drag & Drop** - No need to click browse buttons
- **Beautiful Interface** - Purple gradient design, clean and modern
- **Progress Indicator** - Shows when processing
- **Instant Download** - Get your Excel file immediately
- **Auto-Cleanup** - Old files deleted after 1 hour
- **Secure** - Only works on your computer, not accessible from internet

---

## 📊 What It Extracts

From each IA form in the PDF:

| Column | Data |
|--------|------|
| A | Burial # |
| B | Deceased Name (Last, First) |
| C | Date of Death |
| D | Next of Kin Name (Last, First) |
| E | Relationship |
| F | Phone Number |

All formatted exactly like your original spreadsheet!

---

## 🛠️ Testing

Want to make sure it works?

```bash
cd ~/ia_extractor_web
python3 test_app.py
```

You should see all checkmarks ✓

---

## 🆘 Troubleshooting

**Server won't start?**
```bash
pip3 install flask pdfplumber openpyxl
```

**Can't access localhost:5001?**
- Make sure the server is running (Terminal window is open)
- Try `127.0.0.1:5000` instead

**Processing fails?**
- Make sure it's a PDF file
- Make sure the PDF has IA forms in the expected format

---

## 🌐 Sharing on Network (Optional)

If you want your assistant to access this from their own computer on your network:

1. Find your computer's IP address:
   ```bash
   ipconfig getifaddr en0
   ```

2. Tell your assistant to go to:
   ```
   http://YOUR_IP_ADDRESS:5000
   ```
   (Replace YOUR_IP_ADDRESS with the number from step 1)

---

## 📱 Mobile Access (Bonus!)

The interface is mobile-friendly! Your assistant could even use it from an iPad:

1. Start the server on your Mac
2. Get your Mac's IP address
3. On iPad, go to `http://YOUR_MAC_IP:5000`
4. Upload PDFs from iPad's Files app

---

## 🔒 Security

- Server only accessible from your local network
- Accepts only PDF files (50MB max)
- All files auto-deleted after 1 hour
- No internet connection required
- No data leaves your computer

---

## 💡 Tips

1. **Keep the Terminal window open** while using the app
2. **Bookmark `localhost:5001`** in your browser for quick access
3. **Check the `output` folder** if downloads aren't working
4. **Press Ctrl+C in Terminal** to stop the server when done

---

## 📞 Support

If something isn't working:

1. Run the test: `python3 test_app.py`
2. Check the Terminal window for error messages
3. Make sure you're using the correct PDF format (IA forms)

---

## 🎉 You're All Set!

Your IA Data Extractor is ready to use!

**Next steps:**
1. Double-click `LAUNCH_APP.command`
2. Go to `localhost:5001`
3. Try it with your IA PDF!

Enjoy! 🚀
