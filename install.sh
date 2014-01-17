#!/bin/bash

set -ue

links=( $( ls -a -d1 .*vim* ) )

spf_thirteen=".spf13-vim-3"

test -e $spf_thirteen && rm -rf $spf_thirteen

git clone http://github.com/jmervine/spf13-vim.git $spf_thirteen
cd spf13-vim
git checkout 3.0
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

ln -v -s $( pwd )/mappings.vim ~/.vim/mappings.vim
ln -v -s $( pwd )/functions.vim ~/.vim/functions.vim
