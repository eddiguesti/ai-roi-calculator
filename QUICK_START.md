# Quick Start Guide - New Calculator

## 🚀 Getting Started

### Open the Calculator
Simply open **`calculator-redesigned.html`** in any modern browser:
- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+

No installation, no server, no dependencies needed!

---

## 📖 How to Use (4 Simple Steps)

### Step 1: Business Info (30 seconds)
1. **Select your property type**:
   - Hotel (traditional, boutique, B&B)
   - Resort (full-service, vacation properties)
   - Campsite (RV parks, glamping)
   - Travel Agency (tour operators)

2. **Select your business size**:
   - Small (1-50 units, <100 bookings/month)
   - Medium (50-200 units, 100-500 bookings/month)
   - Large (200+ units, 500+ bookings/month)

3. Click **Continue**

---

### Step 2: Automation Solutions (1 minute)
1. **Browse available solutions** (changes based on your property type)
2. **Click to select** features that interest you:
   - **Green badges** = Time-saving automation
   - **Blue badges** = Revenue-generating features
   - **Purple badges** = Conversion-boosting tools

3. Select as many or as few as you want
4. Click **Continue**

💡 **Tip**: Select 3-5 solutions for most accurate results

---

### Step 3: Your Operations (1 minute)
1. **Adjust the sliders** to match your current metrics

**Smart Feature**: Only relevant sliders appear!
- Selected email automation? See email/staff hour sliders
- Selected dynamic pricing? See room/rate/occupancy sliders
- Selected both? See all relevant sliders

2. Be as accurate as possible (better input = better output)
3. Click **Calculate My ROI**

---

### Step 4: Results (2-3 minutes)
1. **Review your projection**:
   - Total Annual Benefit (cost savings + revenue increases)
   - Time Saved Weekly (staff hours freed up)
   - ROI Timeline (months to break-even)

2. **Explore the chart** showing benefit breakdown

3. **Read the insights** tailored to your selections

4. **Book a consultation** using the CTA button

5. Or click **Start Over** to try different scenarios

---

## 🎯 Example Walkthroughs

### Example 1: Medium Hotel - Full Automation

**Step 1**: Select Hotel → Medium
**Step 2**: Select:
- ✅ AI Email Sorting
- ✅ AI Auto-Responses
- ✅ Dynamic Pricing Engine
- ✅ AI Booking Assistant
- ✅ PMS/CRM Integration

**Step 3**: Adjust sliders:
- Emails: 150/day
- Staff hours: 50 hrs/week
- Hourly rate: £18
- Rooms: 100 units
- Room rate: £120/night
- Occupancy: 75%

**Step 4**: See results:
- Total benefit: ~£120k-150k annually
- Time saved: ~35-40 hrs/week
- ROI: 0.5-1 month

---

### Example 2: Small Campsite - Pricing Focus

**Step 1**: Select Campsite → Small
**Step 2**: Select:
- ✅ Dynamic Pricing Engine
- ✅ Channel Manager Integration

**Step 3**: Adjust sliders:
- Pitches: 30
- Average rate: £35/night
- Occupancy: 60%

**Step 4**: See results:
- Total benefit: ~£25k-35k annually
- Time saved: 0 hrs (no time-saving features selected)
- ROI: 1-2 months
- Focus on revenue increase insights

---

### Example 3: Large Resort - Comprehensive Suite

**Step 1**: Select Resort → Large
**Step 2**: Select all 8 solutions

**Step 3**: Adjust sliders (all 6 appear):
- Emails: 300/day
- Staff hours: 120 hrs/week
- Hourly rate: £20
- Rooms: 250 units
- Room rate: £180/night
- Occupancy: 80%

**Step 4**: See results:
- Total benefit: £400k+ annually
- Time saved: 90+ hrs/week (2+ FTE)
- ROI: <1 month
- Comprehensive insights across all benefit types

---

## 💡 Pro Tips

### For Best Results:
1. **Be honest with your metrics** - Accuracy in = Accuracy out
2. **Try multiple scenarios** - Use "Start Over" to test different combinations
3. **Note the breakdown** - See what drives the most value for you
4. **Screenshot your results** - Save for later reference
5. **Book the consultation** - Discuss implementation details

### Understanding the Results:

**Total Annual Benefit** includes:
- 💰 Labor cost savings (from time automation)
- 📈 Revenue increases (from pricing/channel optimization)
- 🎯 Conversion revenue (from better booking rates)

**Time Saved** measures:
- Staff hours freed up per week
- Can be converted to FTE (Full Time Equivalents)
- Allows reallocation to guest service

**ROI Timeline** shows:
- Months to recoup initial setup investment
- Based on your property size:
  - Small: £3,000 setup
  - Medium: £5,000 setup
  - Large: £8,000 setup

---

## 🎨 Design Features to Notice

### Hover Effects
- **Property cards**: Lift up on hover
- **Solution cards**: Green border on hover
- **Buttons**: Scale up on hover, scale down on click

### Selection Feedback
- **Selected cards**: Green border + subtle glow
- **Progress bar**: Animates as you advance
- **Step indicators**: Fill with gradient when active, checkmark when complete

### Animations
- **Entry**: Smooth fade and slide animations
- **Results**: Staggered stat card appearance
- **Chart**: Animated bar growth
- **Transitions**: Smooth page changes

---

## 📱 Mobile Usage

### Optimized for Mobile:
- Touch-friendly buttons (44px min)
- Swipe-friendly sliders
- Readable text sizes
- No horizontal scroll
- Fast, responsive

### Best Practices:
- Use portrait orientation
- Scroll slowly to enjoy animations
- Tap cards firmly for selection
- Take your time on sliders for accuracy

---

## 🛠️ Customization Guide (For Developers)

### Change Colors
Edit the `:root` CSS variables:
```css
:root {
  --spotify-green: #1DB954;  /* Change primary color */
  --monday-purple: #6161FF;  /* Change accent */
  /* etc. */
}
```

### Modify Solutions
Edit the `solutions` object:
```javascript
const solutions = {
  hotel: [
    {
      id: 'my-solution',
      name: 'My Custom Solution',
      type: 'time',  // or 'revenue' or 'conversion'
      savings: 75,   // percentage
      desc: 'Description',
      metrics: ['staffHours']  // which sliders to show
    },
    // ...
  ]
};
```

### Adjust Slider Ranges
Edit `metricConfigs`:
```javascript
const metricConfigs = {
  myMetric: {
    label: 'My Custom Metric',
    min: 0,
    max: 100,
    step: 5,
    default: 50,
    format: (v) => v + ' units'
  }
};
```

### Update Setup Costs
Edit in `calculateResults()`:
```javascript
const setupCosts = {
  small: 3000,   // Change costs
  medium: 5000,
  large: 8000
};
```

---

## 🐛 Troubleshooting

### Icons Not Showing?
- **Check internet connection** (Font Awesome loads from CDN)
- **Wait a few seconds** for CDN to load
- **Refresh the page**

### Chart Not Appearing?
- **Check browser console** for errors
- **Ensure Chart.js CDN is accessible**
- **Try in Chrome/Firefox** (best compatibility)

### Sliders Not Showing?
- **Select at least one solution** in Step 2
- **Ensure you clicked Continue** to reach Step 3
- **Try refreshing and starting over**

### Results Look Wrong?
- **Verify your inputs** in Step 3
- **Check solution selections** in Step 2
- **Ensure property type/size** set in Step 1
- **Try realistic numbers** (not extreme values)

### Mobile Issues?
- **Use latest iOS Safari or Chrome**
- **Clear browser cache**
- **Check screen orientation** (portrait preferred)

---

## 📊 Interpreting Your Results

### If Total Benefit is High (£100k+):
- ✅ Multiple high-impact solutions selected
- ✅ Large property or high volume
- ✅ Good opportunity for automation
- 👉 **Action**: Book consultation to discuss implementation

### If Total Benefit is Moderate (£20k-100k):
- ✅ Solid ROI potential
- ✅ Mix of time-saving and revenue features
- ✅ Typical for small-medium properties
- 👉 **Action**: Compare different solution combinations

### If Total Benefit is Low (<£20k):
- ℹ️ May have selected only 1-2 solutions
- ℹ️ Or very small property size
- ℹ️ Consider adding more solutions
- 👉 **Action**: Try selecting additional features

### If Time Saved is 0:
- ℹ️ You only selected revenue/conversion features
- ℹ️ No time-saving automation selected
- ✅ This is fine! Results focus on revenue
- 👉 **Note**: Different businesses have different priorities

### If ROI is < 2 months:
- 🎉 Excellent! Very fast payback
- ✅ High-value solution set
- ✅ Good fit for automation
- 👉 **Action**: Definitely book a consultation

### If ROI is 3-6 months:
- ✅ Standard ROI for automation
- ✅ Still excellent investment
- 👉 **Action**: Review solution priorities

### If ROI is > 12 months:
- ℹ️ Lower benefit relative to setup cost
- ℹ️ Consider higher-value solutions
- 👉 **Action**: Try different combinations

---

## 🎯 Next Steps After Calculating

### 1. Screenshot Your Results
- Use your device's screenshot function
- Save for reference and comparison
- Share with decision-makers

### 2. Try Different Scenarios
- Click "Start Over"
- Test different solution combinations
- Compare results side-by-side

### 3. Book a Consultation
- Click the green CTA button in results
- Schedule via Calendly
- Discuss your specific needs

### 4. Share with Your Team
- Email the calculator link
- Have them run their own projections
- Compare perspectives

### 5. Research Solutions
- Review the solutions you selected
- Research implementation requirements
- Prepare questions for consultation

---

## 📞 Support

### Questions About:
- **The Calculator**: See [REDESIGN_OVERVIEW.md](REDESIGN_OVERVIEW.md)
- **The Metrics**: See [METRICS_REFERENCE.md](METRICS_REFERENCE.md)
- **Comparisons**: See [COMPARISON.md](COMPARISON.md)
- **Examples**: See [BEFORE_AFTER_EXAMPLES.md](BEFORE_AFTER_EXAMPLES.md)

### Technical Issues:
- Check browser compatibility
- Clear cache and refresh
- Try different browser
- Check internet connection

### Sales Questions:
- Use the "Book Consultation" button
- Or visit: https://calendly.com/jengu-meeting/30min

---

## 🎉 Enjoy Your New Calculator!

The redesigned calculator combines:
- ✨ Beautiful Spotify/Monday.com design
- 🧠 Intelligent conditional logic
- 📊 Research-backed calculations
- 🎯 Optimized for conversions

Take your time, explore all the features, and see how AI automation can transform your hospitality business!
