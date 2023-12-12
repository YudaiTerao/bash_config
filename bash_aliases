#!/bin/bash
##################################
# alias
##################################

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dh='du -h -s ./*'

alias bas='vim ~/.bash_aliases'
alias sbas='source ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias ana='source ~/Program/anaconda3/bin/activate'

alias path='echo $PATH'
alias clip='xsel --clipboard --input'

##################################
#function
##################################

function count(){
        ls -1U $1 | wc -l
}
function hg(){
        history | grep $1
}
function al(){
case $# in
'0' | '1' ) echo "ali: argument false";;
*         ) A="${@#$1}"
            alias "$1"="$A"
esac
}






