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



# automation
## simple aliases

alias ls="ls -Alp"
alias list="ls | grep -v .swp | sort -k1,1 -k9,9 -r"
alias compile="clang -Wall -Wextra -Werror"
alias today="echo 20\$(date \"+%y%m%d\")"
alias cdgitroot="cd $(git rev-parse --show-toplevel)"
alias norminetter="norminette -R CheckForbiddenSourceHeader"
alias gitlog="git log --all --graph --max-count=75 --oneline"
# alias gitlog="git log --all --graph --oneline"
# alias vimgitlog="vim <(git log --all --graph --oneline)"



## script aliases

alias zshrc="source $HOME/.zshrc"
alias setenv="source $env/setenv.sh"
alias aux="zsh $aux/foundation/aux.sh"
alias vim="aux _vim"



## vim aliases

alias vimzshrc="vim $data/.zshrc"
alias vimvimrc="vim $data/.vimrc"
alias vimsetenv="vim $env/setenv.sh"
