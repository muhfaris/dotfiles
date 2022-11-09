require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"rust_analyzer",
		"gopls",
		"graphql",
		"html",
		"jsonls",
		"tsserver",
		"phpactor",
		"pyright",
		"sqlls",
		"taplo",
	},
	automatic_installation = true,
})