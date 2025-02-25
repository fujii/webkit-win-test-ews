rd /s/q c:\BW\temp
mkdir c:\BW\temp

mkdir c:\BW\symcache
cd c:\BW\symcache
set f=JavaScriptCore* WebCore* WebKit* aom* avif* brotli* cairo* crypto* harfbuzz* icu* jpeg* jxl* libcurl* libexslt* libpng* libsharpyuv* libwebp* libxml2* libxslt* nghttp* ngtcp2* sqlite3* ssl* tls* turbojpeg* zlib*
for /d %%i in (%f%) do rd /s/q %%i

del /q %windir%\*.tmp
del /q %windir%\Temp\*.tmp
del /q %windir%\Temp\*.csp-report.txt
