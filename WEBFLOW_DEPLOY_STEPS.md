# Deploy to Webflow - Step by Step

## Method 1: Quick & Easy (Single Embed)

### Step 1: Copy the Calculator Code
1. Open: `calculator-ai-agents-2025.html`
2. Press **Ctrl+A** (select all)
3. Press **Ctrl+C** (copy)

### Step 2: Add to Webflow
1. Open your Webflow project
2. Go to the page where you want the calculator
3. From the **Add panel** (+), drag an **Embed** element onto the page
4. Click on the Embed element
5. In the settings panel, click **"Edit Custom Code"**
6. Press **Ctrl+V** (paste)
7. Click **"Save & Close"**

### Step 3: Configure the Embed
1. Select the Embed element
2. In **Settings**:
   - Height: Set to `1400px`
   - Or set to `Auto` if your Webflow plan allows

### Step 4: Publish
1. Click **"Publish"** in the top right
2. Select your domain
3. Click **"Publish to selected domains"**
4. Done! ✅

---

## Method 2: Professional (Split Code - Better Performance)

This method splits the code into 3 parts for better organization.

### Step 1: Add CSS to Page Settings

1. In Webflow, go to **Pages** panel
2. Hover over your page → Click the **⚙️ gear icon** (Page Settings)
3. Go to **Custom Code** tab
4. In the **"Inside &lt;head&gt; tag"** section:
   - Open `webflow-export/head-code.html`
   - Copy everything (Ctrl+A, Ctrl+C)
   - Paste into Webflow
5. Click **"Save"**

### Step 2: Add HTML to Page

1. Go back to the Designer
2. Add an **Embed** element where you want the calculator
3. Click **"Edit Custom Code"**
4. Open `webflow-export/body-code.html`
5. Copy everything (Ctrl+A, Ctrl+C)
6. Paste into the Embed
7. Click **"Save & Close"**

### Step 3: Add JavaScript to Page Settings

1. Go back to **Page Settings** (⚙️ gear icon)
2. Go to **Custom Code** tab
3. In the **"Before &lt;/body&gt; tag"** section:
   - Open `webflow-export/footer-code.html`
   - Copy everything (Ctrl+A, Ctrl+C)
   - Paste into Webflow
4. Click **"Save"**

### Step 4: Publish

1. Click **"Publish"** in top right
2. Test the calculator on your live site!

---

## Method 3: GitHub Pages + iFrame (Recommended for Easy Updates)

### Benefits:
- ✅ Calculator hosted on GitHub (free, fast)
- ✅ Update once in GitHub, changes reflect everywhere
- ✅ Doesn't count against Webflow custom code limits
- ✅ Faster page load times

### Step 1: Enable GitHub Pages
1. Go to: https://github.com/eddiguesti/ai-roi-calculator/settings/pages
2. Under "Source":
   - Branch: `main`
   - Folder: `/ (root)`
3. Click "Save"
4. Wait 1-2 minutes

### Step 2: Add iFrame to Webflow
1. In Webflow, add an **Embed** element
2. Paste this code:

```html
<iframe
  src="https://eddiguesti.github.io/ai-roi-calculator/calculator-ai-agents-2025.html"
  width="100%"
  height="1400px"
  frameborder="0"
  style="border: none; display: block; min-height: 1400px; background: #000000;"
  title="AI ROI Calculator"
  loading="lazy">
</iframe>
```

3. Click "Save & Close"
4. Publish!

### To Update Calculator Later:
1. Edit `calculator-ai-agents-2025.html` locally
2. Run in terminal:
   ```bash
   cd "C:\Users\eddgu\Downloads\calculator"
   git add .
   git commit -m "Update calculator"
   git push
   ```
3. Wait 1 minute - changes go live automatically!

---

## Troubleshooting

### Calculator doesn't show in Webflow preview
- This is normal! Webflow preview sometimes doesn't load embeds
- **Solution**: Publish the site and check the live URL

### Calculator looks broken
- **Check**: Make sure you copied ALL the code
- **Check**: If using split method, ensure all 3 parts are added
- **Solution**: Try Method 1 (single embed) instead

### Charts don't appear
- **Check**: Make sure Chart.js CDN is loading
- **Solution**: Look for errors in browser console (F12)
- If using split method, ensure `head-code.html` includes Chart.js script

### Form doesn't submit
- This is expected - form logs to console by default
- **Solution**: See `README.md` for backend integration instructions

### Calculator is cut off
- **Solution**: Increase embed height to `1400px` or `1600px`
- Or use `min-height: 1400px` in the style attribute

---

## Best Practice Recommendations

### For Production Sites:
- Use **Method 3** (GitHub Pages + iFrame)
- Easier to maintain and update
- Better performance

### For Testing/Development:
- Use **Method 1** (Single Embed)
- Faster to deploy
- Easy to iterate

### For Maximum Control:
- Use **Method 2** (Split Code)
- Better organization
- More customizable

---

## Support

- 📖 Full docs: See `README.md`
- 🚀 Deployment: See `DEPLOYMENT.md`
- 💻 Git help: See `GIT_COMMANDS.md`

---

**Choose your method and deploy!** 🎉
