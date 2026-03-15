#!/bin/bash
# ════════════════════════════════════════════════════
#  PUSH Praja Vaidyasala to GitHub
#  Run this script once on your computer
# ════════════════════════════════════════════════════

# STEP 1: Set your GitHub username here
GITHUB_USER="YOUR_GITHUB_USERNAME"
REPO_NAME="praja-clinic"

echo "🚀 Pushing Praja Vaidyasala to GitHub..."

# Initialize git if not already done
git init
git add .
git commit -m "✚ Praja Vaidyasala Smart Clinic System"

# Create remote and push
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
git push -u origin main

echo ""
echo "✅ Done! Your site will be live at:"
echo "   https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "To enable GitHub Pages:"
echo "  1. Go to https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "  2. Source → Deploy from branch → main → / (root) → Save"
