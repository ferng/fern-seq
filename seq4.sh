#!/bin/bash
puredata -noaudio -alsamidi -midiindev "1,2,3" -midioutdev "1,2,3" -open ~/Documents/Pd/fern-seq/seq4.pd  &
#puredata -nogui -noaudio -alsamidi -midiindev "1,2" -midioutdev "1,2" -open seq3.pd  &

sleep 3

sudo systemctl restart amidiminder
