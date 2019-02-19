# galaxy-note3-aosp
Galaxy Note3(SM-N900K) AOSP build

## Kernel And Platform
* Android5.0
    > SM-N900S_LL_Opensource.zip got from in https://opensource.samsung.com
## Toolchain
* arm-eabi-4.7 (Currently added with submodule)
    > git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7
## Docker Build
* Inspired from https://github.com/gmacario/easy-build/blob/master/build-aosp/Dockerfile
* **Caution**
If native filesystem of Mac OS is used for source volume mount,
it will makes build error by overwritten case sensitive files in netfilter.
### Build Docker Image
    > ./build.sh
### Run Docker Image
    > ./run.sh
### Build Galaxy Note3 AOSP in Docker Container
* Kernel Build
    > mkdir /home/build/kernel_in_container
    > cd /home/build/kernel_in_container
    > tar xvzf /home/build/note3-src/Kernel.tar.gz
    > cp -f /home/build/patches/build_kernel.sh_ktt_defconfig build_kernel.sh
    > cp -f /home/build/patches/timeconst.pl_patch kernel/timeconst.pl
    > ./build_kernel.sh
* Platform Build

    > Not yet tested
## License
* GPLv2
