# Deployment Guide for Webflow

## Quick Start for Webflow

### Option 1: Embed Element (Easiest - Recommended)

1. **Open your Webflow project**
2. **Add an Embed element** to your page where you want the calculator
3. **Copy the entire file** `calculator-ai-agents-2025.html`
4. **Paste into the Embed element**
5. **Set the embed height** to `auto` or `1200px`
6. **Publish your site**

✅ **Pros**: Simplest method, everything in one place
❌ **Cons**: May be slow in Webflow editor (fine on published site)

---

### Option 2: Split Code Method (More Control)

#### Step 1: Add CSS to Page Settings

1. Go to **Page Settings** (gear icon)
2. Click **Custom Code** tab
3. In **Inside `<head>` tag**, paste everything between `<style>` and `</style>` tags
4. Save

#### Step 2: Add HTML to Page

1. Add a **Div Block** where you want the calculator
2. Give it a class name (e.g., `calculator-wrapper`)
3. Add an **Embed element** inside the div
4. Paste everything between `<body>` and `</body>` tags from the HTML file
5. Save

#### Step 3: Add JavaScript to Page Settings

1. Go back to **Page Settings** → **Custom Code**
2. In **Before `</body>` tag**, paste everything between `<script>` and `</script>` tags
3. Save
4. Publish

✅ **Pros**: Better organization, easier to update
❌ **Cons**: More steps to set up

---

### Option 3: External Hosting + iFrame (Best Performance)

#### Step A: Host on GitHub Pages

1. **Initialize Git Repository**:
   ```bash
   cd C:\Users\eddgu\Downloads\calculator
   git init
   git add .
   git commit -m "Initial commit: AI ROI Calculator"
   ```

2. **Create GitHub Repository**:
   - Go to https://github.com/new
   - Name it: `ai-roi-calculator`
   - Don't initialize with README (we have one)
   - Click "Create repository"

3. **Push to GitHub**:
   ```bash
   git remote add origin https://github.com/YOUR-USERNAME/ai-roi-calculator.git
   git branch -M main
   git push -u origin main
   ```

4. **Enable GitHub Pages**:
   - Go to repository Settings
   - Click "Pages" in sidebar
   - Source: Deploy from branch `main` / `root`
   - Save
   - Your URL will be: `https://YOUR-USERNAME.github.io/ai-roi-calculator/calculator-ai-agents-2025.html`

#### Step B: Embed in Webflow

1. Add an **Embed element** in Webflow
2. Paste this code:
   ```html
   <iframe
     src="https://YOUR-USERNAME.github.io/ai-roi-calculator/calculator-ai-agents-2025.html"
     width="100%"
     height="1200px"
     frameborder="0"
     style="border: none; min-height: 1200px;">
   </iframe>
   ```
3. Publish your Webflow site

✅ **Pros**: Fastest loading, easy updates (just push to GitHub), no Webflow limits
❌ **Cons**: Requires GitHub account

---

## Alternative Hosting Options

### Netlify (Free & Easy)

1. Go to https://app.netlify.com/drop
2. Drag the entire `calculator` folder onto the page
3. Get your URL: `https://YOUR-SITE-NAME.netlify.app/calculator-ai-agents-2025.html`
4. Use in iframe (same as GitHub Pages method)

### Vercel (Free & Fast)

1. Install Vercel CLI: `npm install -g vercel`
2. Run: `vercel` in the calculator folder
3. Follow prompts
4. Get your URL and use in iframe

---

## Testing Before Deployment

1. **Open** `calculator-ai-agents-2025.html` in a browser
2. **Test all flows**:
   - ✅ Select property type and size
   - ✅ Choose automations
   - ✅ Adjust metrics sliders
   - ✅ View results and charts
   - ✅ Custom software inquiry form
   - ✅ Validation errors
   - ✅ Reset calculator

3. **Test on mobile**: Resize browser to 375px width

4. **Test in different browsers**:
   - Chrome
   - Firefox
   - Safari
   - Edge

---

## Common Issues & Solutions

### Issue: Calculator doesn't load in Webflow embed

**Solution**: Check the Webflow embed settings:
- Make sure height is set to `auto` or at least `1200px`
- Try publishing the site (may not work in preview)

### Issue: Styles look broken

**Solution**:
- If using split method, ensure CSS is in `<head>` tag
- Check for conflicting Webflow styles
- Add `!important` to critical styles if needed

### Issue: Charts don't appear

**Solution**:
- Ensure Chart.js CDN is loading: `https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.min.js`
- Check browser console for errors
- Try refreshing the page

### Issue: Form doesn't submit

**Solution**:
- This is expected - you need to add backend integration
- See `README.md` for backend setup instructions
- For now, check browser console - data is logged there

---

## Customization for Your Brand

### Update Colors

Find in CSS (line ~17):
```css
:root {
  --spotify-green: #1DB954;  /* Change to your brand color */
  --spotify-dark: #121212;   /* Change to your dark color */
}
```

### Update Company Name

Find and replace `Jengu` with your company name throughout the HTML.

### Update Calendly Link

Find (line ~1608):
```html
<a href="https://calendly.com/jengu-meeting/30min"
```
Replace with your Calendly link.

---

## Maintenance

### Updating the Calculator

**If using GitHub Pages/Netlify**:
1. Edit `calculator-ai-agents-2025.html` locally
2. Commit and push:
   ```bash
   git add .
   git commit -m "Update calculator"
   git push
   ```
3. Changes go live automatically (1-2 minutes)

**If using Webflow Embed**:
1. Edit the file
2. Copy new code
3. Paste into Webflow embed
4. Publish

---

## Need Help?

- 📧 Create a GitHub issue
- 📖 Check `README.md` for documentation
- 🔍 Search existing issues

---

**Ready to deploy?** Start with Option 1 (Embed) for fastest results!
