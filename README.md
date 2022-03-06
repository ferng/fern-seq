# Thank you!
well thank you for dropping by to see what my puredata midi toolkit looks like.

If you want to hear what I've been using it for you can check it out on any of these:

* [spotify](https://artists.spotify.com/c/artist/4YN1v2Aa012rJmh4dojhJa/profile/overview)
* [apple music](https://music.apple.com/gb/album/one-hay-ep/1611898320?uo=4&app=music)
* [amazon music](https://music.amazon.co.uk/artists/B09TGXTL2V/scroll-wheel)
* [deezer](https://www.deezer.com/en/artist/161897102)
* [netease](https://music.163.com/#/artist?id=51676496)

Or you can watch it in action here:
* [youtube](https://www.youtube.com/channel/UC57FtOVpoylLd5JILW6J8-g)


Anyway now to the code
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

