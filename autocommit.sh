#!/bin/bash
# path="~/Documents/Obsidian_Vault/obsidian-de-learning" # Replace this with the path to your git repository. To get path, run pwd in the directory or right click and select properties of the folder
path="~/git/obsidian-de-learning" 

git pull                              &> /dev/null
today_date=$(date +%y%m%d)            &> /dev/null
today_time=$(date +%Z%H%M%S)        &> /dev/null
now=$(date)
new_branch="mac-ac_${today_date}_${today_time}" &> /dev/null
git checkout -b $new_branch
git add --all                         &> /dev/null

git commit -m "Auto-Commit at : ${now}" &> /dev/null	
git push --set-upstream origin `git branch --show-current`  &> /dev/null

git checkout main
git merge --squash $new_branch
git commit -m "LCAC-${now}"
git push --set-upstream origin `git branch --show-current` 
git push origin --delete "${new_branch}"