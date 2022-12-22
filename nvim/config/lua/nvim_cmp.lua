local cmp = require("cmp")

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<C-y"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
        -- options of sources
        -- keyword_length
        -- priority
        -- max_item_count
        -- more?
	sources = cmp.config.sources({
		{ name = "nvim_lua", keyword_length = 3 },
		{ name = "nvim_lsp", keyword_length = 3 },
		{ name = "buffer", keyword_length = 5 },
		{ name = "path" },
	}),
})

cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
