#!/bin/bash

o="Hibernate\nShutdown\nReboot to Windows\nReboot\nHibernate to Windows\nSuspend\nSlock"
s=$(echo -e $o | ~/.config/scripts/menu.sh *.color1 Power)
case $s in
   "Slock")
      slock ;;
   "Hibernate")
      sudo systemctl hibernate ;;
   "Shutdown")
      sudo grub-reboot 0
      sudo systemctl poweroff ;;
   "Reboot to Windows")
      sudo grub-reboot 1
      sudo systemctl reboot ;;
   "Reboot")
      sudo grub-reboot 0
      sudo systemctl reboot ;;
   "Hibernate to Windows")
      sudo grub-reboot 1
      sudo systemctl hibernate ;;
   "Suspend")
      sudo systemctl suspend ;;
esac
