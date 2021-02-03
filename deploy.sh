#!/bin/sh

# If a command fails then the deploy stops
set -e



# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`



printf "\033[0;32mDeploying updates to GitHub Pages...\033[0m\n"

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="publish site"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master



printf "\033[0;32mSync updates to GitHub...\033[0m\n"

cd ..
git add . 
git commit -m "$msg"
git push
