@echo off
echo Windows Registry Editor Version 5.00 > increase_paging_file.reg
echo. >> increase_paging_file.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management] >> increase_paging_file.reg
echo "PagingFiles"="C:\pagefile.sys 50000 50000" >> increase_paging_file.reg
regedit /s increase_paging_file.reg
del increase_paging_file.reg
