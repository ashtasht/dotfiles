#!/bin/bash

dir=$(mktemp -d /tmp/wallpaper.XXXX)
x=$(shuf -i 22936-24144 -n1)
y=$(shuf -i 140-13728 -n1)
convert ~/.wallpaper/painting.jpg -crop 5760x3240+$x+$y $dir/1.png
x=$(shuf -i 22936-24144 -n1)
y=$(shuf -i 140-13728 -n1)
convert ~/.wallpaper/painting.jpg -crop 5760x3240+$x+$y $dir/2.png
feh --bg-fill $dir/1.png $dir/2.png
#feh --bg-fill ~/.wallpaper/1.png ~/.wallpaper/2.png
