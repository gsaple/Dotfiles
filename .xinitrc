# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# setup dual monitors
xrandr --output HDMI-1 --auto --pos 0x0 --output LVDS-1 --auto --right-of HDMI-1

# compositor
# picom --experimental-backends &

# randomise wallpaper
wallpaper.sh r &

# load time bar
toggle_bar.sh

# change CapsLock to Control
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Control mod key when it is pressed together with other key
# Escape key when it is pressed and released on its own
xcape

# run dwm
exec ~/mybin/dwmstart.sh
