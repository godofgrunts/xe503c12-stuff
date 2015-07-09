# xe503c12-stuff
A collection of modified files for my Samsung Chomebook 2 running Arch Linux ARM

There doesn't seem to be a lot of work in the Arch ARM forums for the xe503c12 so as I find and fix things I'll be adding them to the repo.

To get sound working install alsa-util and pulseaudio

Copy HiFi.conf to /usr/share/alsa/ucm/DAISY-I2S/HiFi.conf

cp ./Hifi.conf /usr/share/alsa/ucm/DAISY-I2S/HiFi.conf

Copy default.pa to cp /etc/pulse/default.pa

cp ./default.pa /etc/pulse/default.pa

After a reboot (or restarting alsa and pulseaudio) sound should work.
