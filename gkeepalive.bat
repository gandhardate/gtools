@echo off 
:toggle 
rem Simulate pressing the Windows key to open/close the Start Menu 
powershell.exe -Command "[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.SendKeys]::SendWait('^{ESC}'); Start-Sleep -Milliseconds 500; [System.Windows.Forms.SendKeys]::SendWait('^{ESC}')" 

rem Wait for 2 minutes 
timeout /t 120 /nobreak >nul 

rem Go back to toggling 
goto toggle