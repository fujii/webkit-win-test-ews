%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\perl.exe -p c:\xampp\perl\bin\perl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\openssl.exe -p c:\xampp\apache\bin\openssl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\python3.exe -p c:\Python311\python.exe

python -m pip install pywin32
call gem install webrick

reg add HKEY_CLASSES_ROOT\.pl\Shell\ExecCGI\Command /f /ve /d "c:\xampp\perl\bin\perl.exe -T"
reg add HKEY_CLASSES_ROOT\.cgi\Shell\ExecCGI\Command /f /ve /d "c:\xampp\perl\bin\perl.exe -T"
reg add HKEY_CLASSES_ROOT\.py\Shell\ExecCGI\Command /f /ve /d "c:\Python311\python.exe -X utf8"

netsh int ipv4 set dynamicport tcp start=1025 num=64511
