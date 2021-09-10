@echo off

rem Use this batch file to inject driver packages into Windows installation.
rem This method is preferred because Dism++ will not accept configuration-only INFs like "AnySoC\Support\Signature"

set "TARGET=D"
set /P TARGET="Enter Windows volume letter to inject drivers (default is %TARGET%): "

dism /Image:%TARGET%:\ /Add-Driver /Driver:. /Recurse
echo Done!
pause
