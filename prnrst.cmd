@echo off

sc stop LPDSVC
sc stop Spooler

taskkill /f /t /im PrintIsolationHost.exe 

taskkill /f /im /t 2GISTrayNotifier.exe 

taskkill /f /t /im grym.exe

rem taskkill /f /t /im sbismon.exe

taskkill /f /t /im spoolsv.exe

sc start Spooler
sc start LPDSVC

