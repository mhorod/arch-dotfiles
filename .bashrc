#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias bspwmconf='nvim ~/.config/bspwm/bspwmrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
setxkbmap pl

export EDITOR=nvim
export VISUAL=nvim
