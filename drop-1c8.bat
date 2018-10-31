@echo off

query process * | find "1cv8.exe" | sort  > temp.txt 
query process * | find "1cv8c.exe" | sort  >> temp.txt 
rem query process * | find "1cv8.exe" | sort  >> temp.txt 
FOR /F " tokens=1* delims= " %%i in (temp.txt) do @msg %%i "Сейчас закройте, пожалуйста, все базы 1С 8 !!!"
