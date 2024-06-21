#!/bin/bash
youtube_url="https://www.youtube.com/live/jueJiFeTjR4?si=451FSd-hovbk_8mi"
m3u8_url=$(youtube-dl -g -f hls "$youtube_url")
echo "#EXTM3U" > playlist.m3u8
echo "#EXTINF:-1,Live Stream" >> playlist.m3u8
echo "$m3u8_url" >> playlist.m3u8