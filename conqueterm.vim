"""""""""""""""""""""""""""""
" CONQUE_TERM CONFIG
"""""""""""""""""""""""""""""
let g:ConqueTerm_ExecFileKey = '<C-F11>'
let g:ConqueTerm_SendFileKey = '<C-F10>'
let g:ConqueTerm_SendVisKey = '<C-F11>'

function! CTToggle()
	if exists('g:ct_winnr')
                if g:ct_winnr == winnr()
                      exec g:ct_winnr . "wincmd w"
                      unlet g:ct_winnr
                      bd
                else
                      exec g:ct_winnr . "wincmd w"
			resize 10
                endif
	else
		split
		wincmd J
		resize 10
		let g:ct_winnr = winnr()
		exec "ConqueTerm bash --login"
                exec "NERDTree"
                exec g:ct_winnr . "wincmd w"
	endif
endfunction

" Crazy ConqueTerm mappings
" NOTE: you can only use '--login' if you're not using coloring or you've
" updated your .profile to display without color when "$CONQUE" != "".
" 
" NOTE: your scroll back will kill your ram if you leave ConqueTerm open too
" long. I've mapped <C-D> and <leader>bd to delete buffers, which closes the
" window and file. This will clear slowness with your ConqueTerm.
map <leader>sh :call CTToggle()<CR>
nm <C-T> :call CTToggle()<CR>
