require('lazy').setup({
	spec = { import = 'plugins' },
	install = { colorscheme = { "gruvbox" }},
	checker = { enabled = true },
	ui = {
		border = "rounded",
		size = {
			width = 0.8,
			height = 0.8,
		},
	},
})
