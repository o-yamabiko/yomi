#!/bin/sh
for f in *.wav
  do
    ffmpeg -i "$f" -c:a libmp3lame -q:a 2 "${f/%wav/mp3}" -c:a libvorbis -q:a 4 "${f/%wav/ogg}"
  done

