This is my simple attempt at having something semi-reproducible to start developing with ACE and either bebbo's toolchain or bartman's vscode amiga plugin.

First:
```
git submodule init
git submodule update
```

On Linux, only bebbo's toolchain works. So build that and run cmake like so:

```
mkdir build
cd build
cmake -S .. -B . -DAMIGA_GCC_PREFIX=/path/to/bebbos/toolchain/prefix
make
```

On Windows, you probably want to use bartman's vscode plugin. First, you probably ensure that the submodule is checked out to the same release that you have installed in your VSCode. Then, use the command "Amiga: Open Terminal" to have a terminal with the toolchain on the path. You need CMake somewhere:

```
mkdir build
cd build
& Path\To\cmake.exe -S .. -B . -G "Unix Makefiles"
gnumake.exe
```
