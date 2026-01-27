# 🚀 Railway Deployment - Step by Step

## What You're Getting:

A permanent, professional URL like:
```
https://ia-extractor.up.railway.app
```

---

## Step 1: GitHub Authentication (2 minutes)

Run this command:
```bash
gh auth login
```

You'll be asked questions - choose these answers:
1. **What account?** → GitHub.com
2. **What protocol?** → HTTPS
3. **Authenticate?** → Login with a web browser
4. **Press Enter** → It will give you a code
5. **Copy the code** → Opens browser
6. **Paste code** → Authorize
7. **Done!**

---

## Step 2: Create GitHub Repository (1 minute)

Run this command:
```bash
cd ~/ia_extractor_web
gh repo create ia-extractor --public --source=. --remote=origin --push
```

This creates a public repo and pushes your code.

---

## Step 3: Deploy to Railway (5 minutes)

### 3a. Sign up for Railway:
1. Go to: https://railway.app
2. Click "Login"
3. Click "Login with GitHub"
4. Authorize Railway

### 3b. Create New Project:
1. Click "New Project"
2. Click "Deploy from GitHub repo"
3. Select "ia-extractor"
4. Railway auto-detects it's Python
5. Click "Deploy"
6. Wait 2-3 minutes for build

### 3c. Get Your URL:
1. Click on your project
2. Go to "Settings" tab
3. Under "Domains" click "Generate Domain"
4. You get: `ia-extractor.up.railway.app`

---

## ✅ Done!

Your permanent URL is now live!

Share it with anyone:
```
https://ia-extractor.up.railway.app
```

---

## 🔥 Benefits:

- ✅ Clean, professional URL
- ✅ Never changes
- ✅ Works even when Mac is off
- ✅ Free (500 hours/month)
- ✅ Auto-updates when you push to GitHub
- ✅ Way easier to share

---

## 🛑 Stop the Old ngrok Server:

Once Railway is working, stop the old server:
```bash
pkill ngrok
pkill -f 'python3 app.py'
```

You won't need it anymore!
