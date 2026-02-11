@echo off
echo Installing Driver Snippets Extension...
echo.

REM Check if Git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Git is not installed!
    echo Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM Create extensions folder if it doesn't exist
if not exist "%USERPROFILE%\.vscode\extensions" (
    mkdir "%USERPROFILE%\.vscode\extensions"
)

REM Navigate to extensions folder
cd /d "%USERPROFILE%\.vscode\extensions"

REM Clone the repository - FIXED: changed team-snippets to driver-snippets
echo Cloning from GitHub...
git clone https://github.com/gulshanMiantic08/driver-snippets.git

if %errorlevel% neq 0 (
    echo Failed to clone repository!
    echo Make sure you have access to the repository.
    pause
    exit /b 1
)

echo.
echo ✅ Installation successful!
echo.
echo 📝 Next steps:
echo 1. Open VS Code
echo 2. Press Ctrl+Shift+P
echo 3. Type "Reload Window" and press Enter
echo 4. Create a .py file and type "drivertemplate"
echo.
pause