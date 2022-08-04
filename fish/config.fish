# useful helpers
# fish_key_reader, fish_config

# no greeting message
set -U fish_greeting

# no autosuggestion by default
#set -g fish_autosuggestion_enabled 0


# set prompt
function fish_prompt
    set_color "#ffc800"
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

# line editing key bindings
bind \ct toggle_autosuggestion
bind , accept-autosuggestion
bind \e\[C forward-single-char
bind \ck kill-whole-line

# add some gruvbox syntax highlighting
set fish_color_command "#d3869b"
set fish_color_param "#8ec07c"
set fish_color_keyword "#d3869b" --italics --bold
set fish_color_comment "#a89984"
set fish_color_error "#fb4934"
set fish_color_cancel "#fb4934"

# alias
alias l='exa -al --color=always --group-directories-first'
