@echo off

set /p cursorcontinue="Do you wish to show (Y) or hide (N) the cursor? [y/N] "
goto :check%cursorcontinue%

:checky
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableCursorSuppression /t REG_DWORD /d 1 /f
echo Cursor should now be shown.
exit /b 0

:checkn
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableCursorSuppression /t REG_DWORD /d 0 /f
echo Cursor should now be hidden.
exit /b 0

:check
echo Invalid argument
exit /b 0