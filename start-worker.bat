path %ProgramFiles(x86)%\Microsoft Visual Studio\Installer;%path%
for /F "usebackq delims=" %%I in (`vswhere.exe -products * -latest -property installationPath`) do set VSPATH=%%I
call "%VSPATH%\VC\Auxiliary\Build\vcvars64.bat"

set WEBKIT_LIBRARIES=c:\ews\libs
if not exist %WEBKIT_LIBRARIES% mkdir %WEBKIT_LIBRARIES%

set WEBKIT_TEST_CHILD_PROCESSES=3
set TEMP=C:\ews\temp
set TMP=C:\ews\temp

set CC=clang-cl
set CXX=clang-cl

C:
cd \ews
buildbot-worker start
