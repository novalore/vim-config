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
nm <C-D> :bd <CR>

" Paste mapping
nm <C-P> :se invpaste paste?<CR>

" Ruby File Type Mapping
nm <C-r> :set filetype=ruby<CR>

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
" NOTE: you can only use '--login' if you're not using coloring or you've
" updated your .profile to display without color when "$CONQUE" != "".
" 
" NOTE: your scroll back will kill your ram if you leave ConqueTerm open too
" long. I've mapped <C-D> and <leader>bd to delete buffers, which closes the
" window and file. This will clear slowness with your ConqueTerm.
map <leader>sr :split <BAR> :wincmd J <BAR> :resize 10 <BAR> :ConqueTerm bash --login <CR> pwd <CR> irb <CR> 
map <leader>sh :split <BAR> :wincmd J <BAR> :resize 10 <BAR> :ConqueTerm bash --login <CR> pwd <CR>
map <leader>ss :ConqueTerm bash --login <CR> pwd <CR>
map <leader>ssr :ConqueTerm bash --login <CR> pwd <CR> irb <CR>

