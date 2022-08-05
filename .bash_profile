# .bash_profile

# User specific environment 
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export PATH="$HOME/mybin:$PATH"
export EDITOR=nvim
export FZF_DEFAULT_OPTS="
--border --info=inline --height=50% --prompt=' ' --pointer='|>' --margin 5% --color='bg+:blue,gutter:black,pointer:red,border:blue'"

# startup programs
# get some status bar data in the background
status_cache.sh

# start window manager
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi
