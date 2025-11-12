@echo off
echo ========================================
echo  GitHub Push Script for AI ROI Calculator
echo ========================================
echo.
echo IMPORTANT: Before running this script:
echo 1. Create a repository on GitHub named: ai-roi-calculator
echo 2. Make sure it's PUBLIC (for GitHub Pages)
echo 3. DO NOT initialize with README
echo.
echo ========================================
echo.

set /p username="Enter your GitHub username: "

if "%username%"=="" (
    echo Error: GitHub username cannot be empty!
    pause
    exit /b 1
)

echo.
echo Setting up remote for: https://github.com/%username%/ai-roi-calculator.git
echo.

cd /d "%~dp0"

git remote add origin https://github.com/%username%/ai-roi-calculator.git
git branch -M main
git push -u origin main

echo.
echo ========================================
echo  Push Complete!
echo ========================================
echo.
echo Your repository is now live at:
echo https://github.com/%username%/ai-roi-calculator
echo.
echo To enable GitHub Pages:
echo 1. Go to your repo Settings
echo 2. Click Pages in sidebar
echo 3. Source: main branch / root folder
echo 4. Save
echo.
echo Your calculator will be at:
echo https://%username%.github.io/ai-roi-calculator/calculator-ai-agents-2025.html
echo.
pause
