choco install -y xampp-81 python311 ruby gperf llvm ninja diffutils
choco install -y visualstudio2022buildtools visualstudio2022-workload-vctools
choco install -y cmake.install --installargs 'ADD_CMAKE_TO_PATH=System'
choco install -y git.install --params="/NoAutoCrlf /NoShellIntegration /NoGuiHereIntegration /NoShellHereIntegration /GitAndUnixToolsOnPath"
if errorlevel 1 pause
