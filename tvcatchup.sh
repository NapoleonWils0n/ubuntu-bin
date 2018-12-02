#!/bin/sh

input="$1"
wscrape=$(whereis wscrape | awk '{print $2}')
#echo $($wscrape $input)
/usr/bin/ffmpeg -loglevel fatal -user-agent Kodi/14.1 -i $($wscrape $input) -codec copy -bsf:v h264_mp4toannexb,dump_extra -tune zerolatency -f mpegts pipe:1
