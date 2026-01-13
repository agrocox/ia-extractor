# 🌍 Deploy IA Extractor - Public Internet Access

**You want a URL that works from ANYWHERE, like a normal website.**

I've prepared TWO options for you:

---

## ⚡ OPTION 1: Quick & Temporary - ngrok (5 minutes)

Perfect for: Testing, sharing with 1-2 people temporarily

### Step 1: Sign up for ngrok (Free)

1. Go to: https://dashboard.ngrok.com/signup
2. Sign up with Google/GitHub (easiest) or email
3. You'll get to a dashboard

### Step 2: Get your auth token

1. On the dashboard, you'll see "Your Authtoken"
2. Copy that token (looks like: `2a...xyz`)
3. Run this command (replace YOUR_TOKEN):

```bash
ngrok config add-authtoken YOUR_TOKEN_HERE
```

### Step 3: Start ngrok

Make sure your Flask app is running first:
```bash
cd ~/ia_extractor_web
python3 app.py
```

Then in a NEW terminal window:
```bash
ngrok http 5001
```

### Step 4: Get your public URL

You'll see something like:
```
Forwarding    https://a1b2-c3d4-e5f6.ngrok-free.app -> http://localhost:5001
```

**That's your URL!** Share it with anyone:
```
https://a1b2-c3d4-e5f6.ngrok-free.app
```

### ✅ Done!

Anyone can access it from anywhere in the world!

### ⚠️ Notes:
- URL changes every time you restart ngrok (free plan)
- Need to keep your computer on
- Need to keep the terminal windows open
- Free plan has some limits but fine for normal use

---

## 🚀 OPTION 2: Permanent & Professional - Railway.app (15 minutes)

Perfect for: Permanent solution, professional use, always accessible

### What you get:
- ✅ Permanent URL (like `ia-extractor.up.railway.app`)
- ✅ Always online (no need to keep your computer on)
- ✅ Free tier (500 hours/month)
- ✅ Automatic HTTPS
- ✅ Fast & reliable

### Step 1: Create Railway Account

1. Go to: https://railway.app
2. Click "Login" → Sign up with GitHub (easiest)
3. Authorize Railway to access your GitHub

### Step 2: Create a GitHub Repository

**Option A - Use GitHub Desktop (Easiest):**

1. Download GitHub Desktop: https://desktop.github.com
2. Open GitHub Desktop
3. File → Add Local Repository
4. Choose: `~/ia_extractor_web`
5. Click "Create Repository"
6. Click "Publish Repository"
7. Name it: `ia-extractor`
8. Make it Public or Private (your choice)
9. Click "Publish Repository"

**Option B - Use Command Line:**

```bash
cd ~/ia_extractor_web

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - IA Data Extractor"

# Create repo on GitHub (you'll need GitHub CLI)
# Or manually create a repo on github.com and then:
git remote add origin https://github.com/YOUR_USERNAME/ia-extractor.git
git branch -M main
git push -u origin main
```

### Step 3: Deploy to Railway

1. Go to: https://railway.app/dashboard
2. Click "New Project"
3. Click "Deploy from GitHub repo"
4. Select your `ia-extractor` repository
5. Railway will auto-detect it's a Python app
6. Click "Deploy"
7. Wait 2-3 minutes for deployment

### Step 4: Get your URL

1. Click on your deployed project
2. Go to "Settings" tab
3. Click "Generate Domain"
4. You'll get a URL like: `ia-extractor.up.railway.app`

### ✅ Done!

Your app is now live at:
```
https://ia-extractor.up.railway.app
```

Share this URL with ANYONE, ANYWHERE!

### 📝 Notes:
- Completely free for first 500 hours/month
- App stays online even when your computer is off
- Auto-deploys when you push changes to GitHub
- Can add custom domain later

---

## 🎯 Which Should You Choose?

| Feature | ngrok | Railway.app |
|---------|-------|-------------|
| **Setup Time** | 5 minutes | 15 minutes |
| **URL** | Changes each restart | Permanent |
| **Your computer** | Must stay on | Can turn off |
| **Free tier** | Yes | Yes (500 hrs/mo) |
| **Best for** | Quick testing | Production use |

### My Recommendation:

**For you:** Use **Railway.app**

Because:
- ✅ You want to "send the url to anyone and it load like any other link"
- ✅ Permanent URL you can bookmark/share
- ✅ No need to keep your Mac on
- ✅ Professional solution
- ✅ Free tier is generous

---

## 🆘 Need Help?

### Railway deployment failing?

Make sure you have all these files (already created for you):
- ✅ `requirements.txt`
- ✅ `Procfile`
- ✅ `railway.toml`
- ✅ `app.py` (updated for cloud)

### ngrok not working?

```bash
# Check if ngrok is installed
ngrok version

# If not, install it
brew install ngrok
```

---

## 🎉 Quick Start Commands

### For ngrok (Quick & Temporary):

```bash
# Terminal 1: Start Flask
cd ~/ia_extractor_web
python3 app.py

# Terminal 2: Start ngrok
ngrok http 5001
```

### For Railway (Permanent):

Just follow the steps above - it's a one-time setup!

---

## 🔐 Want to Add Password Protection?

Let me know and I can add:
- Simple password login
- User accounts
- API keys
- IP whitelist

Just say the word!

---

**Ready to deploy?** Follow the steps for Railway.app above - that's what you want! 🚀
