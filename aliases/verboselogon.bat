@echo off
echo User issued verboselogon > C:\winporklogs\verboselog.winpork

set /p verbosecontinue="Do you wish to enable (Y) or disable (N) the verbose login messages? [y/N] "
goto :check%verbosecontinue%

:checky
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /t REG_DWORD /d 1 /f
echo Enabled verbose login messages.
exit /b 0

:checkn
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /t REG_DWORD /d 0 /f
echo Disabled verbose login messages.
exit /b 0

:check
echo Invalid argument
exit /b 0