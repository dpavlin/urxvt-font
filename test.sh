#!/bin/sh -ex

if [ ! -z "$1" ] ; then
cat font.xrdb | sed s/Terminus/$1/g > fonts/$1
xrdb -merge fonts/$1
else
xrdb -merge `ls fonts/* | head -1`
fi
xrdb -merge install.xresource
xrdb -query
urxvt
