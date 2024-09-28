:: Run as administrator
@echo off
echo Windows Registry Editor Version 5.00 > increase_paging_file.reg
echo. >> increase_paging_file.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management] >> increase_paging_file.reg
echo "PagingFiles"="C:\pagefile.sys 30000 30000" >> increase_paging_file.reg
regedit /s increase_paging_file.reg
del increase_paging_file.reg

:: Alternative method using WMIC
wmic COMPUTERSYSTEM set AutomaticManagedPagefile=false
wmic PAGEFILESET set InitialSize=12000,MaximumSize=32000