#!/bin/sh

source $env/apply_env.sh.d/apply_common.sh.d/git_data.sh

git config --global user.name $git_user_id
git config --global user.email $git_user_email
git config --global core.excludesFile $rc_files/.gitignore
git config --global alias.pull "git pull --rebase"
