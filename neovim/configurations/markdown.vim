"-----------------------------------------
" > Markdown
"-----------------------------------------

augroup markdown
    autocmd FileType markdown nnoremap <Leader>mp :MarkdownPreview<CR>
    autocmd FileType markdowm nnoremap <Leader>ms :MarkdownPreviewStop<CR>
    autocmd FileType markdowm nnoremap <Leader>mt :MarkdownPreviewToggle<CR>
augroup END

" default: ''
let g:mkdp_browser = 'brave-browser'
