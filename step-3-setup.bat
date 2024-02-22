%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\perl.exe -p c:\xampp\perl\bin\perl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\openssl.exe -p c:\xampp\apache\bin\openssl.exe
%ChocolateyInstall%\tools\shimgen -o %ChocolateyInstall%\bin\python3.exe -p c:\Python311\python.exe

python -m pip install pywin32
call gem install webrick
