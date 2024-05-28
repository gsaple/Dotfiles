# useful helpers
# fish_key_reader, fish_config

# no greeting message
set -U fish_greeting

# enable autosuggestion by default
set -g fish_autosuggestion_enabled 1

# set prompt
function fish_prompt
    set_color -o blue
    echo -n (basename $PWD)' '
    set_color bryellow
    echo -n '❯ '
end

# toggle autosuggestion
function toggle_autosuggestion
    if test $fish_autosuggestion_enabled -eq 0
        set -g fish_autosuggestion_enabled 1
    else
        set -g fish_autosuggestion_enabled 0
    end
end

function lfcd
    set tmp (mktemp)
    lfubpp -last-dir-path=$tmp $argv
    if test -f "$tmp"
        set dir (cat $tmp)
        rm -f $tmp
        if test -d "$dir"
            if test "$dir" != (pwd)
                cd $dir
            end
        end
    end
end

# unibind (overwrite actually) some inconvenient predefined keybindings
# to list all of them, run bind -k --preset
bind \ev true
bind \el true

# line editing key bindings
bind \ct toggle_autosuggestion
bind , accept-autosuggestion
bind \e\[C forward-single-char
bind \ck kill-whole-line

# add some syntax highlighting
set fish_color_command brmagenta
set fish_color_param brcyan
set fish_color_keyword brmagenta --italics --bold
set fish_color_comment white
set fish_color_error brred
set fish_color_cancel brred

# alias
alias l='eza -al --color=always --group-directories-first'
alias d='edit_dot.sh'
alias c="source $HOME/.local/bin/cdir.sh"
alias e="exit"
alias f="lfcd"
alias n="neofetch" # add '--off' opt if no ascii art is needed
#alias p="picom -b"
alias r="cmatrix -rm -u 20"
alias pi="pipes.sh -B"
alias m="ncmpcpp"
alias dictoffline="sdcv"

# git
alias gc='git commit -m'
alias gs='git status'
alias gl='git log --pretty=oneline'
alias gp='git push'
alias ga='git add .'
alias gd='git diff'
alias v='nvim'
alias lg='lazygit'
alias myip='curl ipinfo.io/ip'
