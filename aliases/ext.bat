@echo off
echo User issued exton > C:\winpork-logs\extlog.winpork

set /p continueext="Do you wish to enable (Y) or disable (N) the .winpork extension? [y/N] "
goto :check%continueext%

:checky
assoc .winpork=txtfile
echo The .winpork extension will now be recognized by Windows.
exit /b 0

:checkn
assoc .winpork=
echo The .winpork extension will no longer be recognized by Windows.
exit /b 0

:check
echo Invalid argument
exit /b 0