#!/bin/bash
# vim: ft=sh

if [ -e ~/.vimrc ] && [ ! -L ~/.vimrc ]; then
	echo "Backing up current ~/.vimrc to ~/vimrc.bak"
	mv ~/.vimrc ~/vimrc.bak
else
	echo "Skipping ~/.vimrc symbolic list, already present."
fi

if [ -e ~/.vim ] && [ ! -L ~/.vim ]; then
	echo "Backing up current ~/.vimrc to ~/vimrc.bak"
	mv ~/.vim ~/vim.bak
else
	echo "Skipping ~/.vim symbolic list, already present."
fi

if [ -e ~/vim-config ] && [ ! -e ~/.vim ]; then
	ln -sv ~/vim-config ~/.vim
fi
if [ -e ~/vim-config ] && [ ! -e ~/.vimrc ]; then
	ln -sv ~/.vim/vimrc ~/.vimrc
fi

echo "Run: vim -c ':BundleInstall' to ensure that all bundles are installed correct.\nThis should create a list of error messages if all is correct."

