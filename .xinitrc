#!/bin/sh

xrdb ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

session=${1:-i3}

case $session in
	i3		) exec i3;;
	swm | wmutils	) sxhkd -m -1 -c /home/ylli2/Downloads/source/configs/sxhkdrc & exec swm;;
	twm		) sxhkd -m -1 -c /home/ylli2/Downloads/source/configs/sxhkdrc & exec twm;;
	*) exec $1;;
esac
