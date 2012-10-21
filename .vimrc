" vundle command support
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" source bundle list
source ~/.vimrc.bundles

"
" BEGIN SPF13
"
filetype plugin indent on   " Automatically detect file types.
syntax on                   " syntax highlighting

set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=onemore         " allow for cursor beyond last character
set history=1000                " Store a ton of history (default is 20)
set spell                       " spell checking on
set hidden                      " allow buffer switching without saving

set tabpagemax=15               " only show 15 tabs
set showmode                    " display the current mode

set cursorline                  " highlight current line

set backspace=indent,eol,start  " backspace for dummies
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

set nowrap                      " wrap long lines
set autoindent                  " indent at the same level of the previous line
set shiftwidth=4                " use indents of 4 spaces
set expandtab                   " tabs are spaces, not tabs
set tabstop=4                   " an indentation every four columns
set softtabstop=4               " let backspace delete indent
"set matchpairs+=<:>                " match, to be used with %
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
" Remove trailing whitespaces and ^M chars
autocmd FileType ruby,c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

vnoremap < <gv
vnoremap > >gv

cmap w!! w !sudo tee % >/dev/null

let g:NERDShutUp=1

map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

"
" END SPF13
"

highlight ExtraWhitespace ctermbg=red guibg=red

match ExtraWhitespace /\s\+\%#\@<!$/

" disable autofolding
set nofoldenable

" Plugins
" set author
let g:snips_author = 'Joshua Mervine <joshua@mervine.net>'

" nerdtree
" let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=0

" toggle spell checking
imap <Leader>s <C-o>:setlocal spell! spelllang=en_gb<CR>
nmap <Leader>s :setlocal spell! spelllang=en_gb<CR>

" turn off spell checking by default
set nospell

" turn off backups
set nobackup


augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType * set ai sw=2 sts=2 et
  " autoindent with four spaces, always expand tabs
  autocmd FileType python,html,xml,markdown set ai sw=4 sts=4 et
augroup END

" strip unwanted trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

source ~/.vim/mappings.vim
source ~/.vim/functions.vim
