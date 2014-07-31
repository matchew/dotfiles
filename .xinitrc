#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap



xsetroot -cursor_name left_ptr &

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

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login


xset +fp /usr/share/fonts/local
xset fp rehash


xrandr --output HDMI-0 --mode 1920x1080 --primary 
xrandr --output DisplayPort-0 --mode 1920x1080 --left-of HDMI-0 --rotate left 
xrandr --output DVI-0 --mode 1920x1080 --left-of DisplayPort-0 --rotate left 
xrandr --output DVI-1 --mode 1920x1080 --left-of DVI-0 --rotate left  


urxvtd &
numlockx &

exec bspwm >> /home/matt/bspwm.log 2>&1
