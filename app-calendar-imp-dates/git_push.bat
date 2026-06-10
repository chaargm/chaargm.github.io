@echo off
cd /d "%~dp0"
git add .
git commit -m "misc"
git push --set-upstream origin HEAD
pause
