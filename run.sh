#!/bin/sh

CWD=`pwd`
docker run -it -v ${CWD}/SM-N900S_LL_Opensource:/home/build/note3-src -v ${CWD}/arm-eabi-4.7:/opt/toolchains/arm-eabi-4.7 -v ${CWD}/patches:/home/build/patches nanishin/galaxy-note3-aosp bash
