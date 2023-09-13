# README.md is under construction

### prologue

I recommand using this program on new environment not old. And `backup` aux command's uniformed commit message makes hard differentiating your commits. So I recommand to use this program for backup purpose of repository which is don't need to record the change log or version.



## Environment Managent Program

### How to use

0. `git clone https://github.com/Liemani/env.git` any where
1. `./set_env.sh`: set environment
2. `source apply_env.sh`: apply aliases and variables etc to current shell

1. If you control private git repository, set ssh key for your new environment to your git account (or not, you may enter id and password at private gitting time)
2. Edit `env/gitdata.sh`, `env/uservar.sh`
3. Execute 'setenv.sh' script in env `source env/setenv.sh`
    - All in gitlist will be cloned to `~/programming/git/`
    - Liemani's `.zshrc`, `.vimrc` and prompt setting will be applied

### Usage of a

`a <a_command> [<arguments>]`
command `a` run `a_command` in $env/bin

### Features

- Target: macOS::zsh, Alpine Linux::ash
- Liemani's `.shrc`
- Liemani's `.vimrc`
- Liemani's `.gitignore`
- Liemani's prompt(only for zsh)
- Liemani's `a` command
- You can save vim session to `<repository>/.vimsession/<session name you want>` by pressing `<F3>` in vim
  - You have to `mkdir <repository>/.vimsession` before this to work
  - And you can load that session easily by `a vimsession <vim session name>`
    - Test `a vimsession env` which I saved! :D

### Deep Features

#### vim

- all `vim` command call `a _vim`, and `_vim` call `command vim`
  - `vim (aliased)` -> `_vim.sh` -> `command vim`

#### Directory Structure

`bin/`: Executable files. Used as `a_command`
`copy_source/`: Files are copied when execute `set_env.sh`
`data/`: Files are sourced when `source apply_env.sh` or whenever need
`script/`: Script files

## todo

- `a_command`
  - Create
    - `mv`
  - Check
    - `vim` to create to script/sh/ correctly and create link file to bin/
