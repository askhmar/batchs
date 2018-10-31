@echo off
For /R C:\base\MA_TIS-oct17   %%i In (*.lck) Do If Exist %%i del %%i 