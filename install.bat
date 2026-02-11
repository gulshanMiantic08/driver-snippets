@echo off
echo Installing Team Snippets Extension...
echo.

REM Check if Git is installed
where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed!
    echo Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM Create extensions folder if it doesn't exist
if not exist "%USERPROFILE%\.vscode\extensions" (
    mkdir "%USERPROFILE%\.vscode\extensions"
)

REM Navigate to extensions folder
cd /d "%USERPROFILE%\.vscode\extensions"

REM Clone the repository
echo Cloning repository...
git clone https://github.com/YOUR_USERNAME/team-snippets.git

if errorlevel 1 (
    echo Failed to clone repository!
    echo Make sure you have access to the private repo.
    pause
    exit /b 1
)

echo.
echo Installation successful!
echo.
echo Please:
echo 1. Open VS Code
echo 2. Press Ctrl+Shift+P
echo 3. Type "Reload Window" and press Enter
echo.
pause