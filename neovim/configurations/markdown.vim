"-----------------------------------------
" > Markdown
"-----------------------------------------

autocmd FileType markdown nmap <C-s> <Plug>MarkdownPreview
autocmd FileType markdowm nmap <M-s> <Plug>MarkdownPreviewStop
autocmd FileType markdowm nmap <C-p> <Plug>MarkdownPreviewToggle

" default: ''
let g:mkdp_browser = 'brave'
