#!/bin/sh

source $env/git_data.sh

git config --global user.name $git_user_name
git config --global user.email $git_user_email
git config --global core.excludesFile $env/data/.gitignore
git config --global alias.pull "git pull --rebase"
