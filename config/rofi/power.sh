#/bin/sh

o1='shutdown'
o2='reboot'
o3='restart i3'

sel=$(echo -e "$o1\n$o2\n$o3" | rofi -dmenu -p power)

if [ "$sel" = "$o1" ]; then
	shutdown now
elif [ "$sel" = "$o2" ]; then
	reboot
elif [ "$sel" = "$o3" ]; then
	sudo systemctl restart lightdm.service
fi
