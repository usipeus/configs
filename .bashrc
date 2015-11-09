#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='colordiff'
PS1='[\u@\h \W]\$ '

# put ruby in the path
PATH="`ruby -e 'puts Gem.user_dir'`/bin:$PATH"

# default text editor for yaourt n stuff
export EDITOR="nano"

PATH=$PATH:~/.local/bin

complete -c sudo
