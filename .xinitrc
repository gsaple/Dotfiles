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

# swap CapsLock to Control_R
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Super_L + Return key when Shift_L is pressed and released on its own
# Escape key when Control_L is pressed and released on its own
# otherwise, mod keys funcitioning as usual
xcape -e 'Shift_L=Super_L|Return;Control_L=Escape'

# run dwm
exec ~/mybin/dwmstart.sh
