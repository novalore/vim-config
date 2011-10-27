"""""""""""""""""""""""""""""
" MAPPINGS
"""""""""""""""""""""""""""""

" vimrc
" source 
map <leader>so :so ~/.vimrc<CR>
map <leader>sog :so ~/.gvimrc<CR>
" edit
map <leader>en :e! ~/.vimrc<CR>
map <leader>eng :e! ~/.gvimrc<CR>
" mouse mode
"nm <C-m> :set mouse=a <CR>
"nm <C-m-m> :set mouse=a <CR>
" unmap help
nm <F1> <nop>

" Tab Mappings
"map <leader>tt :tabnew\|:NERDTreeMirror<CR>
"map <leader>te :tabedit\|:NERDTreeMirror<CR>
"map <leader>tc :tabclose<CR>
"map <leader>to :tabonly<CR>
"map <leader>tn :tabnext<CR>
"map <leader>tp :tabprevious<CR>
"map <leader>tf :tabfirst<CR>
"map <leader>tl :tablast<CR>
"map <leader>tm :tablast<CR>

" Buffer Mapping
map <leader>bh :sbuffer<CR>
map <leader>bn :bnext<CR>
map <leader>bns :sbnext<CR>
map <leader>bp :bprevious<CR>
map <leader>bps :sbprevious<CR>
map <leader>bp :bprevious<CR>
map <leader>bf :bfirst<CR>
map <leader>bfs :sbfirst<CR>
map <leader>bl :blast<CR>
map <leader>bls :sblast<CR>
map <leader>bd :bd <CR>
nm <C-B> :bnext <CR>
nm <C-D> :bd <CR>
nm <C-O> :only <CR>

" Paste mapping
nm <C-P> :se invpaste paste?<CR>

" Ruby File Type Mapping
"nm <C-r> :set filetype=ruby<CR>

" Nerdtree mappings
map <leader>nr :NERDTree<CR>
nm <C-N> :NERDTree<CR>
nm <C-E> :BufExplorer<CR>
nm <C-S> :ConqueTerm bash<CR>

" Window mappings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Window resize mappings
map <leader>rs :res 10<CR>
map <leader>rb :res 25<CR>
map <leader>rf :res 100<CR>

" Crazy ConqueTerm mappings
" moved to conqueterm.vim
