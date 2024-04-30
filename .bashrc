# stop sourcing bashrc if it is a login_shell
if shopt -q login_shell; then
    return
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
#export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish"\
	&& -z ${BASH_EXECUTION_STRING} ]]; then
    exec fish
fi

PS1='$ '
. "$HOME/.cargo/env"
