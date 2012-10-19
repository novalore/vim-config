" include .vimrc
source ~/.vimrc
set shell=bash

" GUI Option to remove the Toolbar (T)
set guioptions-=T
if has("gui_gtk2")
    set guifont=Andale\ Mono\ Regular\ 11,Menlo\ Regular\ 10,Consolas\ Regular\ 11,Courier\ New\ Regular\ 13
else
    set guifont=Andale\ Mono\ Regular:h11,Menlo\ Regular:h10,Consolas\ Regular:h11,Courier\ New\ Regular:h13
endif
if has('gui_macvim')
    set transparency=5          " Make the window slightly transparent
endif

" Sets height to be higher then max window with, will auto adjust
set lines=100
set columns=200

" Set no wrap
set nowrap

" change cul color
hi CursorLine guibg=#000000

" enable mouse
set mouse=a

