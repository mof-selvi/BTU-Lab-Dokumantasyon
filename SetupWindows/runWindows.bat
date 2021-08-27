@echo off
set /p pcname="Bilgisayar ismi: "
wmic ComputerSystem where "name='%ComputerName%'" call rename %pcname%
bcdedit /import C:\SetupWindows\bcd
pause
