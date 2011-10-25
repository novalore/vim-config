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
au VimEnter * NERDTreeToggle 

source ~/.vim/vundle.vim
source ~/.vim/conqueterm.vim
source ~/.vim/nerdtree.vim
source ~/.vim/mappings.vim
