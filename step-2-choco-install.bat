choco install -y xampp-81 python311 ruby gperf ninja diffutils
choco install -y llvm --version=17.0.6
choco install -y visualstudio2022buildtools visualstudio2022-workload-vctools windows-sdk-10-version-2004-windbg
choco install -y cmake.install --installargs 'ADD_CMAKE_TO_PATH=System'
choco install -y git.install --params="/NoAutoCrlf /NoShellIntegration /NoGuiHereIntegration /NoShellHereIntegration /GitAndUnixToolsOnPath"
if errorlevel 1 pause
