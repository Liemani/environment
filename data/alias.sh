# general command
alias ls='ls -Ap1'
alias mv='mv -i'	# prevent silent overwriting
alias cp='cp -i'	# prevent silent overwriting
alias list='ls -l | grep -v -e '\''\.o'\'' -e '\''\.swp'\'' -e '\''\.swo'\'' -e '\''\.DS_Store'\'' | sort -k1,1r -k9,9'
alias today='echo 20$(date '\''+%y%m%d'\'')'
alias cdgitroot='cd $(git rev-parse --show-toplevel)'
alias cdtoday='cd $local/.temp && mkdir $(today); cd $(today)'
alias gitlog='git log --all --graph --max-count=42 --oneline'
alias gitlogall='git log --all --graph --oneline'
alias gitd='git status && gitlog'

# a::command
alias a='source $env/bin/a'
alias dump='a dump'
alias record='a record'
alias vim='a _vim'
# alias vs='a vimsession'

## script
alias shrc='source $HOME/.'"$shell"'rc'

## vim
alias vimvimrc='vim $env/data/.vimrc'
alias vimsetenv='vim $env/setenv.sh'
alias vimgitignore='vim $env/data/.gitignore'
alias vimrecord='vim $personal/.private/record.txt'
alias vimdump='vim $personal/.private/dump.txt'
alias vimalias='vim $env/data/alias.sh'

# out-dated
# alias self='basename $(git rev-parse --show-toplevel)'
# alias gitlog='git log --all --graph --oneline'
# alias vimgitlog='vim <(git log --all --graph --oneline)'
#alias clang42='clang -Wall -Wextra -Werror'
#alias clang++42='clang++ -std=c++98 -Wall -Wextra -Werror -I $git/cpp-library -L $git/cpp-library -l cpp-library'
#alias norminetter='norminette -R CheckForbiddenSourceHeader'
#alias setenv='source $env/setenv.sh'
#alias aux='source $aux/foundation/aux.sh'
#alias vim='aux _vim'
