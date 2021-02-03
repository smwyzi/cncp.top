#!/bin/sh

# If a command fails then the deploy stops
set -e


msg="publish site"
if [ -n "$*" ]; then
	msg="$*"
fi


printf "\033[0;32mBuild site...\033[0m\n"
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`


printf "\033[0;32mDeploy site to GitHub Pages...\033[0m\n"
cd public
git add .
git commit -m "$msg"
git push origin master


printf "\033[0;32mSync site to GitHub...\033[0m\n"
cd ..
git add . 
git commit -m "$msg"
git push origin master
