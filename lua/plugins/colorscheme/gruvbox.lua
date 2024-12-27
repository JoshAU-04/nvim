return {
	"ellisonleao/gruvbox.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- init = function() vim.cmd.colorscheme 'gruvbox' end,
	config = true,
	opts = {
		transparent_mode = true,
		italic = {
			strings = false,
			emphasis = false,
			comments = false,
			operators = false,
			folds = false
		},
		overrides = {
			SignColumn = { bg = "none" },
			StatusLine = { bg = "none", reverse=false, fg="white" }
		}
	}
}
