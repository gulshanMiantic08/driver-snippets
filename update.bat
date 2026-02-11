@echo off
echo Updating Team Snippets...
echo.

cd /d "%USERPROFILE%\.vscode\extensions\team-snippets"
git pull origin main

echo Update complete!
echo Reload VS Code with Ctrl+Shift+P -> "Reload Window"
echo.
pause