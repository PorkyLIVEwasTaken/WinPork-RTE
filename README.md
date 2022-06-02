# WinPork Repair Tool Environment (WinPork-RTE)
 WinPork Repair Tool Environment is a simple, minimalistic and user-friendly Windows Repair Tool, available for Windows Operating Systems from Windows 7 until Windows 11.

# Installation
1. Download the code as a .zip file.
2. Open the .zip file. 
3. Copy the "WinPork-RTE-main" folder and paste it in your C:\ drive. Do not unpack the .zip! 
NOTE: No other drive but the C:\ drive is currently supported. We're working on some magic dynamic drive support!
4. Rename the "WinPork-RTE-main" folder to "WinPork"
5. (OPTIONAL) For easier access, drag the "WinPork 8.1x64 Repair Tool Environment" shortcut onto your Desktop.
6. Done!

# First Launch
1. Open the "WinPork 8.1x64 Repair Tool Environment" shortcut to start up WinPork. This requires Administrative access and restarts your computer. Save any files before starting WinPork.
2. After your computer restarted, a command prompt should appear over the Windows bootscreen, followed by a pop-up window. If it did, WinPork got successfully deployed. If not, contact us for support.
3. Close the pop-up window by pressing Enter on your keyboard. You now have succesfully booted up WinPork.
NOTE: Your cursor in invisible in WinPork in some versions of Windows. If so, please navigate certain windows using your keyboard instead.

# Available commands
List of available WinPork commands: (NOTE: All Windows Command Prompt commands are available as well. Type "help" to display those.)'

reboot: Shutdown WinPork and reboot the computer. 
envreset: Reset the WinPork Environment and reboot the computer.
nogui {pageNumber}: Shows this help message. ({pageNumber} = Help page to display)
wpver: Shows the current version of WinPork.
gentestfile {size}: Generates a Test File in C:\Generated Test Files with the specified size. ({size} = File Size in bytes)
deltestfile: Deletes all test files.
clearscreen: Clears the WinPork teminal.
ext {y/n}: Enables / Disables the .winpork extension respectively.
newuser {NORMAL/quick} [Username] [HasPassword{y/N}] [IsAdmin{y/N}]: Creates a new user.
deluser {username}: Deletes a user. ({username} = User to be deleted)
goto-user {username}: Navigate to the directory of the specified user. ({username} = User to go to)
admin {y/N}: Enables / Disables the Administrator account respectively.
goto-sys: Navigate to system32.
fix {winreg/exploit}: Enables you to fix the Windows Registry, or fix known and supported exploits.
verboselogon {y/n}: Enables / Disables verbose login messages respectively.
cursor {y/n}: Shows / Hides the cursor respectively. (Might not work on all versions of Windows.)
