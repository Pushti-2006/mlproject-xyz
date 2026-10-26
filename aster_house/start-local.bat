@echo off
cd /d "%~dp0"
start "" /b py -m http.server 4173 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:4173
echo Keep this window open while using the demo. Press Ctrl+C to stop the server.
pause
