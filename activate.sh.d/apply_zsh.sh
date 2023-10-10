autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{246}(%F{34}%r%F{246}/%F{34}%b%F{246}) '
zstyle ':vcs_info:*' enable git

# Set up the prompt (with git branch name)
# PROMPT='%F{240}%T %F{208}%~ $vcs_info_msg_0_%F{111}%#%f '
# PROMPT='%F{240}%T %F{208}%~ $vcs_info_msg_0_%F{240}$LINES,$COLUMNS %F{111}%#%f '
PROMPT='%F{240}%T %F{208}%~ $vcs_info_msg_0_%F{111}%#%f '
