python -m pip install buildbot-worker==3.7.0

if not exist c:\ews mkdir c:\ews

cd c:\ews
if not exist setup-tools git clone https://github.com/fujii/webkit-win-test-ews setup-tools
