#!/bin/bash
aconnect -x

puredata -noaudio -alsamidi -midiindev "1,2" -midioutdev "1,2" -open seq3.pd  &
#puredata -nogui -noaudio -alsamidi -midiindev "1,2" -midioutdev "1,2" -open seq3.pd  &

sleep 3

aconnect Pure:3 UM-ONE:0

aconnect Pure:2 APC:0 
aconnect Pure:2 KP3+:0
aconnect Pure:2 Arturia:0
aconnect Pure:2 Circuit:0

aconnect APC:0 Pure:0
aconnect Arturia:0 Pure:0

aconnect Arturia:0 KP3+:0
