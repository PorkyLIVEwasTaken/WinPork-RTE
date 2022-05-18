@echo off
title WinPork 8.1x64 Repair Tool Initializer

mkdir C:\winpork-logs
echo WinPork 8.1x64 Repair Tool Environment succesfully booted up on version 1.0 > C:\winpork-logs\bootlog.winpork

set PATH=%PATH%;C:\WinPork\aliases

reg import C:\winpork\reg\winporksetupcloser.reg

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Welcome to the WinPork 8.1x64 Repair Tool Environment! This repair tool is meant to be used as a last resort if your computer no longer functions (properly). This tool is NOT meant to be used for standard command prompt usage or registry editing; if this is the case, please use the normal Windows Environment instead.','WinPork 8.1x64 Repair Tool Environment','OK',[System.Windows.Forms.MessageBoxIcon]::Information);}"

@cmd /k "C:\winpork\winpork-boot-finisher.bat"