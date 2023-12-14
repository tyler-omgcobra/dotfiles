#!/bin/bash

dir=~/dotfiles                    # dotfiles directory
dirs=".config/i3 bin"
files=".gitignore_global .gitconfig .githelpers .git-completion.bash .git-prompt.sh .bashrc .bash_aliases .inputrc .vimrc .config/i3/config bin/deleteOldFiles bin/deleteoldsnaps bin/lock_screen bin/monitor-config bin/renew-certbot bin/ripCD bin/toggleTouchpad bin/work"    # list of files/folders to symlink in homedir

echo "Changing to the $dir directory"
cd $dir
echo "...done"

echo "Making necessary directories"
for file in $dirs; do
  echo "  Making $file"
  mkdir -p ~/$file
done

for file in $files; do
	echo "Killing $file"
	rm -rf ~/$file
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/$file
done
