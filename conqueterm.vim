let g:ConqueTerm_ExecFileKey = '<C-F11>'
let g:ConqueTerm_SendFileKey = '<C-F10>'
let g:ConqueTerm_SendVisKey = '<C-F11>'

function! ConqueToggle()
  if exists("g:ct_is_on")
    " turn it off
    exec "bwipeout CONQUESHELL"
    unlet g:ct_is_on
  else
    " turn it on 
    let g:ct_is_on = 1
    exec "ConqueTermSplit bash -c 'cd " . expand("%:p:h") . "; bash -l'"
    exec "f CONQUESHELL"
    resize 15
  endif
endfunction

function! CD_FileDir()
        echo "<CR> cd " . $:p:h
endfunction

map <leader>ss :call ConqueToggle()<CR>
map <C-T> :call ConqueToggle()<CR>

