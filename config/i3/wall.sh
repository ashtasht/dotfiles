#/bin/sh

here=/home/amitg/.config/i3

if test "$#" = "2" ; then
	# set the wallpaper
	wal -a $1 -i $2

	# move image
	cp $2 /$here
	mv -f $here/$(basename $2) $here/wallpaper.${2##*.}

else
	echo "Usage: wall <alpha> <image>"
fi
