#!/bin/bash

set -ue

links=( $( ls -a -d1 .*vim* ) )

spf_thirteen=".spf13-vim-3"

git clone http://github.com/jmervine/spf13-vim.git $spf_thirteen
git clone https://github.com/gmarik/vundle.git $spf_thirteen/.vim/bundle/vundle

for l in "${links[@]}"
do
  link=$( basename ${l} )
  dest=~/$link
  test -L $dest && rm -v $dest
  test -f $dest && mv -v $dest "$dest".bak
  ln -v -s $( pwd )/$link $dest
done

# remove and recreate symlinks
cd ./$spf_thirteen
bash ./link
cd -

cp -v mappings.vim ~/.vim/mappings.vim
