@echo off
echo User issued fix %1 > C:\winpork-logs\fixwinreglog.winpork

goto :type%1

:type
echo Incorrect (amount of) parameters. Usage: fix {winreg/exploit <Name of Exploit to fix>}
exit /b 0





:typewinreg
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





:typeexploit

rem ------------------------------------
rem Currently supported exploits to fix:
rem Follina
rem ------------------------------------

echo WINPORK EXPLOIT REPAIR
echo ----------------------
echo List of exploits fixable with WinPork: (Follina)
set /p exploit="Please specify an exploit to fix, or type 'cancel' to cancel."
goto :exploit%exploit%

:exploit
echo Incorrect argument.
goto :typeexploit

:exploitcancel
echo Cancelled WinPork Exploit Repair
exit /b 0



:exploitFollina
echo ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo EXPLOIT: FOLLINA
echo EXPLOIT TARGETS: Win95,Win98,WinME/2000,WinXP,WinVista,Win7,Win8,Win8.1,Win10,Win11
echo .
echo Follina is an exploit that enables hackers to use the custom domain of the Microsoft Diagnostic Support Tool (MSDT) to run malicious code on your computer through Microsoft PowerShell.
echo It can be dangerous if you get attacked using this exploit and it is therefore recommended to fix this exploit whilst there is no patch released by Microsoft.
echo This exploit will be fixed by Microsoft in the future. Please check https://microsoft.com/ for additional information.
echo ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

set /p continue="Do you wish to fix this exploit? This requires changing the Windows Registry but a backup will be stored in C:\WinPork\exploit-fixes\reg\backup. {Y\n}"
goto :Follina%continue%

:Follina
:Follinay
mkdir C:\WinPork\exploit-files\reg\backup
reg export HKEY_CLASSES_ROOT\ms-msdt C:\WinPork\exploit-files\reg\backup
reg delete HKEY_CLASSES_ROOT\ms-msdt /f

:Follinan
echo Cancelled Follina Exploit Fixing.
exit /b 0



