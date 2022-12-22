" Autocomplete Golang use omnifunc (let:g:go_code_completion_enabled = 1)
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_code_completion_icase = 1

" Get info type under cursor
let g:go_info_mode = 'gopls'
let g:go_auto_type_info = 1

" Format Code
" Available type gofmt, goimports, gopls
let g:go_fmt_command = 'gopls'

" Go import mode, the valid options is goimports and gopls. The buffer will not be formatted when
" this is set to gopls
let g:go_imports_mode = 'goimports'

" Default godoc use shift + k, and setup to popup
let g:go_doc_popup_window = 1

" Go def default mapping to CTRL-] (gd) is GoDef and CTRL-t for :GODefPop

" GoAlternate
 augroup go
      autocmd!
      autocmd Filetype go
        \ command! -bang A call go#alternate#Switch(<bang>0, 'edit')
        \ command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
        \ command! -bang AS call go#alternate#Switch(<bang>0, 'split')

       " Neex extra config because conflict with indentLine plugin
       " check character list with :h listchar
        autocmd FileType go set list lcs=tab:>-
        autocmd FileType go hi SpecialKey ctermfg=gray

        au Filetype go inoremap <buffer> . .<C-x><C-o>
        " Go Definition
        au FileType go nmap <Leader>dfs <Plug>(go-def-split)
        au FileType go nmap <Leader>dfv <Plug>(go-def-vertical)
        au FileType go nmap <Leader>dft <Plug>(go-def-tab)

        " Go Implement
        au FileType go nmap <Leader>gi <Plug>(go-implements)

        "Go Doc
        au FileType go nmap <Leader>gds <Plug>(go-doc-split)
        au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
        au FileType go nmap <Leader>gdt <Plug>(go-doc-tab)

        "Auto error
        au Filetype go nmap <Leader>er <Plug>(go-iferr)

        "Gorename
        au FileType go nmap <Leader>gr <Plug>(go-rename)

        "Referer
        au FileType go nmap <Leader>rf <Plug>(go-referrers)

    augroup END
