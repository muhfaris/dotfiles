let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir=expand( '$HOME/.config/nvim/vimspector' )

" Set the basic sizes
let g:vimspector_sidebar_width = 80
let g:vimspector_code_minwidth = 85
let g:vimspector_terminal_minwidth = 75

nnoremap <Leader>bl :call vimspector#Launch()<CR>
nnoremap <Leader>br :call vimspector#Reset()<CR>
nnoremap <Leader>bc :call vimspector#Continue()<CR>
nnoremap <Leader>bb :call vimspector#ToggleBreakpoint()<CR>

