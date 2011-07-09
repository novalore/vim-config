" include .vimrc
source ~/.vimrc

" Change colorscheme
colorscheme slate

" GUI Option to remove the Toolbar (T)
set guioptions-=T

" Sets the percent transparency
set transparency=10

" Sets height to be higher then max window with, will auto adjust
set lines=100
set columns=200

set gfn=Monaco:h13

au VimEnter * NERDTreeToggle 
