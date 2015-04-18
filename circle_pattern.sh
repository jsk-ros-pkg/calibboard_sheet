#!/bin/bash
# Generate circle dot pattern
wget -q --timestamping https://raw.githubusercontent.com/Itseez/opencv/master/doc/pattern_tools/gen_pattern.py
wget -q --timestamping https://raw.githubusercontent.com/Itseez/opencv/master/doc/pattern_tools/svgfig.py

for s in 10
do
  for i in $(seq 3 7)
  do
    for j in $(seq 3 7)
    do
      python gen_pattern.py -u mm -s $s -c $i -r $j -T acircles -o acircle_calibboard_${i}x${j}_0.0${s}.svg
      rsvg-convert -f pdf -o acircle_calibboard_${i}x${j}_0.0${s}.pdf acircle_calibboard_${i}x${j}_0.0${s}.svg
    done
  done
done
