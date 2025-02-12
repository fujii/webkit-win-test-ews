set f=

set f=%f% c:\BW\temp\*

set f=%f% c:\BW\symcache\JavaScriptCore*
set f=%f% c:\BW\symcache\WebCore*
set f=%f% c:\BW\symcache\WebKit*

set f=%f% c:\BW\symcache\aom*
set f=%f% c:\BW\symcache\avif*
set f=%f% c:\BW\symcache\brotli*
set f=%f% c:\BW\symcache\cairo*
set f=%f% c:\BW\symcache\crypto*
set f=%f% c:\BW\symcache\harfbuzz*
set f=%f% c:\BW\symcache\icu*
set f=%f% c:\BW\symcache\jpeg*
set f=%f% c:\BW\symcache\jxl*
set f=%f% c:\BW\symcache\libcurl*
set f=%f% c:\BW\symcache\libexslt*
set f=%f% c:\BW\symcache\libpng*
set f=%f% c:\BW\symcache\libsharpyuv*
set f=%f% c:\BW\symcache\libwebp*
set f=%f% c:\BW\symcache\libxml2*
set f=%f% c:\BW\symcache\libxslt*
set f=%f% c:\BW\symcache\nghttp*
set f=%f% c:\BW\symcache\ngtcp2*
set f=%f% c:\BW\symcache\sqlite3*
set f=%f% c:\BW\symcache\ssl*
set f=%f% c:\BW\symcache\tls*
set f=%f% c:\BW\symcache\turbojpeg*
set f=%f% c:\BW\symcache\zlib*

for /d %%i in (%f%) do rd /s/q %%i
