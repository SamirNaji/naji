@echo off
echo ==========================================
echo GitHub Deployment Helper
echo ==========================================
echo.
echo This script will help you push your portfolio to GitHub.
echo Make sure you have installed Git and created a repository on GitHub.
echo.
set /p repo_url="Enter your GitHub Repository URL (e.g., https://github.com/username/repo.git): "

if "%repo_url%"=="" goto error

echo.
echo Initializing Git...
git init

echo.
echo Adding files...
git add .

echo.
echo Committing files...
git commit -m "Deploying portfolio"

echo.
echo Renaming branch to main...
git branch -M main

echo.
echo Adding remote origin...
git remote add origin %repo_url%

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo ==========================================
echo Deployment Complete!
echo Go to Settings -> Pages in your GitHub repo to enable the site.
echo ==========================================
pause
exit

:error
echo.
echo Error: Repository URL cannot be empty.
pause
