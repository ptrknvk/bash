#!/bin/bash 

# 1 version
cd "/media/ptrknvk/TOSHIBA EXT/Shows/My/Doctor Who/"

url0="DW s11e0"
url1="DW s11e"

for (( i=1; i<11; i++ )); do
    if [ $i -le 9 ]; then
        mkvmerge -o "$i.mkv" "$url0$i.mkv" "$url0$i.srt"
        mv "$i.mkv" "$url0$i.mkv"
        rm "$url0$i.srt"
    else
        mkvmerge -o "$i.mkv" "$url1$i.mkv" "$url1$i.srt"
        mv "$i.mkv" "$url1$i.mkv"
        rm "$url1$i.srt"
    fi
done

# 2 version
for file in "/media/ptrknvk/TOSHIBA EXT/Shows/My/Doctor Who/"DW*mkv; do
  mkvmerge -o "$file" "$file" "${file//.mkv/.srt}" && rm "${file//.mkv/.srt}";
done