#/bin/bash

o0="colemak"
o1="qwerty"
o2="dvorak"
o3="workman"
o4="workman-p"
sel=$(echo -e "$o0\n$o1\n$o2\n$o3\n$o4" | rofi -dmenu -p key)
if [ $sel = "qwerty" ]; then
	setxkbmap us
else
	setxkbmap us -variant $sel
fi
