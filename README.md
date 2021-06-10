### prologue

I recommand using this program on new environment not old. And `backup` aux command's uniformed commit message makes hard differentiating your commits. So I recommand to use this program for backup purpose of repository which is don't need to record the change log or version.

## Environment Managent Program

### How to use

0. `git clone https://github.com/Liemani/env.git` any where
1. If you control private git repository, set ssh key for your new environment to your git account (or not, you may enter id and password at private gitting time)
2. Edit `env/gitdata.sh`, `env/uservar.sh`
3. Execute 'setenv.sh' script in env `source env/setenv.sh`
    - All in gitlist will be cloned to `~/programming/git/`
    - Liemani's `.zshrc`, `.vimrc` and prompt setting will be applied

### Usage of aux

```zsh
usage: aux <aux_command> <arguments>

basic aux commands:
    ls		List all aux commands
    vim		Create or edit aux command's script file
    backdown	Do 'git clone' or 'git pull' for all repositories registered in 'gitdata.sh'
    backcheck	Do 'git status' for all repositories registered in 'gitdata.sh'
    backup	Do 'git push' all modifies with commit message "backup" for all repositories registered in 'gitdata.sh'
    vimsession	Open vim session file of matching repository name

advanced aux commands:
    generate_c_structure	Generate 't_<structure_name>.h', 't_<structure_name>.c' files
```

### Features

- Target OS: macOS
- Target shell: zsh
- Liemani's `.zshrc`
- Liemani's `.vimrc`
- Liemani's `prompt`
- Liemani's `aux` program
- You can save vim session to `<repository>/.vimsession/<session name you want>` by pressing `<F3>` in vim
  - You have to `mkdir <repository>/.vimsession` before this to work
  - And you can load that session easily by `aux vimsession <vim session name>`
    - Test `aux vimsession env` which I saved! :D

### Deep Features

- all `vim` command call `aux _vim`, and `_vim` call `command vim`
  - `vim (aliased)` -> `_vim.sh` -> `command vim`
