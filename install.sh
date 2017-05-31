#!/bin/bash
#####################
# .make.sh
# This scrip creates symlinks from the home directory to any desired dotfile in ~/dotfiles
#####################

###### Variables

dir=~/dotfiles
olddir=~/dotfile_old
files="bash_profile gitconfig ssh viminfo zshrc"

# Create dotfiles in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# Change the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dot_old directory, then create symlink from homedir to any file in the ~/dotfiles directoty
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done
