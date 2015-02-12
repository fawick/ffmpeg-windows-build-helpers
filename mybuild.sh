#!/usr/bin/env bash

./cross_compile_ffmpeg.sh \
	--disable-nonfree=y \
	--build-choice=win32 \
	--build-ffmpeg-shared=y \
	--build-ffmpeg-static=n
OLDWD=$(pwd)
cd sandbox/win32/ffmpeg_git_shared.installed/include
if [ ! -f inttypes.h ] ; then
	curl -O https://msinttypes.googlecode.com/svn/trunk/inttypes.h
fi
cd $OLDWD

