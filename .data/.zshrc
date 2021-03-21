#!/bin/zsh

# source variables

source $(dirname $0)/pathvar.sh
source $env/uservar.sh



# git setting
# Load version control information
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{246}(%F{34}%r%F{246}/%F{34}%b%F{246}) '
zstyle ':vcs_info:*' enable git

# Set up the prompt (with git branch name)
PROMPT='%F{240}%T %F{208}%~ $vcs_info_msg_0_%F{111}%#%f '



# variable

export pathvar=$data/pathvar.sh



# automation
## simple alias

alias ls="ls -alp | grep -v .swp"
alias sourcezshrc="source $HOME/.zshrc"
alias gccsafe="gcc -Wall -Wextra -Werror"
alias today="echo 20\$(date \"+%y%m%d\")"
alias cdgitroot="cd $(git rev-parse --show-toplevel)"



## program alias

alias setenv="source $env/setenv.sh"

alias record="zsh $aux/record.sh"
alias memo="zsh $aux/memo.sh"
alias gitlog="git log --all --graph --oneline"
alias vimgitlog="vim <(git log --all --graph --oneline)"
alias vimall="zsh $aux/vimall.sh"
alias vimcommand="zsh $aux/vimcommand.sh"
alias vimsession="zsh $aux/vimsession.sh"

alias gitpush="zsh $aux/gitpush.sh"

alias backdown="zsh $aux/backdown.sh"
alias backcheck="zsh $aux/backcheck.sh"
alias backup="zsh $aux/backup.sh"

vimassembly() {
	gccsafe -S $1.c && vim $1.s
}



## vim alias

alias vimzshrc="vim $data/.zshrc"
alias vimvimrc="vim $data/.vimrc"
alias vimsetenv="vim $env/setenv.sh"
alias vimvimsession="vim $private/vimsession"
alias vimrecord="vim $private/record.txt"
