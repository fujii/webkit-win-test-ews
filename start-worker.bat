%~d0
cd %~p0

set WEBKIT_LIBRARIES=c:\ews\libs
if not exist %WEBKIT_LIBRARIES% mkdir %WEBKIT_LIBRARIES%

set WEBKIT_TEST_CHILD_PROCESSES=3
set TEMP=C:\ews\temp
set TMP=C:\ews\temp

set CC=clang-cl
set CXX=clang-cl

buildbot-worker start c:\ews