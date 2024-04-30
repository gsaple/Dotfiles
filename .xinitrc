# empty trash
source $HOME/.bash_logout

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# setup dual monitors

# HDMI-1, HDMI-2: external monitor, eDP-1: Lenovo, LVDS-1: Macbook
# HDMI-2: greythorn

# only laptop (Lenovo)
#xrandr --output eDP-1 --mode 1920x1080

# dual monitor, laptop on the right
xrandr --output HDMI-2 --auto --pos 0x0 --output eDP-1 --mode 1920x1080 --left-of HDMI-2

# only external monitor, but it connects to laptop
#xrandr --output HDMI-2 --auto --pos 0x0 --output eDP-1 --off

# compositor
# picom &

# randomise wallpaper
wallpaper.sh r &

# load time bar
toggle_bar.sh

# swap CapsLock to Control_R
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Super_L + Return key when Super_L is pressed and released on its own
# Escape key when Control_L is pressed and released on its own
# otherwise, mod keys funcitioning as usual
# xcape -e 'Super_L=Super_L|Return;Control_L=Escape'
xcape

# input frame work, need to add an input method for it to work
# use fcitx5-configtool
fcitx5 &

# run dwm
exec ~/.local/bin/dwmstart.sh
