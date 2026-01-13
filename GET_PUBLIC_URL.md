# 🌍 Get Your Public URL - Simple Guide

You want a URL that works like any normal website. Here are your options:

---

## ⚡ FASTEST: ngrok (5 minutes)

**Perfect for right now - get a working URL in 5 minutes!**

### Quick Setup:

1. **Sign up** (30 seconds):
   - Go to: https://dashboard.ngrok.com/signup
   - Click "Sign up with Google" (easiest)

2. **Get your token** (30 seconds):
   - After signing up, you'll see "Your Authtoken"
   - Copy it (looks like `2a3b4c5d...`)

3. **Configure ngrok** (10 seconds):
   ```bash
   ngrok config add-authtoken YOUR_TOKEN_HERE
   ```

4. **Start the public server** (5 seconds):
   ```bash
   cd ~/ia_extractor_web
   ./start_public.sh
   ```

5. **Get your URL!**
   - You'll see something like: `https://abc123.ngrok-free.app`
   - **That's your URL!** Share it with anyone!

### ✅ Example URL:
```
https://a1b2-c3d4-e5f6.ngrok-free.app
```

Send this to anyone - they can open it like any website!

### 📱 Works on:
- Desktop computers
- Laptops
- Phones
- Tablets
- From anywhere in the world!

### ⚠️ Note:
- URL changes when you restart (free plan)
- Need to keep your Mac on
- Perfect for testing/temporary use

---

## 🚀 BEST: Railway.app (15 minutes)

**Permanent URL that never changes - like a real website!**

### What you get:
```
https://ia-extractor.up.railway.app
```

A permanent URL that:
- ✅ Works forever
- ✅ Never changes
- ✅ Works even when your Mac is off
- ✅ Free (500 hours/month)
- ✅ Professional & reliable

### Setup Steps:

**1. Create GitHub account** (if you don't have one):
   - Go to: https://github.com/signup
   - Sign up (free)

**2. Install GitHub Desktop** (easiest way):
   - Download: https://desktop.github.com
   - Install and sign in

**3. Publish your code**:
   - Open GitHub Desktop
   - File → Add Local Repository
   - Choose: `~/ia_extractor_web`
   - Click "Publish Repository"
   - Name: `ia-extractor`
   - Click "Publish"

**4. Deploy to Railway**:
   - Go to: https://railway.app
   - Sign in with GitHub
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose `ia-extractor`
   - Wait 2-3 minutes

**5. Get your permanent URL**:
   - In Railway, go to Settings
   - Click "Generate Domain"
   - You get: `https://ia-extractor.up.railway.app`

### ✅ Done!

Now you have a **permanent URL** you can:
- 📧 Email to anyone
- 🔖 Bookmark
- 📱 Share on Slack/Teams
- 💾 Print on business cards

It works **forever** - no need to keep your Mac on!

---

## 📊 Comparison

| | ngrok (Quick) | Railway (Permanent) |
|---|---|---|
| **Setup time** | 5 minutes | 15 minutes |
| **URL** | Changes each restart | **Permanent** |
| **Mac needs to be on?** | Yes | **No** |
| **Good for** | Testing, quick share | Professional use |
| **Example URL** | `abc123.ngrok-free.app` | `ia-extractor.up.railway.app` |

---

## 🎯 My Recommendation

**Do BOTH!**

1. **Start with ngrok** (right now - 5 minutes)
   - Get a working URL immediately
   - Test it out
   - Share with your assistant

2. **Then do Railway** (this weekend - 15 minutes)
   - Get your permanent URL
   - Share that going forward
   - No more thinking about it

---

## 🚀 Super Quick Start (ngrok)

Copy and paste these commands:

```bash
# If you haven't signed up yet, go to: https://dashboard.ngrok.com/signup
# Then get your token and run:
ngrok config add-authtoken YOUR_TOKEN_HERE

# Start the public server:
cd ~/ia_extractor_web
./start_public.sh
```

You'll see your public URL appear!

---

## 📧 What to Send Your Assistant

Once you have your URL (from ngrok or Railway):

```
Subject: IA PDF to Excel Converter

Hi!

I've set up a tool to convert IA PDFs to Excel.

Just go to this link:
https://YOUR-URL-HERE

Then:
1. Drag your PDF file onto the page
2. Click "Upload & Process"
3. Download the Excel file

That's it! Works from any browser, any device.
```

---

## 🆘 Need Help?

**ngrok not working?**
- Make sure you signed up at https://dashboard.ngrok.com/signup
- Make sure you added your authtoken
- Check that Flask is running (try `localhost:5001` in browser first)

**Railway not deploying?**
- Make sure all files are committed to GitHub
- Check Railway logs for errors
- All required files are already created for you

**Want me to do it for you?**
- I can walk you through it step-by-step
- Or add password protection
- Or set up a custom domain

---

## 🎉 You're Ready!

Choose your path:
- **Quick:** Run `./start_public.sh` (5 min)
- **Permanent:** Follow Railway steps (15 min)

Both give you a URL that works from anywhere! 🌍
