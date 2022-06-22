call neomake#configure#automake('nrwi', 500)

let g:neomake_yamllint_exe = {
        \ 'args': ['-f', 'parsable', '-d', '{rules: {line-length: {max: 500}}}'],
        \ 'errorformat': '%E%f:%l:%c: [error] %m,%W%f:%l:%c: [warning] %m',
        \ }
