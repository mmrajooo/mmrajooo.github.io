#!/bin/bash -xv

# This script allows you to easily and quickly generate and deploy your website
# using Hugo to your personal GitHub Pages repository. This script requires a
# certain configuration, run the `setup.sh` script to configure this. See
# https://hjdskes.github.io/blog/update-deploying-hugo-on-personal-github-pages/
# for more information.

# Set the English locale for the `date` command.
export LC_TIME=en_US.UTF-8

# The commit message.
MESSAGE="Site rebuild $(date) / deploy.sh"

msg() {
    printf "\033[1;32m :: %s\n\033[0m" "$1"
}

function is_in_local() {
    local branch=${1}
    local existed_in_local=$(git branch --list ${branch})

    if [[ -z ${existed_in_local} ]]; then
        echo 0
    else
        echo 1
    fi
}

if [[ $(git status -s) ]]; then
    msg "The working directory is dirty, please commit or stash any pending changes"
    exit 1;
fi

if [ -d public ] ; then
   msg "Removing the old website" 
   pushd public 
   git rm -rf * 
   popd
else
    if  is_in_local master  ; then 
       msg "Adding the master branch into the \`public\` folder" 
       git worktree add -B master public origin/master
    fi 
fi 

msg "Building the website"
hugo -v server

