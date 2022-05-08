#/bin/bash

alias ll='lsd -la'
alias grep='grep --color=always'
alias teams='teams -no-sandbox'
alias bgd='feh --bg-scale'
alias ls='ls --color=auto'

PS1="\[\033[01;36m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

export PATH=$PATH:/home/ent/.local/bin
