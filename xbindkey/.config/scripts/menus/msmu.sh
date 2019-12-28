#!/bin/bash

if [ "0" = "$(msmu status)" ]; then
 o="Initialize msmu\nCancel"
 s=$(echo -e $o | ~/.config/scripts/menu.sh *.color6 msmu)
 case $s in
   "Initialize msmu") msmu init ;;
   "*") exit ;;
 esac
elif [ "1" = "$(msmu status)" ]; then
 o="Pause/resume\nSongs\nList\nNext\nPrint queue\nEdit queue\nQuit"
 s=$(echo -e $o | ~/.config/scripts/menu.sh *.color6 msmu)
  case $s in
     "Pause/resume")
        msmu pause ;;
     "Songs")
        sudo systemctl hibernate ;;
     "List")
        sudo grub-reboot 0
        sudo systemctl poweroff ;;
     "Next")
        msmu next ;;
     "Print queue")
        #urxvt -e sh -c "msmu queue; echo \"Press any key to exit...\"; read -n 1" ;;
        msmu queue | ~/.config/scripts/menu.sh "*.color6" "msmu" ;;
     "Edit queue")
        urxvt -e sh -c "msmu editqueue"
        msmu queue | ~/.config/scripts/menu.sh "*.color6" "msmu" ;;
     "Quit")
        msmu quit ;;
  esac
fi
