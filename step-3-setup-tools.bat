%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\perl.exe -p c:\xampp\perl\bin\perl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\openssl.exe -p c:\xampp\apache\bin\openssl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\python3.exe -p c:\Python311\python.exe

python -m pip install pywin32
call gem install webrick

reg add HKEY_CLASSES_ROOT\.pl\Shell\ExecCGI\Command /f /ve /d "c:\xampp\perl\bin\perl.exe -T"
reg add HKEY_CLASSES_ROOT\.cgi\Shell\ExecCGI\Command /f /ve /d "c:\xampp\perl\bin\perl.exe -T"
reg add HKEY_CLASSES_ROOT\.py\Shell\ExecCGI\Command /f /ve /d "c:\Python311\python.exe -X utf8"

netsh int ipv4 set dynamicport tcp start=1025 num=64511

git config --system core.longpaths true

rem git-credential-manager popups a dialog. It blocks a buildbot worker.
rem Using --global still blocks because the system config has "manager" value.
git config --system --unset credential.helper

C:\xampp\apache\bin\httpd.exe -k install
sc config apache2.4 start= demand
