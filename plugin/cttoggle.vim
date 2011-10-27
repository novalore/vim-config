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

" Create ConqueTerm Buffer with globals for switching.
function! ConqueTermToggle_WindowHelper()
    wincmd J
    resize 15
    " Handle NERDTree
    if exists('g:NERDTreeStatusline')
      exec "NERDTree"
      exec bufnr("bash --login") . "wincmd w"
    endif
endfunction

function! ConqueTermToggle_ToggleBuffer()
  set switchbuf=useopen
  " Ensure not in NERDTree buffer
  if bufname("") == has("NERD_tree")
    wincmd l
  endif
  let bnum = bufnr("bash --login*")
  if bnum != -1
    if bufnr('%') == bnum
      if bufnr(g:ConqueTerm_LastBuffer) == -1
        if exists('g:BufExplorer_title') == 1
          BufExplorer
        else
          buffers
        endif
      else
        exec "sb " . bufnr(g:ConqueTerm_LastBuffer) 
      endif
    else
      exec "sb " . bnum
    endif
  else
    let g:ConqueTerm_LastBuffer = bufnr('%')
    exec "ConqueTerm bash --login"
  endif
  set switchbuf=
endfunction

" First run opens.
" Run while in ConqueTerm window closes.
" Run while in another window selects.
function! ConqueTermToggle_ToggleWindow()
  "call s:hasConqueTerm()
  set switchbuf=useopen
  let bnum = bufnr("bash --login*")
  if bufnr('%') == bnum
    call ConqueTermToggle_FlushBuffer()
  else
    if bnum != -1
      exec bnum."sb" 
      call ConqueTermToggle_WindowHelper()
    else
      sb
      call ConqueTermToggle_ToggleBuffer()
      call ConqueTermToggle_WindowHelper()
    endif
  endif
  set switchbuf=
endfunction

function! ConqueTermToggle_FlushBuffer()
  let bnum = bufnr("bash --login*")
  if bnum != -1
    bwipe 
  endif
endfunction

" ConqueTerm mappings
" NOTE: your scroll back will kill your ram if you leave ConqueTerm open too
" long. 
map <leader>ss :call ConqueTermToggle_ToggleBuffer()<CR>
map <leader>ssw :call ConqueTermToggle_ToggleWindow()<CR>
map <leader>ssf :call ConqueTermToggle_FlushBuffer()<CR>

nm <C-T> :call ConqueTermToggle_ToggleWindow()<CR>

