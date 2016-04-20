#!/bin/sh

exec xinit $1 -- :1 -nolisten tcp vt1
