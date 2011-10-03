" include .vimrc
source ~/.vimrc

" Change colorscheme
colorscheme slate

" change cul color
hi CursorLine guibg=#000000

" GUI Option to remove the Toolbar (T)
set guioptions-=T

" Sets height to be higher then max window with, will auto adjust
set lines=100
set columns=200

set gfn=Monaco:h13

" Set no wrap
set nowrap

au VimEnter * NERDTreeToggle 
