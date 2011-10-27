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

" tab 
set ts=2
set expandtab
set smarttab

"""""""""""""""""""""""""""""
" AUTOLOAD CONFIG
"""""""""""""""""""""""""""""
source ~/.vim/vundle.vim
source ~/.vim/conqueterm.vim
source ~/.vim/nerdtree.vim
source ~/.vim/mappings.vim

" clean up nerdtree when sourcing
" and load always
if exists('g:NERDTreeStatusline')
	let s:curwin = winnr() 		
	exec "NERDTree"			
	exec s:curwin . "wincmd w"	
	unlet s:curwin	
else
	au VimEnter * NERDTree
endif

