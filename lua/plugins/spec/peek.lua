return {
    'toppair/peek.nvim',
    event = { "VeryLazy" },
    config = function()
        local peek = require('peek')
        local function getCurrentBuffer()
            vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
        end
        peek.setup({
            auto_load = true,         -- whether to automatically load preview
            close_on_bdelete = true,  -- close preview window on buffer delete
            syntax = true,            -- enable syntax highlighting, affects performance
            theme = 'dark',           -- 'dark' or 'light'
            update_on_change = true,
            app = { 'zathura', '--fork', getCurrentBuffer() },          -- 'webview', 'browser', string or a table of strings
            filetype = { 'markdown' },-- list of filetypes to recognize as markdown
        })

        vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
        vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})

        vim.api.nvim_create_user_command('PeekOpen', function()
            if not peek.is_open() and vim.bo[vim.api.nvim_get_current_buf()].filetype == 'markdown' then
                peek.open()
            end
        end, {})

        vim.api.nvim_create_user_command('PeekClose', function()
            if peek.is_open() then
                peek.close()
            end
        end, {})
    end
}
