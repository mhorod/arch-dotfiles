function fish_greeting
  echo "Loading aliases for fish ><>"
end

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
alias glob='git log --oneline --branches --graph'
alias gpl='git pull'      
alias gpu='git push' 


function gra
  git remote add origin git@github.com:mhorod/"$1".git
end

# --- dirs ---
alias ls="ls --color=auto"
alias cfg='cd ~/.config/'
alias dev='cd ~/dev/'
alias fl='cd ~/Files/'
alias satori='cd ~/dev/satori/'

alias ..='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'


# --- shell ---
alias ka='killall'
alias rmd='sudo rm -r'
alias md="mkdir"
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'


# --- testing ---
alias rt='run-tests'
alias rts='run-tests --sha'

function rtl
  run-tests "$argv" | tee >({ \
      echo "Test log of 'run-tests $@'" \
      && date \
      && echo "-----------------------------------------"  \
      && grep -v "#"; } > test.log)
end

# --- dev ---
alias py3='python3'

function gpp
  echo "g++ $1.cpp -o$1 -g -fsanitize=address && ./$1"
  g++ "$1".cpp -o"$1" -g -fsanitize=address && ./"$1"
end

# ---- fish ----
alias ls='exa -al --color=always --group-directories-first'


function killdiscord
  ps aux | grep discord | grep -oP " [0-9]+ " | head -n 1 | xargs kill -9
end

function killmc
  ps aux | grep minecraft | grep -oP " [0-9]+ " | head -n 1 | xargs kill -9
end

function killp 
  ps aux | grep $argv[1] | grep -oP " [0-9]+ " | head -n 1 | xargs kill -9
end

alias java-format='java -jar ~/utils/google-java-format.jar'
