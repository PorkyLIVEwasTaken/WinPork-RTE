@echo off
echo User issued reboot > C:\winpork-logs\rebootlog.winpork

echo The system will be rebooted shortly...
shutdown -r -t 0 -f
exit /b 0