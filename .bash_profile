# .bash_profile

# User specific environment 
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#export PATH="$HOME/.local/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL"

# do not use ksshaskpass
#unset SSH_ASKPASS

# fzf interface
export FZF_DEFAULT_OPTS="--border --info=inline --height=50% --prompt=' ' --pointer='|>' --margin 5% --color='bg+:blue,gutter:black,pointer:red,border:blue'"

# colourful manpages, see less manual
export GROFF_NO_SGR=1
export MANPAGER="less -R --use-color -Dd+y -Du+b -s -M +Gg"

# change input method
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# start window manager
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#    exec startx
#fi
