@echo off
echo User issued envreset > C:\winpork-logs\envresetlog.winpork
echo The WinPork Repair Tool Environment will be resetted shortly...
@reg import C:\winpork\reg\winporksetupmaintainer.reg
shutdown -r -t 0 -f
