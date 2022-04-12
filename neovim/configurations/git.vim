"-----------------------------------------
" > Git
"-----------------------------------------
autocmd BufWritePost * GitGutter

let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_use_location_list = 1
"let g:gitgutter_git_executable ='C:\Program Files\Git\bin\git.exe'
"
map <leader>gf :Gvdiffsplit<cr>

"-----------------------------------------
" > Git Blame
"-----------------------------------------
" https://github.com/f-person/git-blame.nvim
let g:gitblame_message_template = '<summary> • <date> • <author>'
