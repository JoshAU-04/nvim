return {
	'projekt0n/github-nvim-theme',
	name = 'github-theme',
	lazy = false,
	config = function()
		require('github-theme').setup({
			options = { transparent = true, },
			darken = { floats = false },
		})
		vim.cmd.colorscheme('github_dark')
	end
}
