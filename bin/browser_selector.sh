#!/bin/bash

# TODO(milan.medvec) replace title with class
source ~/.profile

# TODO(milan.medvec) replace title with class

sleep 0.2
i3-msg '[title="browser-selector"] resize set 600 400, move position center'
sleep 0.2

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Browser Selector"
TITLE="Browser Selector"
MENU="Which browser do you want to run?"

OPTIONS=(1 "Chrome: mIImp"
         2 "Chrome: ID-sign"
         3 "Chrome: Webout"
         4 "Chrome: Anonymous"
         5 "Show URL")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            cmi $@
            exit 0
            ;;
        2)
            cid $@
            exit 0
            ;;
        3)
            cwe $@
            exit 0
            ;;
        4)
            can $@
            exit 0
            ;;
        5)
            echo $@
            read
            exit 0
            ;;
esac
