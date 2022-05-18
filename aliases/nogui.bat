@echo off

goto :page%1%

echo NOTE: All commands are only available in the C:\ directory. Type "cd C:\" to go back to the C: hard drive.
echo List of available WinPork commands: (NOTE: All Windows Command Prompt commands are available as well. Type "help" to display those.)'
echo 

:page
:page1
echo -====================================================-
echo reboot
echo Shutdown WinPork and reboot the computer. 
echo -====================================================-
echo envreset
echo Reset the WinPork Environment and reboot the computer.
echo -====================================================-
echo nogui {pageNumber}
echo Shows this help message.
echo {pageNumber} = Help page to display
echo -====================================================-
echo wpver
echo Shows the current version of WinPork.
echo -====================================================-
echo gentestfile {size}
echo Generates a Test File in C:\Generated Test Files with the specified size.
echo {size} = File Size in bytes
echo -====================================================-
echo deltestfile
echo Deletes all test files.
echo -====================================================-
echo clearscreen
echo Clears the WinPork teminal.
echo -====================================================-
echo ext {y/n}
echo Enables / Disables the .winpork extension respectively.
echo -====================================================-
echo 
echo HELP PAGE 1/3
exit /b 0

:page2
echo -====================================================-
echo newuser {NORMAL/quick} [Username] [HasPassword{y/N}] [IsAdmin{y/N}]
echo Creates a new user.
echo -====================================================-
echo deluser {username}
echo Deletes a user.
echo {username} = User to be deleted
echo -====================================================-
echo goto-user {username}
echo Navigate to the directory of the specified user.
echo {username} = User to go to
echo -====================================================-
echo admin {y/N}
echo Enables / Disables the Administrator account respectively.
echo -====================================================-
echo  
echo HELP PAGE 2/3
exit /b 0

:page3
echo -====================================================-
echo goto-sys
echo Navigate to system32.
echo -====================================================-
echo fixwinreg {y/N}
echo Attempts to fix vulnerable Windows Registry keys and values.
echo -====================================================-
echo verboselogon {y/n}
echo Enables / Disables verbose login messages respectively.
echo -====================================================-
echo cursor {y/n}
echo Shows / Hides the cursor respectively.
echo -====================================================-
echo  
echo HELP PAGE 3/3
exit /b 0