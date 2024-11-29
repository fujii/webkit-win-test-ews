python -m pip install buildbot-worker

if not exist c:\ews mkdir c:\ews
if not exist c:\ews\info mkdir c:\ews\info
if not exist c:\ews\symcache mkdir c:\ews\symcache
if not exist c:\ews\temp mkdir c:\ews\temp

for /F "usebackq delims=" %%I in (`hostname`) do set hostname=%%I
echo %hostname% provided by Playwright team > c:\ews\info\host
echo Fujii Hironori > c:\ews\info\admin

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /v _NT_SYMBOL_PATH /d "cache*C:\ews\symcache;srv*https://msdl.microsoft.com/download/symbols"

cd c:\ews
if not exist setup-tools git clone https://github.com/fujii/webkit-win-test-ews setup-tools
