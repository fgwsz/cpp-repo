#!/bin/sh
root_path=$(dirname "$(readlink -f "$0")")
git_path="$root_path/.git"
read -p "Input Git Repo Name: " repo_name
echo "# $repo_name" >> README.md
if [ -d "$git_path" ]; then
    rm -rf "$git_path"
fi
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin "git@github.com:fgwsz/$repo_name.git"
git push -u origin main
