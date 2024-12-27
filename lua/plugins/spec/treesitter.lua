return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require'nvim-treesitter.configs'.setup {
            modules = {},
            sync_install = true,
            ignore_install = {},
            auto_install = true,
            ensure_installed = { 'markdown', 'lua', 'vimdoc' },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true }
        }
	end
}
