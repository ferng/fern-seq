#!/bin/bash
pkill puredata
puredata -noaudio -audiobuf 1 -r 192000 -sleepgrain 0.1 -rt -no-gui -alsamidi -midiindev "1,2,3,4" -midioutdev "1,2,3,4" -open ~/Documents/Pd/fern-seq/seq4.pd  &
#puredata -nogui -noaudio -alsamidi -midiindev "1,2" -midioutdev "1,2" -open seq3.pd  &

sleep 3

sudo systemctl restart amidiminder
