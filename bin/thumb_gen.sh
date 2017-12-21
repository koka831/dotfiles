#!/bin/bash

_run() {
  # readonly SIZE=1920X1080
  readonly SIZE=700X300
  fname=$(cat -)
  mkdir -p $PWD/.thumb

  duration=`ffprobe -v error -select_streams v:0 -show_entries stream=duration \
  -of default=noprint_wrappers=1:nokey=1 "$fname"`
  duration=${duration%.*}
  duration=`expr $duration / 10`
  echo processing $fname ...
  block=${duration%.*}
  : "gen thumb" && {
    for i in `seq 2 9`
    do
      ss=$(( $block * $i ))
      ffmpeg -ss $ss -i "$fname" -y -an -vcodec png -vf scale=400:-1 -loglevel panic -r 1 -vframes 1 $PWD/.thumb/"$fname".$i.png
    done
    echo "$fname".*.png
    convert -delay 200 $PWD/.thumb/"$fname.*.png" $PWD/.thumb/"$fname".gif
    rm $PWD/.thumb/"$fname".*.png
    echo done
  }
}

if [ -p /dev/stdin ]; then
  cat -
else
  echo $@
fi | _run
