# Git Commands for Repository Setup

## Initial Setup (Do Once)

### 1. Initialize Git Repository
```bash
cd C:\Users\eddgu\Downloads\calculator
git init
```

### 2. Add All Files
```bash
git add .
```

### 3. Make First Commit
```bash
git commit -m "Initial commit: AI ROI Calculator for Hospitality"
```

### 4. Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `ai-roi-calculator`
3. Description: "Professional AI ROI Calculator for Hospitality & Tourism Industry"
4. Keep it **Public** (for GitHub Pages)
5. **DO NOT** check "Add a README file" (we already have one)
6. Click "Create repository"

### 5. Connect to GitHub
```bash
git remote add origin https://github.com/YOUR-USERNAME/ai-roi-calculator.git
git branch -M main
git push -u origin main
```

**Replace `YOUR-USERNAME` with your actual GitHub username!**

---

## Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Click **Pages** in left sidebar
4. Under "Source":
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**
6. Wait 1-2 minutes
7. Your calculator will be live at:
   ```
   https://YOUR-USERNAME.github.io/ai-roi-calculator/calculator-ai-agents-2025.html
   ```

---

## Making Updates Later

### When you modify the calculator:

```bash
# 1. See what changed
git status

# 2. Add changes
git add calculator-ai-agents-2025.html

# Or add all changes
git add .

# 3. Commit with a message
git commit -m "Fix validation bug in step 2"

# 4. Push to GitHub
git push
```

---

## Useful Git Commands

### Check status
```bash
git status
```

### See commit history
```bash
git log --oneline
```

### Undo last commit (keep changes)
```bash
git reset --soft HEAD~1
```

### Create a new branch
```bash
git checkout -b feature/new-chart-type
```

### Switch branches
```bash
git checkout main
```

### Merge branch into main
```bash
git checkout main
git merge feature/new-chart-type
```

---

## Example Workflow

### Scenario: You want to update the intro overlay text

```bash
# 1. Make sure you're on main branch
git checkout main

# 2. Create a feature branch (optional but recommended)
git checkout -b update/intro-text

# 3. Edit calculator-ai-agents-2025.html in your editor
# ... make your changes ...

# 4. Check what changed
git status
git diff calculator-ai-agents-2025.html

# 5. Add and commit
git add calculator-ai-agents-2025.html
git commit -m "Update intro overlay copy for clarity"

# 6. Push to GitHub
git push origin update/intro-text

# 7. Go to GitHub and create a Pull Request (optional)
# OR merge directly if you're confident:
git checkout main
git merge update/intro-text
git push
```

---

## GitHub Pages URL

After enabling GitHub Pages, your calculator will be accessible at:

```
https://YOUR-USERNAME.github.io/ai-roi-calculator/calculator-ai-agents-2025.html
```

### Test it works:
1. Open the URL in your browser
2. Complete the full calculator flow
3. Test on mobile
4. Share the link!

---

## Troubleshooting

### "fatal: not a git repository"
```bash
# Make sure you're in the right folder
cd C:\Users\eddgu\Downloads\calculator
git init
```

### "remote origin already exists"
```bash
# Remove old remote and add new one
git remote remove origin
git remote add origin https://github.com/YOUR-USERNAME/ai-roi-calculator.git
```

### GitHub Pages not showing updates
1. Wait 1-2 minutes after push
2. Hard refresh: Ctrl + Shift + R (Windows) / Cmd + Shift + R (Mac)
3. Check GitHub Actions tab for build errors

### "Permission denied (publickey)"
```bash
# Use HTTPS instead of SSH
git remote set-url origin https://github.com/YOUR-USERNAME/ai-roi-calculator.git
```

---

## Quick Reference

| Command | What it does |
|---------|--------------|
| `git status` | See what files changed |
| `git add .` | Stage all changes |
| `git commit -m "message"` | Save changes locally |
| `git push` | Upload to GitHub |
| `git pull` | Download from GitHub |
| `git log` | See commit history |
| `git diff` | See what changed in files |

---

**Ready to push to GitHub?** Follow steps 1-5 above!
