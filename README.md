# install puredata and some other bits
```bash
sudo apt-get install puredata
sudo apt-get install qjackctl
#sudo apt-get install at-spi2-core
#sudo apt-get install alsa-patchbay
```

# configure the environment
```bash
# check whether audio group is setup
cat /etc/security/limits.d/audio.conf

# if not
sudo vi /etc/security/limits.conf
# then add
@audio - rtprio 99
@audio - memlock unlimited
@audio - nice -10

# if there's no audio group
sudo addgroup audio
sudo addgroup fern audio

# if there is
sudo adduser fern audio
```

# qjack
* Settings | parameters | midi driver seq
* Settings | parameters | input device hw:PCH

# puredata
* preferences | midi | <CHANGE NOTHING!!> | save all settings | apply | ok

# start it all up
```bash
qjackctl
puredata -jack -alsa
puredata -jack -alsamidi
puredata -jack -alsamidi -rt

#multiple devices (ports)
puredata -midiindev "1,2" -midioutdev "1,2"

#mine
puredata -alsa -midiindev "1,2" -midioutdev "1,2"
#turn DSP off
```

