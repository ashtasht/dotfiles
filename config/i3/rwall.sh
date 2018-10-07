#/bin/sh

sh ~/.config/i3/wall.sh $(shuf -i 50-100 -n 1) ~/.config/i3/wallpapers/wallpaper$(shuf -i 1-$(ls ~/.config/i3/wallpapers | wc -l) -n 1).jpg
