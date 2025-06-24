md d:\packages\npm
setx /M npm_config_cache D:\packages\npm
xcopy  %AppData%\npm-cache d:\packages\cargo /e /s
xcopy  %LocalAppData%\npm-cache d:\packages\cargo /e /s

md d:\packages\pip
setx /M PIP_CACHE_DIR D:\packages\pip
xcopy  %LocalAppData%\pip\Cache d:\packages\pip /e /s

md d:\packages\nuget
setx /M NUGET_PACKAGES D:\packages\nuget
xcopy  %USERPROFILE%\.nuget\packages d:\packages\nuget /e /s

md d:\packages\vcpkg
setx /M VCPKG_DEFAULT_BINARY_CACHE D:\packages\vcpkg
xcopy %LOCALAPPDATA%\vcpkg\archives d:\packages\vcpkg /e /s
xcopy %APPDATA%\vcpkg\archives d:\packages\vcpkg /e /s

md d:\packages\cargo
setx /M CARGO_HOME D:\packages\cargo
xcopy  %USERPROFILE%\.cargo d:\packages\cargo /e /s

md d:\packages\maven
setx /M MAVEN_OPTS "-Dmaven.repo.local=D:\packages\maven"
xcopy  %USERPROFILE%\.m2\repository d:\packages\maven /e /s

md d:\packages\gradle
setx /M GRADLE_USER_HOME D:\packages\gradle
xcopy  %USERPROFILE%\.gradle d:\packages\gradle /e /s
