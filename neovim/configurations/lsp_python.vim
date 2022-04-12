if (executable('pyls'))
    au User lsp_setup call lsp#register_server({
	\ 'name': 'pyls',
	\ 'cmd': {server_info->['pyls']},
	\ 'allowlist': ['python', 'python3']
	\ })
endif
