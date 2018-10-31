@echo off

echo @echo off > pngg.bat
set n=1

:10
::10

if %n%==255 goto 20
echo ping -n 1 192.168.0.%n% >> log.txt >> pngg.bat
set /a n=n+1

goto 10

:20
::20

