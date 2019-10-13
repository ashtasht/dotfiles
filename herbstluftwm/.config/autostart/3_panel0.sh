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
    tags=( $(herbstclient tag_status 0) )
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
  # volume
  v=$(amixer -c1 get Master | grep % | sed 's/.*\[\(.*\)\%.*/\1/')

	# music
  ms=
  if [[ $(cmus-remote -Q | grep "status paused") ]]; then
    ms="^fg($unfg)"
  fi
	m=$(cmus-remote -Q | grep "tag title" | cut -b 11-)
	# clock
	d=$(date "+%d/%m/%Y %H:%M")

	# window
	w=$(xdotool getwindowfocus getwindowname | awk -v len=40 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }' )
	
  vl=${#v}
  ml=${#m}
  mw=$(echo "($ml+$vl+2)*7.2+9" | bc)
  echo "^p(+10)$w^p(_CENTER)^p(-50)$d^p(_RIGHT)^p(-$mw)$ms$m ^fg()$v%"

	read hook || exit
        case "$hook" in
            tag*) tags=( $(herbstclient tag_status) ) ;;
            quit_panel*) exit ;;
        esac
    done
} | dzen2 -y 728 -h 23 -w 1920 -ta l -fn 'PixelOperator' -fg "$nfg" -bg "$nbg" # -e "entertitle=uncollapse,grabkeys;enterslave=grapkeys;leaveslave=collapse,ungrabkeys;button1=menuexec;button2=togglestick;button4=scrollup;button5=scrolldown"

