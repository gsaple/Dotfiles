# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# setup dual monitors
xrandr --output HDMI-1 --auto --pos 0x0 --output LVDS-1 --auto --right-of HDMI-1

# compositor
# picom --experimental-backends &

# randomise wallpaper
wallpaper.sh &

# load time bar
toggle_bar.sh

# run dwm
exec ~/mybin/dwmstart.sh
