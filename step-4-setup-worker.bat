python -m pip install buildbot-worker

if not exist c:\BW mkdir c:\BW
if not exist c:\BW\info mkdir c:\BW\info
if not exist c:\BW\symcache mkdir c:\BW\symcache
if not exist c:\BW\temp mkdir c:\BW\temp

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /v _NT_SYMBOL_PATH /d "cache*C:\BW\symcache;srv*https://msdl.microsoft.com/download/symbols"

cd c:\BW
if not exist setup-tools git clone https://github.com/fujii/webkit-win-test-ews setup-tools
