#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap -layout fr
xrandr --output HDMI-1 --above eDP-1
xset s off -dpms
#feh --bg-scale /home/ent/Downloads/jan-kopriva-UCo27T4g2V4-unsplash.jpg
#feh --bg-scale /home/ent/Downloads/jan-kopriva-ocmrkY0bifM-unsplash.jpg
feh --bg-scale /home/ent/Downloads/benjamin-henon-RfJX9jGKG84-unsplash.jpg
picom -b
exec qtile start
