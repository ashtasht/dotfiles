#/bin/bash

if [[ $1 == *.jpg ]]; then
		cp -f $1 /home/amitg/.config/i3/
		mv -f $(basename $1) wallpaper.jpg
		wal -a 75 -i ~/.config/i3/wallpaper.jpg

else
	if [[ $1 == *.png ]]; then
		cp -f $1 /home/amitg/.config/i3/
		mv -f $(basename $1) wallpaper.png
		wal -a 75 -i /home/amitg/.config/i3/wallpaper.png
	else
		echo Unknown file type.
	fi
fi
