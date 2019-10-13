#/bin/bash
alias hc=herbstclient

# Varibles
nbg=$(xgetres *.background)
nfg=$(xgetres *.foreground)
ufg=$(xgetres *.foreground)
unfg=$(xgetres *.color5)
cfg=$(xgetres *.color1)

# Bar
herbstclient --idle 2>/dev/null | {
    tags=( $(herbstclient tag_status 1) )
    while true; do
	# tags
        for tag in "${tags[@]}" ; do
            case ${tag:0:1} in
                '#') cstart="^fg($cfg)" ;;
                '+') cstart="^fg($ufg)" ;;
                '-') cstart="^fg($ufg)" ;;
                '%') cstart="^fg($ufg)" ;;
                '+') cstart="^fg($ufg)" ;;
                '.') cstart="^fg($unfg)" ;;
		'-') cstart="^fg($unfg)" ;;
                *)   cstart='' ;;
            esac
            tagstring="${cstart}^ca(1,herbstclient use ${tag:1}) ${tag:1} "
            tagstring+="^ca()^fg()"
            echo -n "$tagstring"
        done
	
  echo ""

	read hook || exit
        case "$hook" in
            tag*) tags=( $(herbstclient tag_status) ) ;;
            quit_panel*) exit ;;
        esac
    done
} | dzen2 -x 2023 -h 33 -w 1080 -ta l -fn 'PixelOperator' -fg "$nfg" -bg "$nbg"
