@echo off
Title Installer
set _tempid=%random%
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
goto :A
    pushd "%CD%"
    CD /D "%~dp0"
:A
If exist %appdata%\Jacko goto :B
cd %appdata%
md Jacko
cd Jacko
goto :B
:B
del %appdata%\Jacko\_jackotemp.bat
Set "url=https://raw.githubusercontent.com/blxzyeen/Jacko/main/Source/Jacko.bat"
for %%# in (%url%) do ( set "File=%tmp%\%%~n#.txt" )
Call :Download "%url%" "%File%"
If exist "%File%" ( 
    ( Type "%File%")>con
( Type "%File%" > %appdata%\Jacko\_jackotemp.bat)
)
cls
start %appdata%\Jacko\_jackotemp.bat
echo Launching Jacko
exit
cls
:::
:Download <url> <File>
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
exit /b