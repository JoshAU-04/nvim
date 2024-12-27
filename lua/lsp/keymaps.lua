local M = {}

M.setup = function()
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<leader>rf', ':luafile %<CR>', opts)
end

return M

