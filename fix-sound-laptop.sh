sudo pacman -S alsa-firmware

sudo echo "options snd-hda-intel dmic_detect=0" >> /etc/modprobe.d/alsa-base.conf

pulseaudio -k

reboot