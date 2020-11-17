#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\e[0;32m\d \A\e[m\u@\h \W \$ '
PS1='\u \W \$ ' # User and current directory name

alias bspwmconf='nvim ~/.config/bspwm/bspwmrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias please='sudo' # cuz why not :)

export EDITOR=nvim
export VISUAL=nvim

source ~/aliases.sh
source ~/utils/main.sh
