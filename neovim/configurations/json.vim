"-----------------------------------------
" > JSON
"-----------------------------------------
function! FormatJSON() abort
  silent ! clear
  silent %!  python2 -m json.tool
endfunction

command! FormatJSON :call FormatJSON()

"autocmd BufWritePre *.json call FormatJSON()
"autocmd FileType json nnoremap <buffer> <Leader>f :FormatJSON<CR>

