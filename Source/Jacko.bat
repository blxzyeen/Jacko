@echo off
::####CONFIGURATION####

set automt=true

set primarycolor=0A

set secondarycolor=92

::####CONFIGURATION####

::DO NOT EDIT PAST THIS POINT
set mytime=%time%
set jversion=0.1.4
set jrelease=6/7/2022
set buildtype=public
goto :elevatedcheck
:elevatedcheck
openfiles >NUL 2>&1 
if NOT %ERRORLEVEL% EQU 0 goto :notelevated
title [Elevated]
If %automt% == true goto :_fixtemp
goto _main
else exit
:notelevated
title [Not Elevated]
echo msgbox "Jacko was closed, no this is not an error. Jacko requires administrator to run with proper functionality. Unfortunately you did not provide Jacko with elevated permissions." > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
exit


If %automt% == true goto :_fixtemp
else exit
::
:_main
@echo off & color %primarycolor% & "%__APPDIR__%chcp.com" 65001 >nul & title <nul & title Jacko : %jversion% : %USERNAME% && "%__APPDIR__%mode.com" 105,75
cls
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                      .,'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                   .''.'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                  .' .'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                       .    ' . ~,'  `.~ . `    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  . '  .  '   .`:_. . _:'.   `  .  ` .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                .'   .'     ,     .'^'.    .     `.   `.
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[               .    .       .A.  .     . .A.       .    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                          .d000b.      .d000b.
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[              '    '    .d0000000b.  .d0000000b.    `    `
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[             .    .      .      . db  .     .      .    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                  d00b
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[               `    `?0o.  `     `     '    '  .o0P'    '
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                 .    `?00   ooooo.  .ooooo   00P' .   .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  ` .   `?00000P ?0bd0P ?00000P' .' . '
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                        . . `~~   ~~~~  .~~'  . .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                            ~     - ~~ -    ~
echo.
echo [40;37mInitialized at [40;%secondarycolor%m%mytime%[0m
echo.
echo Applications
echo     [40;%secondarycolor%mcmd[40;37m         - Opens CMD window  (Elevated)
echo     [40;%secondarycolor%mtaskmgr[40;37m     - Opens Task manager (Elevated)
echo     [40;%secondarycolor%mpowershell[40;37m  - Opens Powershell (Elevated)
echo     [40;%secondarycolor%mmrt[40;37m         - Opens mrt (Elevated)
echo.
echo System
echo     [40;%secondarycolor%mdeviceinfo[40;37m  - Displays System Information
echo     [40;%secondarycolor%mipinfo[40;37m      - Displays local IP information
echo     [40;%secondarycolor%mtasks[40;37m       - Displays running tasks
echo     [40;%secondarycolor%msfc[40;37m         - Runs sfc scan (Windows Resource Protection)
echo     [40;%secondarycolor%mwindef[40;37m      - Check windows defender in various ways.
echo.
echo Commands
echo     [40;%secondarycolor%mtmp[40;37m         - Clears temporary files
echo     [40;%secondarycolor%mjacko[40;37m       - Information about Jacko
echo.                                                                                                         
set /p command= 
if %command% == ipinfo goto :_ipinfo
if %command% == tasks goto :_tasks
if %command% == tmp goto :_fixtemp
if %command% == jacko goto :_jackover
if %command% == deviceinfo goto :_deviceinfo
if %command% == taskmgr start taskmgr.exe & goto :_main
if %command% == powershell start powershell.exe & goto :_main
if %command% == cmd start cmd.exe & goto :_main
if %command% == sfc sfc /scannow
if %command% == mrt mrt /f
if %command% == windef goto :_windef
else
exit


:_fixtemp
echo jemp
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
REG add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
del "%tmp%\*.*" /s /q /f
    FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
cls
goto :_main
exit

:_tasks
echo Running tasks (Visible)
tasklist
echo //press enter to return onto mainpage
pause >nul
goto :_main


:_ipinfo
echo Returned IP Information (Local)
ipconfig/all | find "Subnet Mask"
ipconfig/all | find "IPv4" 
ipconfig/all | find "Default Gateway"
ipconfig/all | find "DNS Suffix Search List"
ipconfig/all | find "Physical Address"
echo //press enter to return onto mainpage
pause >nul
goto :_main

:_jackover
@echo off & color %primarycolor% & "%__APPDIR__%chcp.com" 65001 >nul & title <nul & title Jacko : %jversion% : %USERNAME% && "%__APPDIR__%mode.com" 105,75
cls
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                      .,'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                   .''.'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                  .' .'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                       .    ' . ~,'  `.~ . `    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  . '  .  '   .`:_. . _:'.   `  .  ` .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                .'   .'     ,     .'^'.    .     `.   `.
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[               .    .       .A.  .     . .A.       .    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                          .d000b.      .d000b.
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[              '    '    .d0000000b.  .d0000000b.    `    `
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[             .    .      .      . db  .     .      .    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                  d00b
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[               `    `?0o.  `     `     '    '  .o0P'    '
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                 .    `?00   ooooo.  .ooooo   00P' .   .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  ` .   `?00000P ?0bd0P ?00000P' .' . '
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                        . . `~~   ~~~~  .~~'  . .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                            ~     - ~~ -    ~
echo.
echo Jacko version: %jversion% : %buildtype% stable
echo Release date: %jrelease%
echo.
echo Update logs:
echo ---------------------
echo.
echo Feature Update
echo Graphical Update
echo General Bugfix
echo.
echo ---------------------
echo.
echo.
echo //press enter to return onto mainpage
pause >nul
goto _main

:_deviceinfo
@echo off & color %primarycolor% & "%__APPDIR__%chcp.com" 65001 >nul & title <nul & title Jacko : %jversion% : %USERNAME% && "%__APPDIR__%mode.com" 105,75
cls
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                      .,'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                   .''.'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                  .' .'
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                       .    ' . ~,'  `.~ . `    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  . '  .  '   .`:_. . _:'.   `  .  ` .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                .'   .'     ,     .'^'.    .     `.   `.
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[               .    .       .A.  .     . .A.       .    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                          .d000b.      .d000b.
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[              '    '    .d0000000b.  .d0000000b.    `    `
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[             .    .      .      . db  .     .      .    .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                                  d00b
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[               `    `?0o.  `     `     '    '  .o0P'    '
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                 .    `?00   ooooo.  .ooooo   00P' .   .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  ` .   `?00000P ?0bd0P ?00000P' .' . '
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                        . . `~~   ~~~~  .~~'  . .
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                            ~     - ~~ -    ~
echo.                                                                                                
echo [40;37mDevice:                    %USERDOMAIN%
echo OS User:                   %USERNAME%
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"OS Manufacturer" /C:"OS Configuration" /C:"OS Build Type" /C:"Original Install Date" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Processor(s)" /C:"BIOS Version" /C:"Windows Directory" /C:"System Directory" /C:"Boot Device" /C:"System Locale" /C:"Input Locale" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:"Virtual Memory: Max Size" /C:"Virtual Memory: Available" /C:"Virtual Memory: In Use" /C:"Domain" /C:"Network Card(s)"
echo.
:_ipinfo
echo Returned IP Information (Local)
ipconfig/all | find "Subnet Mask"
ipconfig/all | find "IPv4" 
ipconfig/all | find "Default Gateway"
ipconfig/all | find "DNS Suffix Search List"
ipconfig/all | find "Physical Address"
echo //press enter to return onto mainpage
pause >nul
goto :_main
:_windef
color b
cls
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Real-Time Protection"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "IsServiceRunning"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "DisableAntiSpyware"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "DisableAntiVirus"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "PUAProtection"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Features" /v "TamperProtection"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Exclusions\Extensions"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Exclusions\IpAddresses"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Exclusions\Paths"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Exclusions\Processes"
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Exclusions\TemporaryPaths"
pause >nul
echo Beginning Repair
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "DisableAntiVirus" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender\Features" /v "TamperProtection" /t "REG_DWORD" /d "5" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v "PUAProtection" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAntiSpyware" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "0" /f
cls
timeout 1 >nul
goto :_main