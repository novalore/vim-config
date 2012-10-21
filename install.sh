#!/bin/bash

set -ue

links=( $( ls -a -d1 .*vim* ) )

mkdir -p .vim/bundle
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle

for l in "${links[@]}"
do
  link=$( basename ${l} )
  dest=~/$link
  test -L $dest && rm -v $dest
  test -f $dest && mv -v $dest "$dest".bak
  ln -v -s $( pwd )/$link $dest
done

# remove and recreate symlinks
ln -v -s $( pwd )/mappings.vim ~/.vim/mappings.vim
ln -v -s $( pwd )/functions.vim ~/.vim/functions.vim
