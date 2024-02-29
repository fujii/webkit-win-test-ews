python -m pip install buildbot-worker==3.7.0

if not exist c:\ews mkdir c:\ews
if not exist c:\ews\symcache mkdir c:\ews\symcache
if not exist c:\ews\temp mkdir c:\ews\temp

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v _NT_SYMBOL_PATH /d "cache*C:\ews\symcache;srv*https://msdl.microsoft.com/download/symbols"

cd c:\ews
if not exist setup-tools git clone https://github.com/fujii/webkit-win-test-ews setup-tools
