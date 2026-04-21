@echo off
title Git Quick Commit

echo.
set /p msg=Enter commit message: 

if "%msg%"=="" (
    echo Commit message cannot be empty.
    pause
    exit /b
)

echo.
echo Adding files...
git add .

echo.
echo Committing...
git commit -m "%msg%"

echo.
echo Pushing to GitHub...
git push

echo.
echo Done. Your code is now live (assuming GitHub Pages isn't having a bad day).
pause