@echo off
echo User issued deluser %1 > C:\winpork-logs\userlog.winpork

net user %1 /delete
echo User %1 has been deleted