#!/bin/bash

YOUTUBE_URL="https://www.youtube.com/live/jueJiFeTjR4?si=451FSd-hovbk_8mi"
REPO_DIR="$HOME/IPTV-TAMIL"

M3U8_URL=$(youtube-dl -g -f hls "$YOUTUBE_URL")

echo "#EXTM3U" > playlist.m3u8
echo "#EXTINF:-1,Live Stream" >> playlist.m3u8
echo "$M3U8_URL" >> playlist.m3u8
