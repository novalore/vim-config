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
map <leader>rr V
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
map <leader>bD :bdelete! <CR>
nm <C-D> :bd <CR>
nm <C-O> :only <CR>

" Paste mapping
map <leader>p :se invpaste paste?<CR>

" Conque ZSH
nmap <silent> <Leader>tt :ConqueTerm zsh<CR>
nmap <silent> <Leader>ts :ConqueTermSplit zsh<CR>
nmap <silent> <Leader>tv :ConqueTermVSplit zsh<CR>


" Ruby Conque
nmap <silent> <Leader>rr :call RunRubyCurrentFileConque()<CR>
nmap <silent> <Leader>rs :call RunRspecCurrentFileConque()<CR>
nmap <silent> <Leader>rsl :call RunRspecCurrentLineConque()<CR>
nmap <silent> <Leader>brs :ConqueTermVSplit bundle exec rspec<CR>
"nmap <silent> <Leader>brs :ConqueTermVSplit bundle exec spec bufname("%")<CR>
nmap <silent> <Leader>fs :call RelatedSpecVOpen()<CR>
"nmap <silent> <Leader> :call RelatedSpecOpen()<CR>
"
" nmap <silent> <Leader>rccc :call RunCucumberCurrentFileConque()<CR>
" nmap <silent> <Leader>rccl :call RunCucumberCurrentLineConque()<CR>
" nmap <silent> <Leader>rcRR :call RunRakeConque()<CR>
" nmap <silent> <Leader>rcrl :call RunLastConqueCommand()<CR>
"
 nnoremap <silent> <C-s> :call RelatedSpecVOpen()<CR>
" nnoremap <silent> ,<C-s> :call RelatedSpecOpen()<CR>


" Nerdtree mappings
map <leader>nr :NERDTreeToggle<CR>
nm <C-N> :NERDTreeToggle<CR>
nm <C-E> :BufExplorer<CR>

" Window mappings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Fugitive overides
nnoremap <silent> <leader>gc :Gcommit -a<CR>
nnoremap <silent> <leader>gu :Git push<CR>
nnoremap <silent> <leader>gp :Git pull<CR>

" Create bookmark
map <leader>bm :Bookmark<CR>
