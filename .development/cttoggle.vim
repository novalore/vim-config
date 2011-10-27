" plugin/cttoggle.vim
" Author:       Joshua Mervine <joshuaNOSPAM@mervine.net>
"
" This requires ConqueTerm [http://code.google.com/p/conque/]
"
" ** INSTALL **
" To install, put this file in:
"  ~/.vim/plugin/
"
" Known issues as of 20111026
" * Calling ToggleWindow without an existing buffer dose not open a window,
" but loads ConqueTerm in the current buffer like ToggleBuffer.
" * I'm not 100% sure I've resolved all issues with leaving hidden dead
" buffers which may magically come up when calling ToggleWindow
"
if !exists('g:ConqueTerm_Shell')
        let g:ConqueTerm_Shell = "bash --login"
endif
let g:ConqueTerm_BufName = "ConqueTermBuffer"

function! ConqueTermToggle_EnsureState()
       if exists('g:ConqueTerm_IsOn')
               if bufnr(g:ConqueTerm_BufName) == -1 && bufnr('bash*') == -1
                       unlet g:ConqueTerm_IsOn
               endif
       else
               if bufnr(g:ConqueTerm_BufName) != -1 && bufnr('bash*') != -1
                       let g:ConqueTerm_IsOn = 1
               endif
       endif
endfunction

" ToggleBuffer
" Should:
"   Switch to buffer if buffer exists.
"   Open buffer if doesn't exists.
function! ConqueTermToggle_ToggleBuffer()
        call ConqueTermToggle_EnsureState()
        set switchbuf=useopen
        if exists('g:ConqueTerm_IsOn')
                exec "drop " . g:ConqueTerm_BufName
        else
                exec "ConqueTerm " . g:ConqueTerm_Shell
                exec "f " . g:ConqueTerm_BufName
        endif
        call ConqueTermToggle_EnsureState()
        set switchbuf=
endfunction

" ToggleWindow
" Should:
"   Switch to window if exists.
"   Open window if doesn't exist.
"   Switch to buffer if buffer exists -- same as ToggleBuffer in this case.
" ToDo:
"   Make create window when buffer exists, but window doesn't.
function! ConqueTermToggle_ToggleWindow()
        call ConqueTermToggle_EnsureState()
        set switchbuf=useopen
        if !exists('g:ConqueTerm_IsOn')
                exec "ConqueTermSplit " . g:ConqueTerm_Shell
                exec "f " . g:ConqueTerm_BufName
        else
                exec "drop " . g:ConqueTerm_BufName
        endif
        wincmd J
        resize 15
        if exists('g:NERDTreeStatusline')
                exec "NERDTree"
                exec "drop " . g:ConqueTerm_BufName
        endif
        call ConqueTermToggle_EnsureState()
        set switchbuf=
endfunction

" FlushBuffer
" Should:
"   Totally destroy your ConqueTerm buffer and close the window if it's open.
function! ConqueTermToggle_FlushBuffer()
        call ConqueTermToggle_EnsureState()
        if exists('g:ConqueTerm_IsOn')
                exec "bwipeout ". g:ConqueTerm_BufName
                unlet g:ConqueTerm_IsOn
        endif
        call ConqueTermToggle_EnsureState()
endfunction

" ConqueTerm mappings
" NOTE: your scroll back will kill your system if you leave ConqueTerm open too
" long. 
map <leader>ss :call ConqueTermToggle_ToggleBuffer()<CR>
map <leader>ssw :call ConqueTermToggle_ToggleWindow()<CR>
map <leader>ssf :call ConqueTermToggle_FlushBuffer()<CR>

nm <C-T> :call ConqueTermToggle_ToggleWindow()<CR>

