#!/usr/bin/env bash

exec_pull ffmpeg -i http://ice.stream.alexjones.radio/source \
-c:a libfdk_aac -b:a 320k -filter:a "volume=0.9" -f flv rtmp://localhost:1935/hls/stream_high \
-c:a libfdk_aac -b:a 128k -filter:a "volume=0.9" -f flv rtmp://localhost:1935/hls/stream_med \
-c:a libfdk_aac -b:a 64k -profile:a aac_he -filter:a "volume=0.9" -f flv rtmp://localhost:1935/hls/stream_low \
-c:a libfdk_aac -b:a 32k -profile:a aac_he_v2 -filter:a "volume=0.9" -f flv rtmp://localhost:1935/hls/stream_super_low