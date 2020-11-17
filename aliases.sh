echo "Loading aliases"

# --- git ---
alias ga='git add'  
alias gc='git clone'
alias gd='git diff'
alias gf='git fetch'  
alias gi='git init'  
alias gl='git log'   
alias gs='git status' 
alias gaa='git add --all'
alias glo='git log --oneline'
alias gpl='git pull'      
alias gpu='git push' 

gra() {
  git remote add origin git@github.com:mhorod/"$1".git
}


# --- dirs ---
alias ls="ls --color=auto"
alias cfg='cd ~/.config/'
alias dev='cd ~/dev/'
alias fl='cd ~/Files/'
alias satori='cd ~/dev/satori/'

alias ~='cd ~'
alias ..='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'


# --- pacman ---
alias pacman='pacman --color=always'
alias del='sudo pacman -Rs'
alias pas='pacman -Ss'
alias clean='sudo pacman -Sc'


# --- shell ---
alias ka='killall'
alias rmd='sudo rm -r'
alias md="mkdir"
alias mv='mv -iv'
alias cp='cp -iv'


# --- testing ---
alias rt='run-tests'
alias rts='run-tests --sha'

rtl() {
  run-tests "$@" | tee >({ \
      echo "Test log of 'run-tests $@'" \
      && date \
      && echo "-----------------------------------------"  \
      && grep -v "#"; } > test.log)
}
