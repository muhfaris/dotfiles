"-----------------------------------------
" > Vim Prettier
"-----------------------------------------
autocmd FileType css nnoremap <buffer> <Leader>f :Prettier<CR>
autocmd FileType graphql nnoremap <buffer> <Leader>f :Prettier<CR>
autocmd FileType javascript nmap <Leader>f <Plug>(Prettier)<CR>
