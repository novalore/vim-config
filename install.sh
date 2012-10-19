#!/bin/bash

set -ue

links=( $( ls -a -d1 .*vim* ) )

for l in "${links[@]}"
do
  link=$( basename ${l} )
  dest=~/$link
  test -L $dest && rm -v $dest
  test -f $dest && mv -v $dest "$dest".bak
  ln -v -s $( pwd )/$link $dest
done

# remove and recreate symlinks
cd ./.spf13-vim-3
bash ./link
cd -

