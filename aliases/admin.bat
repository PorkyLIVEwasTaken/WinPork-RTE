@echo off
echo User issued admin > C:\winpork-logs\adminlog.winpork

set /p continueadmin="Do you wish to enable (Y) or disable (N) the Administrator account? [y/N] "
goto :check%continueadmin%

:checky
@net user Administrator /ACTIVE:YES
echo The Administrator user has been enabled.
exit /b 0

:checkn
@net user Administrator /ACTIVE:NO
echo The Administrator user has been disabled.
exit /b 0

:check
echo Invalid argument
exit /b 0