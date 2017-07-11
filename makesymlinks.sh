#!/bin/bash
##################
# .make.sh
# This script creates symlinks from the home directory to any dotfile
##################

####### Variables

dir=~/dotfiles 		#dotfiles directory
olddir=~/dotfiles_old 	#old dotfiles backup directory
files="vimrc vim bashrc short.pwd.py"

#######

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfile directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
