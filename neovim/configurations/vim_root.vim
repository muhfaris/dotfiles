let g:rooter_patterns = ['.git', '.svn', 'package.json', '!node_modules', 'go.mod']
nnoremap <expr> sp ':Telescope find_files cwd='.FindRootDirectory().'/<cr>'
