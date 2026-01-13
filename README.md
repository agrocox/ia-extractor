# IA Data Extractor Web Application

A simple web application for extracting data from Interment Authorization (IA) PDF forms and converting them to Excel spreadsheets.

## Features

- ✨ **Drag & Drop Interface** - Simply drag PDF files onto the page
- 📄 **PDF Processing** - Automatically extracts data from all IA forms in the PDF
- 📊 **Excel Export** - Generates formatted Excel spreadsheet with all data
- 🚀 **Easy to Use** - No technical knowledge required
- 💻 **Works Offline** - Runs on your local computer

## Quick Start

### Option 1: Double-click to start (Easiest)

1. Open Finder and navigate to: `~/ia_extractor_web/`
2. Double-click `start_server.sh`
3. A Terminal window will open and show the server starting
4. Open your web browser and go to: `http://localhost:5001`

### Option 2: Start from Terminal

```bash
cd ~/ia_extractor_web
./start_server.sh
```

Then open your browser and go to: `http://localhost:5001`

## How to Use

1. **Start the server** (see Quick Start above)
2. **Open your browser** to `http://localhost:5001`
3. **Upload your PDF**:
   - Drag and drop the PDF file onto the upload area, OR
   - Click "Choose File" to browse for your PDF
4. **Click "Upload & Process"**
5. **Download the Excel file** when processing is complete

## File Locations

- **Uploaded PDFs**: Automatically deleted after processing
- **Generated Excel files**: Saved to `~/ia_extractor_web/output/`
- **Files are automatically cleaned up** after 1 hour

## Data Extracted

The application extracts the following fields from each IA form:

| Column | Field |
|--------|-------|
| A | Burial # |
| B | Deceased Name (Last, First) |
| C | Date of Death (MM/DD/YYYY) |
| D | NOK Name (Last, First) |
| E | Relation to Deceased |
| F | Contact Info (Phone) |

## Stopping the Server

To stop the server:
- Press `Ctrl + C` in the Terminal window where the server is running

## Troubleshooting

### Server won't start

```bash
# Make sure Flask is installed
pip3 install flask pdfplumber openpyxl

# Then try starting again
./start_server.sh
```

### Can't access the website

- Make sure the server is running (you should see "Running on http://0.0.0.0:5000")
- Try going to: `http://127.0.0.1:5000` instead of `http://localhost:5001`

### Error processing PDF

- Make sure the file is a valid PDF
- Check that the PDF contains IA forms in the expected format
- Try with a smaller PDF (1-5 pages) to test

## Sharing with Your Assistant

### For Your Assistant to Use:

**Simple Instructions:**

1. Go to Applications > Utilities > Terminal
2. Type: `cd ~/ia_extractor_web && ./start_server.sh`
3. Press Enter
4. Open Safari (or any browser) and go to: `http://localhost:5001`
5. Drag your IA PDF file onto the page
6. Click "Upload & Process"
7. Click "Download Excel File" when it's done
8. When finished, close the Terminal window (press Ctrl+C first)

**Even Simpler (if you set it up):**

1. Create a shortcut on the Desktop to `start_server.sh`
2. Double-click the shortcut
3. Go to `http://localhost:5001` in a browser
4. Drag & drop PDF files

## Technical Details

- **Backend**: Python Flask
- **PDF Processing**: pdfplumber
- **Excel Generation**: openpyxl
- **Port**: 5000 (default)
- **Host**: localhost (127.0.0.1)

## Security Notes

- Server only accepts PDF files
- Maximum file size: 50MB
- Old files automatically cleaned after 1 hour
- Server only accessible from your computer (not from internet)

## Support

If you encounter any issues:
1. Check the Terminal window for error messages
2. Make sure all required libraries are installed
3. Try restarting the server

---

Created with ❤️ for easy IA data extraction
