#!/bin/bash

case $1 in
	"wk"|"workman")
		setxkbmap -v workman
		xset r 66
		;;
	"dv"|"dvorak")
		setxkbmap dvorak
		xset -r 66
		;;
	"us")
		setxkbmap us
		xset -r 66
		;;
	*)
esac

