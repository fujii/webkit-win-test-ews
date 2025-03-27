choco install -y xampp-81 python312 ruby gperf ninja diffutils
choco install -y llvm
choco install -y visualstudio2022buildtools visualstudio2022-workload-vctools windows-sdk-10-version-2004-windbg
choco install -y cmake.install --installargs 'ADD_CMAKE_TO_PATH=System'
choco install -y git.install --params="/NoAutoCrlf /NoShellIntegration /NoGuiHereIntegration /NoShellHereIntegration /GitAndUnixToolsOnPath"

choco upgrade -y all

call refreshenv

python -m pip install --upgrade pywin32
python -m pip install --upgrade buildbot-worker
call gem install webrick

%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\perl.exe -p c:\xampp\perl\bin\perl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\openssl.exe -p c:\xampp\apache\bin\openssl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\python3.exe -p c:\Python312\python.exe

reg add HKEY_CLASSES_ROOT\.pl\Shell\ExecCGI\Command /f /ve /d "c:\xampp\perl\bin\perl.exe -T"
reg add HKEY_CLASSES_ROOT\.cgi\Shell\ExecCGI\Command /f /ve /d "c:\xampp\perl\bin\perl.exe -T"
reg add HKEY_CLASSES_ROOT\.py\Shell\ExecCGI\Command /f /ve /d "c:\Python312\python.exe -X utf8"

netsh int ipv4 set dynamicport tcp start=1025 num=64511

git config --system core.longpaths true

rem git-credential-manager popups a dialog. It blocks a buildbot worker.
rem Using --global still blocks because the system config has "manager" value.
git config --system --unset credential.helper

C:\xampp\apache\bin\httpd.exe -k install
sc config apache2.4 start= demand

if not exist c:\BW mkdir c:\BW
if not exist c:\BW\info mkdir c:\BW\info
if not exist c:\BW\symcache mkdir c:\BW\symcache
if not exist c:\BW\temp mkdir c:\BW\temp

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /v _NT_SYMBOL_PATH /d "cache*C:\BW\symcache;srv*https://msdl.microsoft.com/download/symbols"

cd c:\BW
if not exist setup-tools git clone https://github.com/fujii/webkit-win-test-ews setup-tools
