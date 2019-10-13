#!/bin/bash

o="LibreOffice\nLibreOffice Writer\nLibreOffice Impress\nLibreOffice Math\nLibreOffice Calc\nLibreOffice Web\nLibreOffice Base\nLibreOffice Draw"
s=$(echo -e $o | ~/.config/scripts/menu.sh URxvt.color3 LibreOffice)

case $s in
   "LibreOffice")
      libreoffice ;;
   "LibreOffice Writer")
      libreoffice --writer ;;
   "LibreOffice Impress")
      libreoffice --impress ;;
   "LibreOffice Math")
      libreoffice --math ;;
   "LibreOffice Calc")
      libreoffice --calc ;;
   "LibreOffice Web")
      libreoffice --web ;;
   "LibreOffice Base")
      libreoffice --base ;;
   "LibreOffice Draw")
      libreoffice --draw ;;
esac
