#/bin/bash

o0="colemak"
o1="qwerty"
o2="dvorak"
sel=$(echo -e "$o0\n$o1\n$o2" | rofi -dmenu -p key)
if [ $sel = "qwerty" ]; then
	setxkbmap us
else
	setxkbmap us -variant $sel
fi
