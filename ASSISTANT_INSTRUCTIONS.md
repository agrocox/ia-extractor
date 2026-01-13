# Instructions for Your Assistant

## How to Convert IA PDFs to Excel

### Step 1: Start the Application

1. Open **Terminal** (Applications > Utilities > Terminal)
2. Copy and paste this command:
   ```
   cd ~/ia_extractor_web && ./start_server.sh
   ```
3. Press **Enter**
4. You'll see some text appear - this means it's working!
5. Look for the line that says "Running on http://0.0.0.0:5000"

### Step 2: Open the Website

1. Open **Safari** (or any web browser)
2. In the address bar, type: `localhost:5001`
3. Press **Enter**
4. You should see a purple page with "IA Data Extractor" at the top

### Step 3: Upload Your PDF

**Method 1 - Drag and Drop (Easier):**
1. Find your IA PDF file in Finder
2. Drag it onto the purple upload area
3. Click the blue "Upload & Process" button

**Method 2 - Browse for File:**
1. Click the "Choose File" button
2. Find and select your IA PDF
3. Click the blue "Upload & Process" button

### Step 4: Download Your Excel File

1. Wait for the processing to finish (usually 5-30 seconds)
2. When you see "✓ Success!", click the green "Download Excel File" button
3. The Excel file will download to your Downloads folder
4. Open it in Excel or Numbers to view the data

### Step 5: Close the Application (When Done)

1. Go back to the Terminal window
2. Press **Ctrl + C** (hold Control and press C)
3. Type `exit` and press Enter
4. Close the Terminal window

---

## Quick Reference

**Start Server:**
```
cd ~/ia_extractor_web && ./start_server.sh
```

**Website Address:**
```
localhost:5001
```

**Stop Server:**
- Press `Ctrl + C` in Terminal

---

## Troubleshooting

**Q: The website won't load**
- Make sure you started the server in Terminal first
- Check that you typed `localhost:5001` correctly
- Try `127.0.0.1:5000` instead

**Q: It says "Connection Refused"**
- The server isn't running - go back to Step 1

**Q: Processing failed**
- Make sure your file is a PDF
- Check that the PDF has IA forms in it
- Try a smaller PDF to test

**Q: Download doesn't work**
- Check your Downloads folder - it might already be there
- Try right-clicking the download button and select "Save Link As"

---

## Need Help?

If something isn't working:
1. Close the Terminal window
2. Wait 10 seconds
3. Start over from Step 1

If you still have problems, contact the person who set this up for you.
