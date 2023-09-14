#!/bin/sh

alias ls='ls -Ap1'
alias mv='mv -i'	# prevent silent overwriting
alias cp='cp -i'	# prevent silent overwriting
alias list='ls -l | grep -v -e '\''\.o'\'' -e '\''\.swp'\'' -e '\''\.swo'\'' -e '\''\.DS_Store'\'' | sort -k1,1r -k9,9'
alias clang42='clang -Wall -Wextra -Werror'
alias clang++42='clang++ -std=c++98 -Wall -Wextra -Werror -I $git/cpp-library -L $git/cpp-library -l cpp-library'
alias today='echo 20$(date '\''+%y%m%d'\'')'
alias cdgitroot='cd $(git rev-parse --show-toplevel)'
alias cdtoday='cd $local/.temp && mkdir $(today); cd $(today)'
alias norminetter='norminette -R CheckForbiddenSourceHeader'
alias gitlog='git log --all --graph --max-count=42 --oneline'
alias gitlogall='git log --all --graph --oneline'
alias pour='aux pour'
alias record='aux record'
alias vs='aux vimsession'
alias gitd='git status && gitlog'

## script aliases
alias a='source $env/bin/a'
alias vim='a _vim'
alias shrc='source $HOME/.$shellrc'
#alias setenv='source $env/setenv.sh'
#alias aux='source $aux/foundation/aux.sh'
#alias vim='aux _vim'

## vim aliases
alias vimshrc='vim $env/data/.'$shell'rc'
alias vimvimrc='vim $data/.vimrc'
alias vimsetenv='vim $env/setenv.sh'
alias vimgitignore='vim $rc_files/.gitignore'
alias vimrecord='vim $git/.private/record.txt'
alias vimalias='vim $env/data/alias.sh'

# out-dated
# alias self='basename $(git rev-parse --show-toplevel)'
# alias gitlog='git log --all --graph --oneline'
# alias vimgitlog='vim <(git log --all --graph --oneline)'
