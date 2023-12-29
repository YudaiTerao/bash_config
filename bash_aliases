#!/bin/bash
##################################
# aliases
##################################

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias dh='du -h -s ./* | sort -k 1'

alias cb='cd ~/.bash_config'

alias bas='vim ~/.bash_config/bash_aliases'
alias bas='vim ~/.bash_config/bash_aliases'
alias sbas='source ~/.bashrc'
alias vrc='vim ~/.vim/.vimrc'

alias path='echo $PATH'
alias clip='xsel --clipboard --input'

alias obadd='git ls-files | xargs -i git add {}'
alias grm='git rm --cached'

##################################
#function
##################################
function dh(){
    du -h -s ./* | grep ^[0-9.]*T | sed -e "s/\.\///g" | column -t | sort -n -r
    du -h -s ./* | grep ^[0-9.]*G | sed -e "s/\.\///g" | column -t | sort -n -r
    du -h -s ./* | grep ^[0-9.]*M | sed -e "s/\.\///g" | column -t | sort -n -r
    du -h -s ./* | grep ^[0-9.]*K | sed -e "s/\.\///g" | column -t | sort -n -r
}

function count(){
        ls -1U $1 | wc -l
}
function hg(){
        history | grep $1
}
function al(){
case $# in
'0' | '1' ) echo "al: argument false";;
*         ) A="${@#$1}"
            alias "$1"="$A"
esac
}
HISTSIZE=50000
HISTFILESIZE=50000

