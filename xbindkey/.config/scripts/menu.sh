dmenu -i -f -fn PixelOperator -dim 0.15 -x "120" -y 120 -w 400 -l 40 -dc "$(xgetres *.background)" -nb "$(xgetres *.background)" -nf "$(xgetres *.foreground)" -sb "$(xgetres $1)" -p $2
