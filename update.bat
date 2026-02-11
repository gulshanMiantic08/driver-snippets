@echo off
echo Updating Team Snippets...
echo.

cd /d "%USERPROFILE%\.vscode\extensions\driver-snippets"

echo Pulling latest changes from GitHub...
git pull origin main

echo.
echo ✅ Update complete!
echo Reload VS Code with Ctrl+Shift+P → "Reload Window"
echo.
pause