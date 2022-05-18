@echo off
title WinPork 8.1x64 Repair Tool Initializer

reg import C:\winpork\reg\winporksetupmaintainer.reg

assoc .winpork=txtfile

shutdown -r -t 7 -f -c "Your computer will be restarted to enter the WinPork 8.1x64 Repair Tool Environment."