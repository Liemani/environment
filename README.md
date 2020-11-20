### prologue

I recommand using this program on new environment not old. And `backup` command's uniformed commit message makes hard differentiating your commits. So i recommand to use this program for backup purpose of repository which is don't need to record the change log or version.

## Environment copy program to new environment

### How to use

0. `git clone https://github.com/Liemani/env.git` any where
1. If you control private git repository, set ssh key for your new environment to git (or not, you may enter id and password at private gitting time)
2. Edit `gitdata.sh`
3. Edit `uservar.sh`
4. `source setenv.sh`
    - All in gitlist will be cloned to ~/programming/git
    - Liemani's `.zshrc`, `.vimrc` and prompt setting will be applied

### Feature

- Target shell: zsh
- Liemani's .zshrc
- Liemani's .vimrc
- Liemani's auxiliary program
- Liemani's prompt

### Command

- `% backdown` command will git pull all the gitlist
- `% backcheck` command will git status all the gitlist
- `% backup` command will git push all the gitlist with commit message `backup`
