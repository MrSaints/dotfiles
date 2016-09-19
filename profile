# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Configure secondary display
exec xrandr --output VGA1 --auto --left-of LVDS1 &
wait

# Set wallpaper for i3
exec feh --bg-fill "/home/mrsaints/Pictures/Wallpaper.png" --bg-fill "/home/mrsaints/Pictures/Wallpaper 2.png" &

# Disable TouchPad
synclient TouchpadOff=1 &

# Set terminal for i3
export TERMINAL=rxvt

# Reduce keyboard delay
xset r rate 200 25

# Start go-sct
# exec sct
