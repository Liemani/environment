### prologue

I recommand using this program on new environment not old. And `backup` aux command's uniformed commit message makes hard differentiating your commits. So I recommand to use this program for backup purpose of repository which is don't need to record the change log or version.

## Environment manage program

### How to use

0. `git clone https://github.com/Liemani/env.git` any where
1. If you control private git repository, set ssh key for your new environment to your git account (or not, you may enter id and password at private gitting time)
2. Edit `env/gitdata.sh`, `env/uservar.sh`
3. Execute 'setenv.sh' script in env `source env/setenv.sh`
    - All in gitlist will be cloned to `~/programming/git/`
    - Liemani's `.zshrc`, `.vimrc` and prompt setting will be applied

### usage of aux

```zsh
usage: aux <aux_command> <arguments>

aux_commands:
    ls		List all aux commands
    vim		Vim aux command
```

### Feature

- Target shell: zsh
- Liemani's .zshrc
- Liemani's .vimrc
- Liemani's 'aux' program
- Liemani's prompt
- You can save vim session to `<repogitory>/.vimsession/<repository_name>` by pressing `<F3>` in vim
  - You have to `mkdir .vimsession` before this to work
  - And you can load that session easily by `aux vimsession <repository_name>`
    - Test `aux vimsession env` which I saved! :D

### Deep feature

- all `vim` command call `aux _vim`, and `_vim` call `command vim`
  - `vim (aliased)` -> `_vim.sh` -> `command vim`
