""autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
augroup go
      autocmd!
      autocmd Filetype go
        \  command! -bang A call go#alternate#Switch(<bang>0, 'edit')
        \| command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
        \| command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

let g:go_play_browser_command = 'brave-browser %URL% &'

" set type info
let g:go_updatetime = 800
let g:go_auto_type_info = 1

"Use this option to define which tool is used to format code. Valid options are `gofmt`, `goimports`, and `gopls`. By default `gopls` is used."
let g:go_fmt_command = 'gopls'
let g:go_imports_mode = 'goimports'

"Use this option to use the popup-window for |K| and |:GoDoc|"
let g:go_doc_popup_window = 0
