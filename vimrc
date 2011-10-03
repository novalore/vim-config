set nocompatible          " We're running Vim, not Vi!
"filetype off              " required!
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

" Tab Mappings
map <leader>tt :tabnew\|:NERDTreeMirror<cr>
map <leader>te :tabedit\|:NERDTreeMirror<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tablast<cr>

" Buffer Mapping
map <leader>bh :sbuffer<cr>
map <leader>bn :bnext<cr>
map <leader>bns :sbnext<cr>
map <leader>bp :bprevious<cr>
map <leader>bps :sbprevious<cr>
map <leader>bp :bprevious<cr>
map <leader>bf :bfirst<cr>
map <leader>bfs :sbfirst<cr>
map <leader>bl :blast<cr>
map <leader>bls :sblast<cr>

" Paste mapping
nm <C-P> :se invpaste paste?<CR>

" Vundle configuration

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'scrooloose/vim-space'
 Bundle 'tpope/vim-endwise'
 Bundle 'tpope/vim-fugitive'
 Bundle 'tpope/git'
 Bundle 'tpope/vim-haml'

 Bundle 'tpope/vim-rails'

 Bundle 'markabe/bufexplorer'
 
 " My Bundles here:
 " original repos on github
 "Bundle 'tpope/vim-fugitive'
 "Bundle 'lokaltog/vim-easymotion'
 "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 " vim-scripts repos
 "Bundle 'L9'
 "Bundle 'FuzzyFinder'
 "Bundle 'rails.vim'
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git'

 filetype plugin indent on     " required! 
 "
 " Brief help
 "
 " :BundleInstall  - install bundles (won't update installed)
 " :BundleInstall! - update if installed
 "
 " :Bundles foo    - search for foo
 " :Bundles! foo   - refresh cached list and search for foo
 "
 " :BundleClean    - confirm removal of unused bundles
 " :BundleClean!   - remove without confirmation
 "
 " see :h vundle for more details
 " or wiki for FAQ
 " Note: comments after Bundle command are not allowed..

" Nerdtree
map <leader>nt :NERDTreeToggle<cr>
nm <C-N> :NERDTreeToggle<CR>
nm <C-T> :tabnew\|:NERDTreeMirror<cr>

nm <C-E> :BufExplorer<cr>

" Line highlighting
set cul

" always turn on NERDTree
" au VimEnter * NERDTreeToggle 
