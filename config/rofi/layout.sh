#/bin/sh

o1="qwerty"
o2="workman"
o3="hebrew"
sel=$(echo -e "$o1\n$o2\n$o3" | rofi -dmenu -p key)
if [ $sel = "qwerty" ]; then
	setxkbmap us
else
	if [ $sel = "hebrew" ]; then
		setxkbmap il 
	else
		setxkbmap us -variant $sel
	fi
fi
