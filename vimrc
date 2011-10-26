" VIM CONFIG
set nocompatible          " We're running Vim, not Vi!
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

set nu
set hls is

" Line highlighting
set cul

"""""""""""""""""""""""""""""
" AUTOLOAD CONFIG
"""""""""""""""""""""""""""""
source ~/.vim/vundle.vim
source ~/.vim/conqueterm.vim
source ~/.vim/nerdtree.vim
source ~/.vim/mappings.vim

"au VimEnter * NERDTree
" clean up nerdtree when sourcing
" and load always
let s:curwin = winnr() 		
" ^ save current window number
exec "NERDTree"			
" ^ load NERDTree
exec s:curwin . "wincmd w"	
" ^ return to previous window
unlet s:curwin	
" ^ unset var to be safe

