
set workingdir = %~dp0
rmdir /Q /S build-boostuser
rmdir /Q /S boostuser\.bdep
pushd boostuser
bdep init ?sys:libboost/* -C ../build-boostuser cc config.cxx.loptions="/LIBPATH:%workingdir%\boost_empty_install\lib"
bdep init ?sys:libboost/*
popd
