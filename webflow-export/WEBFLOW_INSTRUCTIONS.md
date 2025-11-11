# Webflow Deployment Instructions for AI Agent ROI Calculator

This guide will help you deploy the AI Agent ROI Calculator to your Webflow site using the extracted code files.

## Files Included

1. **head-code.html** - Code for Webflow's "Before </head> tag" section
2. **body-code.html** - Code for the Webflow page body (Embed element)
3. **footer-code.html** - Code for Webflow's "Before </body> tag" section

---

## Step-by-Step Deployment Instructions

### Step 1: Set Up Your Webflow Page

1. Log in to your Webflow account and open your project
2. Create a new page or select an existing page where you want to add the calculator
3. Name it something like "ROI Calculator" or "AI Calculator"

### Step 2: Add Head Code (Fonts, Chart.js, and Styles)

1. In Webflow, go to **Pages** panel (left sidebar)
2. Click the **gear icon** next to your calculator page
3. Scroll down to **Custom Code** section
4. Find the **Inside <head> tag** text area
5. Open `head-code.html` and copy ALL the content
6. Paste it into the **Inside <head> tag** field
7. Click **Save**

**What this does:**
- Loads Inter font from Google Fonts
- Loads Font Awesome icons (v6.5.1)
- Loads Chart.js library for data visualization
- Includes all CSS styles for the calculator

### Step 3: Add Body Content (Calculator HTML)

1. From the Webflow Designer, go to your calculator page
2. From the **Add Elements** panel (+ icon), drag an **Embed** element onto your page
3. Double-click the Embed element to open the code editor
4. Open `body-code.html` and copy ALL the content
5. Paste it into the Embed element's code field
6. Click **Save & Close**

**What this does:**
- Adds all the calculator HTML structure
- Includes the multi-step form interface
- Contains all interactive elements (buttons, cards, sliders, etc.)

### Step 4: Add Footer Code (JavaScript)

1. Go back to **Pages** panel (left sidebar)
2. Click the **gear icon** next to your calculator page again
3. Scroll down to **Custom Code** section
4. Find the **Before </body> tag** text area
5. Open `footer-code.html` and copy ALL the content
6. Paste it into the **Before </body> tag** field
7. Click **Save**

**What this does:**
- Adds all JavaScript functionality for the calculator
- Handles step navigation, calculations, and chart rendering
- Manages form submissions and user interactions

### Step 5: Adjust Webflow Page Settings (Optional but Recommended)

1. **Remove Webflow's default container/section:**
   - If your page has a default container or section, you can delete it since the calculator has its own container

2. **Set page background (if needed):**
   - The calculator has a dark theme with background: #000000
   - Ensure your page body background is set to dark/black for consistency

3. **Check Embed width:**
   - Click on the Embed element
   - In the **Style** panel, set **Width** to **100%**
   - Set **Height** to **Auto** or a minimum height like **100vh**

### Step 6: Publish and Test

1. Click **Publish** in the top-right corner of Webflow
2. Select your publishing target
3. Click **Publish to Selected Domains**
4. Once published, visit your page and test:
   - Click through all 4 steps of the calculator
   - Test property type and size selections
   - Test AI agent/automation selections
   - Adjust sliders and verify calculations
   - Check that charts render correctly
   - Test the "Book Consultation" CTA link

---

## Troubleshooting

### Calculator Doesn't Display
- Verify the Embed element is visible on the page
- Check browser console (F12) for JavaScript errors
- Ensure all three code sections were added correctly

### Styles Not Working
- Make sure `head-code.html` was added to **Inside <head> tag**, not Before </body>
- Check that the entire CSS is present in the head section

### JavaScript Not Working
- Verify `footer-code.html` was added to **Before </body> tag**, not Inside <head>
- Check browser console for errors
- Ensure Chart.js script loaded correctly (it's in the head-code.html)

### Charts Not Rendering
- Verify Chart.js script is loaded (check Network tab in browser dev tools)
- Ensure the Chart.js CDN URL is accessible
- Check JavaScript console for Chart.js errors

### Font or Icons Not Loading
- Check that Google Fonts and Font Awesome CDN links are present in head-code.html
- Verify CDN URLs are not blocked by your network/firewall
- Check Network tab in browser dev tools to see if fonts/icons loaded

---

## Additional Customization

### Changing the Calendly Link
The calculator has a "Book Your Free Consultation" button that links to Calendly. To change this:

1. Go to **Pages** > **Page Settings** > **Before </body> tag**
2. Find the line: `href="https://calendly.com/jengu-meeting/30min"`
3. Replace with your own Calendly link
4. Save and republish

### Adjusting Colors
To change the color scheme, edit the CSS variables in `head-code.html`:

```css
:root {
  --spotify-green: #1DB954;        /* Primary green color */
  --spotify-green-hover: #1ED760;  /* Hover state */
  --spotify-dark: #121212;         /* Card backgrounds */
  --spotify-darker: #000000;       /* Page background */
  /* ... more variables ... */
}
```

### Form Integration
The calculator includes a custom inquiry form (Step 5). By default, it shows an alert. To integrate with your backend:

1. Open the **Before </body> tag** code in Page Settings
2. Find the `submitCustomInquiry` function (search for "submitCustomInquiry")
3. Replace the alert with your form submission logic (e.g., API call, Zapier webhook, etc.)

---

## Page Settings Quick Reference

**Inside <head> tag:**
- head-code.html (Fonts + Chart.js + All CSS Styles)

**Before </body> tag:**
- footer-code.html (All JavaScript functionality)

**Page Body:**
- Embed element containing body-code.html

---

## Support

If you encounter any issues:
1. Check all three code sections are in the correct locations
2. Verify no code was accidentally truncated during copy/paste
3. Check browser console for specific error messages
4. Test in a different browser to rule out browser-specific issues

For Webflow-specific help, visit: https://university.webflow.com/

---

## Notes

- The calculator is fully responsive and works on mobile, tablet, and desktop
- All external dependencies (fonts, icons, Chart.js) are loaded from CDNs
- No additional Webflow interactions are needed - everything is handled by JavaScript
- The calculator stores data in memory only (no backend/database required)
- Form submissions can be integrated with your preferred service (Zapier, Make, etc.)

---

**Last Updated:** 2025
**Version:** 1.0
