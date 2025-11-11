# AI ROI Calculator for Hospitality & Tourism

A professional, interactive ROI calculator for hospitality businesses to calculate potential savings and revenue increases from AI automation.

## 🚀 Features

- **Multi-step Calculator Flow** with validation
- **Personalized Results** based on business type and size
- **Advanced Charts** (Waterfall & Donut) showing ROI breakdown
- **Custom AI Software Inquiry Form** with validation
- **Mobile Responsive** design
- **Professional Animations** and smooth transitions
- **8 Automations** per property type (Hotel, Resort, Campsite, Travel Agency)

## 📊 What It Calculates

- Cost Savings from time-saving automations
- Revenue Growth from dynamic pricing and optimization
- Conversion Boost from AI chatbots and agents
- ROI Timeline and total annual benefit

## 🛠️ Tech Stack

- Pure HTML/CSS/JavaScript (no frameworks)
- Chart.js for data visualization
- Font Awesome icons
- Google Fonts (Inter)

## 📦 Deployment to Webflow

### Method 1: Embed Code (Recommended)

1. In Webflow, add an **Embed element** to your page
2. Copy the entire contents of `calculator-ai-agents-2025.html`
3. Paste into the Webflow embed element
4. Publish your site

### Method 2: Custom Code in Page Settings

1. Go to Page Settings in Webflow
2. Add the CSS from `<style>` tags to **Before </head> tag**
3. Add the HTML from `<body>` tags to your page
4. Add the JavaScript from `<script>` tags to **Before </body> tag**

### Method 3: External Hosting

1. Host `calculator-ai-agents-2025.html` on GitHub Pages, Netlify, or Vercel
2. Embed using an iframe in Webflow:
   ```html
   <iframe src="https://your-github-pages-url.github.io/calculator-ai-agents-2025.html"
           width="100%"
           height="1200px"
           frameborder="0">
   </iframe>
   ```

## 🔧 Customization

### Colors
Edit CSS variables in the `:root` section:
```css
--spotify-green: #1DB954;
--spotify-dark: #121212;
--monday-blue: #00D2FF;
```

### Business Metrics
Edit the `metricConfigs` object in JavaScript:
```javascript
staffHours: { label: 'Staff hours per week', min: 10, max: 200, step: 5, default: 40 }
```

### Automations
Edit the `solutions` object to add/modify automations for each property type.

## ✅ Code Quality Improvements

### Security
- ✅ XSS prevention with input sanitization
- ✅ Email validation with regex
- ✅ Form validation before submission

### Performance
- ✅ Proper chart cleanup to prevent memory leaks
- ✅ Efficient DOM manipulation
- ✅ Optimized animations with GPU acceleration

### Error Handling
- ✅ Null checks before DOM manipulation
- ✅ Try-catch blocks for chart operations
- ✅ Graceful error messages (no alerts)
- ✅ Console logging for debugging

### User Experience
- ✅ Smooth validation error notifications
- ✅ Auto-hiding error messages
- ✅ Focus management on validation errors
- ✅ Scroll to top on reset

## 📝 Files

- `calculator-ai-agents-2025.html` - Main calculator (single file, all-in-one)
- `README.md` - This file
- `LICENSE` - MIT License
- Documentation:
  - `CUSTOM_AI_SOFTWARE_FEATURE.md` - Custom software feature docs
  - `CALCULATOR_IMPROVEMENTS_SUMMARY.md` - Calculation engine docs
  - `AI_FEATURES_IMPLEMENTATION_COMPLETE.md` - Features documentation

## 🐛 Known Issues

None currently. Tested on:
- Chrome 120+
- Firefox 121+
- Safari 17+
- Edge 120+

## 📄 License

MIT License - Free to use and modify

## 🤝 Support

For issues or questions, please open a GitHub issue.

## 🎯 Next Steps for Production

1. **Backend Integration**
   - Replace `console.log()` with actual API call in `submitCustomInquiry()`
   - Add error handling for API failures

2. **Analytics**
   - Add Google Analytics or Mixpanel tracking
   - Track conversion funnel drop-offs

3. **A/B Testing**
   - Test different copy variations
   - Test form field requirements

4. **Email Notifications**
   - Set up auto-responder for form submissions
   - Notify your team of new inquiries

---

Built with ❤️ for the hospitality industry
