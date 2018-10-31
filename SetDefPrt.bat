@echo off
if {%1}=={} @echo Syntax: SetDefPrt Printer&goto :EOF
if exist "%TEMP%\SetDefPrt.vbs" goto doit
@echo.Dim oNwk, sPrt, oArg>"%TEMP%\SetDefPrt.vbs"
@echo.set oArg = Wscript.Arguments>>"%TEMP%\SetDefPrt.vbs"
@echo.sPrt = oArg(0)>>"%TEMP%\SetDefPrt.vbs"
@echo.Set oNwk = CreateObject("WScript.Network")>>"%TEMP%\SetDefPrt.vbs" 
@echo.oNwk.AddWindowsPrinterConnection sPrt>>"%TEMP%\SetDefPrt.vbs"
@echo.oNwk.SetDefaultPrinter sPrt>>"%TEMP%\SetDefPrt.vbs"
@echo.WScript.Quit>>"%TEMP%\SetDefPrt.vbs"
:doit
cscript //nologo "%TEMP%\SetDefPrt.vbs" %1 