"-----------------------------------------
" > Golang
"-----------------------------------------
" initialize golang
let g:go_fmt_command = "goimports"
let g:go_def_mode = "gopls"
let g:go_info_mode = "gopls"
let g:go_implements_mode = 'gopls'
let g:go_gopls_gofumpt = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_term_mode = "vsplit"
let g:go_term_enabled = 1
let g:go_doc_popup_window = 1
let g:go_fillstruct_mode = 'gopls'
let g:go_def_reuse_buffer = 1



" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Map keys for most used commands.
" `\b` for building, `\r` for running and `\b` for running test.
"autocmd FileType go nmap <Leader>i <Plug>(go-info)
"autocmd FileType go nmap <C-[> <Plug>(go-def-tab)
"autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
"autocmd FileType go nmap <leader>r  <Plug>(go-run)
"autocmd FileType go nmap <leader>t  <Plug>(go-test)

" mappings for vim-go
" autocmd FileType go nmap <Leader>i <Plug>(go-info)
augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

  autocmd FileType go nmap <leader>gf  <Plug>(go-test-func)
  autocmd FileType go nmap <leader>gr  <Plug>(go-run)
  autocmd FileType go nmap <Leader>gc <Plug>(go-doc)
  autocmd FileType go nmap <Leader>gi <Plug>(go-info)

  autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)
  autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)
  autocmd FileType go nmap <Leader>db <Plug>(go-def-tab)
  autocmd FileType go nmap <Leader>dc <Plug>(go-implements)

  autocmd FileType go nmap <Leader>gr <Plug>(go-rename)
  autocmd FileType go nnoremap <Leader>gs :GoFillStruct<CR>
  autocmd FileType go nnoremap <Leader>ge :GoIfErr<CR>
  autocmd FileType go nnoremap <Leader>gp :GoPlay<CR>



  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-remote=auto']},
        \ 'allowlist': ['go'],
        \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
endif

if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
        \ 'whitelist': ['go'],
        \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
endif
