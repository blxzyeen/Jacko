@echo off
::CONFIGURATION
set automt=true
set compatabilitychecker=false
::DO NOT EDIT PAST THIS POINT
set mytime=%time%
set jversion=0.1.0
set primarycolor=06
set secondarycolor=93
If %automt% == true goto :_fixtemp
If %bypasswinver% == true goto :_main
::
echo Checking winver
::
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.0" echo You are running an unsupported windows version! - WinVista
if "%version%" == "6.1" echo You may experience issues whilst running the software - Win7 (The only fully supported winver is Win10)
if "%version%" == "6.2" echo You are running an unsupported windows version! - Win8
if "%version%" == "6.3" echo You are running an unsupported windows version! - Win8.1
if "%version%" == "10.0" goto :Supported
::
timeout 1 >nul
exit

:Supported
cls
title Jacko - Supported winver!
echo Your version of windows is [40;92mSupported[40;0m!
%winver%
timeout 1 >nul
cls
goto :_main

:_main
@echo off & color %primarycolor% & "%__APPDIR__%chcp.com" 65001 >nul & title <nul & title Jacko : %jversion% : %USERNAME% && "%__APPDIR__%mode.com" 105,75
cls
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  ████                                                       "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                 █░░███                                                      "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                 █░░████                                                     "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[                  ███▒██     ████████                                        "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[        ████████     █▒█  ████▒▒▒▒▒▒████                                     "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[      ███▒▒▒▒▒▒████████████░░████▒▒▒▒▒███                                    "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[    ██▒▒▒▒░▒▒████░░██░░░░██░░░░░█▒▒▒▒▒▒▒███                                  "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[   ██▒▒░░░░▒██░░░░░█▒░░░░░██▒░░░░░░░▒▒▒▒▒▒█                                  "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[  ██▒░░░░░▒░░░░░░░░░▒░░░░░░░▒▒░░░░░░░▒▒▒▒▒██                                 "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[  █░░░░░░▒░░░██░░░░░░░░░░░░░██░░░░░░░░▒▒▒▒▒█                                 "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[  █░░░░░░░░█▒▒███░░░░░░░░░█▒▒███░░░░░░░▒▒▒▒█                                 "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[  █░░░░░░░████████░░░░░░░████████░░░░░░▒▒▒▒█  -------------------------------"
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[  █░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒█   Tool     :  Jacko %jversion%  "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[  ██░░░█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█░▒▒▒▒█   Author   :  blxzyeen          "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[   █░░░░██░█░░░░░░░░░░░░░░░░░░░░░░░███▒▒▒▒▒█  -------------------------------"
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[   █▒▒░░░░█████░░░█░░░░██░░░██░░████░▒▒▒▒▒▒█                                 "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[   ██▒▒░░░░░█████████████████████░░░▒▒▒▒▒▒██                                 "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[    ██▒▒▒▒░░░░░██░░░███░░░██░░░█░░░▒▒▒▒▒▒██                                  "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[     ███▒▒▒░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒█████                                   "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[       ███▒▒▒▒▒▒░░░░░░░░░░░░░▒▒▒▒▒▒████                                      "
<con: call "%windir%\system32\cmd.exe" /u/s/c" echo[          ██████████████████████████                                         "
echo.
echo [40;37mInitialized at [40;%secondarycolor%m%mytime%[0m                                                                                                    
echo Device:                    %USERDOMAIN%
echo OS User:                   %USERNAME%
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"OS Manufacturer" /C:"OS Configuration" /C:"OS Build Type" /C:"Original Install Date" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Processor(s)" /C:"BIOS Version" /C:"Windows Directory" /C:"System Directory" /C:"Boot Device" /C:"System Locale" /C:"Input Locale" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:"Virtual Memory: Max Size" /C:"Virtual Memory: Available" /C:"Virtual Memory: In Use" /C:"Domain" /C:"Network Card(s)"
echo.                                                                                                                                                                                                                  
echo Commands
echo     [40;%secondarycolor%mipinfo[40;37m    - Displays local IP information
echo     [40;%secondarycolor%mtasks[40;37m     - Displays running tasks
echo     [40;%secondarycolor%mcmd[40;37m       - Opens CMD window 
echo     [40;%secondarycolor%mmrt[40;37m       - Opens mrt
echo     [40;%secondarycolor%msfc[40;37m       - Runs system scan for file corruption
echo     [40;%secondarycolor%mtmp[40;37m       - Clears temporary files
echo.                                                                                                         
set /p command= 
if %command% == ipinfo goto :_ipinfo
if %command% == tasks goto :_tasks
if %command% == taskmgr start taskmgr.exe & goto :_main
if %command% == cmd start cmd.exe & goto :_main
if %command% == sfc sfc /scannow
if %command% == mrt mrt /f
if %command% == tmp goto :_fixtemp


:_fixtemp
tempwindow_4
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
REG add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAntiSpyware" /t REG_DWORD /d "0" /f
REG add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "0" /f
del "%tmp%\*.*" /s /q /f
    FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
cls
goto :_main
exit

:_tasks
echo Running tasks (Visible)
tasklist
pause >nul
goto :_main


:_ipinfo
echo Returned IP Information (Local)
ipconfig/all | find "Subnet Mask"
ipconfig/all | find "IPv4" 
ipconfig/all | find "Default Gateway"
ipconfig/all | find "DNS Suffix Search List"
ipconfig/all | find "Physical Address"
pause >nul
goto :_main