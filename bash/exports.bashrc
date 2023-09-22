PS1='\[\033[1;32m\]\u@\[\033[0;34m\]\h\[\033[1;34m\] \W \$ \[\033[0m\]'

LS_COLORS=$LS_COLORS:'ow=1;90:tw=1;90:' 
export LS_COLORS

#auto complete with sudo
complete -cf sudo

# temporary fix on urxvt starting half way the screen
if [[ `ps ho command $(ps ho ppid $$)` == 'urxvt' ]]; then
	clear
fi

alias vim=nvim

PATH=~/.travisconfig/scripts:$PATH
