# ⚡ Quick Test Guide

## The Server is Already Running! ✓

I've started the web app for you. Here's how to test it:

---

## 🧪 Test in 3 Steps

### Step 1: Open Your Browser

Open **Safari** and go to:
```
http://localhost:5001
```

You should see a **purple page** with:
- "📋 IA Data Extractor" at the top
- A drag & drop upload area
- "Choose File" button

---

### Step 2: Upload a Test PDF

**Drag and drop** this file onto the upload area:
```
~/Downloads/RH IAS (p. 1-20).pdf
```

Or click "Choose File" and select it.

---

### Step 3: Process & Download

1. Click the blue **"Upload & Process"** button
2. Wait 5-10 seconds (you'll see a spinner)
3. When it says **"✓ Success!"** click **"Download Excel File"**
4. Check your Downloads folder for `IA_Log_[timestamp].xlsx`
5. Open it and verify the data!

---

## ✅ Expected Result

The Excel file should have:
- **Row 1**: Headers (Burial #, Deceased Name, DOD, etc.)
- **Rows 2-21**: Data from all 20 IA forms
- **Row 2** should be: `(blank) | Sparger, David | 08/29/2019 | Sparger, Virginia | Spouse | (765) 426-6823`

---

## 🛑 Stop the Server

When you're done testing:
```bash
pkill -f 'python3 app.py'
```

---

## 🔄 Start Again Later

To start the server again:
```bash
cd ~/ia_extractor_web
python3 app.py
```

Or just double-click `LAUNCH_APP.command`

---

## 📸 What You Should See

**Step 1 - The Upload Page:**
- Purple gradient background
- White card with "IA Data Extractor"
- Drag & drop area with document icon

**Step 2 - After Upload:**
- File info showing (name & size)
- Blue "Upload & Process" button
- Red "Clear" button

**Step 3 - Processing:**
- Spinner animation
- "Processing your PDF..." message

**Step 4 - Success:**
- Green success box
- "✓ Success!"
- "Extracted 20 IA records from your PDF"
- Green download button

---

## 🎉 That's It!

If all of this worked, your web app is ready for your assistant to use!

**Next:** Share the `ASSISTANT_INSTRUCTIONS.md` file with your assistant.
