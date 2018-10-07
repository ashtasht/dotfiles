#/bin/sh


s=$(ls ~/.config/i3/wallpapers | sed "s/wallpaper\(\d*\)/\1/" | cut -b -2 | sed "s/\.//" | sort -n | rofi -dmenu -p wallpaper)
a=$(echo -e "65\n75\n90\n100" | rofi -dmenu -p alpha)
i="/home/amitg/.config/i3/wallpapers/wallpaper$s.jpg"
~/.config/i3/wall.sh $a $i
