@echo off
For /R C:\bases\MA_TIS-jan18   %%i In (*.dll) Do regsvr32 %%i 