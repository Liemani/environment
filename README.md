# README.md is under construction

### prologue

I recommand using this program on new environment not old. And `backup` aux command's uniformed commit message makes hard differentiating your commits. So I recommand to use this program for backup purpose of repository which is don't need to record the change log or version.



## Environment Managent Program

### How to use

1. clone this repository and run setup.sh

```
cd $HOME
git clone https://github.com/Liemani/environment.git
```

2. edit data directory for you

- $HOME/environment/data/

3. run setup script

```
./environment/setup.sh
```

4. source shell rc file

```
source $HOME/.bashrc
```

### Usage of `a`

```
a <a_command> [<arguments>]
```

command `a` run `a_command` in $env/bin

### Features

- Target : macOS::zsh, ::bash, Alpine Linux::ash
- Liemani's `.shrc`
- Liemani's `.vimrc`
- Liemani's `.gitignore`
- Liemani's prompt
- Liemani's `a` command

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
  - Adopt
    - `backcheck`
    - `backup`
  - Create
    - `mv`
  - Check
    - `vim` to create to script/sh/ correctly and create link file to bin/



## not working

- You can save vim session to `<repository>/.vimsession/<session name you want>` by pressing `<F3>` in vim
  - You have to `mkdir <repository>/.vimsession` before this to work
  - And you can load that session easily by `a vimsession <vim session name>`
    - Test `a vimsession env` which I saved! :D
