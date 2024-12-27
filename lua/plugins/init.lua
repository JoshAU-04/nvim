return {
	{ 'lewis6991/gitsigns.nvim' },
	{ 'lambdalisue/vim-battery' },
	{ 'tpope/vim-sensible', lazy = false },
	{ 'wakatime/vim-wakatime', lazy = false },
	{ 'windwp/nvim-autopairs' },

	{ import = "plugins.colorscheme.github" },
	{ import = "plugins.spec.telescope" },
	{ import = "plugins.spec.treesitter" },
	{ import = "plugins.spec.lualine" },
	{ import = "plugins.spec.lspconfig" }
}
