rem Get the parent directory of this batch file
%~d0
cd %~p0..
set bw_dir=%cd%

path %ProgramFiles(x86)%\Microsoft Visual Studio\Installer;%path%
for /F "usebackq delims=" %%I in (`vswhere.exe -products * -latest -property installationPath`) do set VSPATH=%%I
call "%VSPATH%\VC\Auxiliary\Build\vcvars64.bat"
echo on

set WEBKIT_LIBRARIES=%bw_dir%libs
if not exist %WEBKIT_LIBRARIES% mkdir %WEBKIT_LIBRARIES%

set WEBKIT_TEST_CHILD_PROCESSES=4
set TEMP=%bw_dir%temp
set TMP=%bw_dir%temp

set CC=clang-cl
set CXX=clang-cl

rem store "Amazon Root CA1" cert
curl.exe -I https://aws.amazon.com/

buildbot-worker start
