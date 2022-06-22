" Linting YAML
" setlocal makeprg=yamllint\ --f\ parsable\ %
" setlocal errorformat=%f:%l:\ %m

augroup filetype_yaml
    autocmd!

    " Automatic execution on :write
    autocmd BufWritePost *.yaml silent make! <afile> | silent redraw!
    " Automatic opening of the quickfix window
    autocmd QuickFixCmdPost [^l]* vertical cwindow|vert resize +40

    "autocmd BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
    autocmd FileType yaml |
        setlocal shiftwidth=2 |
        setlocal softtabstop=2 |
        setlocal tabstop=2
augroup END

