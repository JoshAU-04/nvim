return {
	'https://github.com/nvim-lualine/lualine.nvim',
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = false,
				theme = 'auto',
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {
						'sh', 'zsh', 'neomuttrc', 'muttrc', 'gitconfig', 'readline', 'conf', 'ini', 'yaml', 'toml',
						'tmux', 'text'
					},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = true,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				}
			},
			sections = {
				lualine_a = {
					{
						'filename',
						path = 0,
						file_status = true,
						symbols = {
							modified = '●',
						},
					}
				},
				lualine_b = {
					'location',
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						sections = { 'error', 'warn', 'info', 'hint' },
						symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
						colored = false,
					}
				},
				lualine_c = {},
				lualine_x = { },
				lualine_y = {'progress'},
				lualine_z = {'branch', 'diff'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
