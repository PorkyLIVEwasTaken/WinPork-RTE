@echo off
echo User issued fixwinreg > C:\winpork-logs\fixwinreglog.winpork

set /p continue="WARNING: This will replace vulnerable keys in the current Registry with normal Windows Registry keys, with no further warnings. Do you wish to continue? [y/N] "
goto :checkvulnerable%continue%

echo Cancelled Windows Registry Repair
exit /b 0

:checkvulnerabley
reg import C:\winpork\regbackup\winpork-cmdpol-local-backup.reg
reg import C:\winpork\regbackup\winpork-exefile-backup.reg
reg import C:\winpork\regbackup\winpork-explorerpol-backup.reg
reg import C:\winpork\regbackup\winpork-syspol-backup.reg
reg import C:\winpork\regbackup\winpork-winlogon-backup.reg
reg import C:\winpork\regbackup\winpork-winpol-local-backup.reg
echo Repaired Windows Registry
exit /b 0

:checkvulnerable
echo Invalid argument
:checkvulnerablen
echo Cancelled Windows Registry Repairing
exit /b 0