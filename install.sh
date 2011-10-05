#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

# test to see if I need to checkout code
if [[ $DIR =~ "vim-config" ]]; then
	echo "Looks like I have what I need to set up you, starting."
else
	echo "Looks like I need to checkout what you need, starting."
	if ! git clone git://github.com/jmervine/vim-config.git; then
		echo " --> git clone failed, exiting."
		exit 1
	fi
	if [ ! -d ./vim-config ]; then
		echo " --> Something's wrong, couldn't find git checkout, exiting."
		exit 1
	fi
	DIR="$DIR/vim-config"
	cd $DIR
fi

# setup vimrc
if [ -e $HOME/.vimrc ]; then
	if [ -h $HOME/.vimrc ]; then 
		echo " --> $HOME/.vimrc exists and is a symlink, deleting."
		rm $HOME/.vimrc
	else
		echo " --> $HOME/.vimrc exists and is not a symlink, creating a backup."
		mv $HOME/.vimrc $HOME/.vimrc.old
	fi
fi

echo "Creating $HOME/.vimrc -> $DIR/vimrc symlink."
ln -s $DIR/vimrc $HOME/.vimrc

# setup gvimrc
if [ -e $HOME/.gvimrc ]; then
	if [ -h $HOME/.gvimrc ]; then 
		echo " --> $HOME/.gvimrc exists and is a symlink, deleting."
		rm $HOME/.gvimrc
	else
		echo " --> $HOME/.gvimrc exists and is not a symlink, creating a backup."
		mv $HOME/.gvimrc $HOME/.gvimrc.old
	fi
fi

echo "Creating $HOME/.gvimrc -> $DIR/gvimrc symlink."
ln -s $DIR/gvimrc $HOME/.gvimrc

# setup .vim directory
if [ -d $HOME/.vim ]; then
	if [ -h $HOME/.vim ]; then 
		echo " --> $HOME/.vim exists and is a symlink, deleting."
		rm $HOME/.vim
	else
		echo " --> $HOME/.vim exists and is not a symlink, creating a backup."
		mv $HOME/.vim $HOME/.vim.old
	fi
fi

echo "Creating $HOME/.vim -> $DIR symlink."
ln -s $DIR $HOME/.vim


