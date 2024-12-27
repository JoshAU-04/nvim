local M = {}

local border = {
    { '┌', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '┐', 'FloatBorder' },
    { '│', 'FloatBorder' },
    { '┘', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '└', 'FloatBorder' },
    { '│', 'FloatBorder' },
}

local handlers = {
    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded'}),
    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded'}),
}

M.handlers = handlers

-- Common LSP setup
function M.setup()
    vim.diagnostic.config({
        virtual_text = {
            prefix = ' ',
        },
        float = { border },
    })
    vim.diagnostic.config({
        update_in_insert = false,
        severity_sort = false,
        signs = true,
        underline = true,
        virtual_text = {
            prefix = '●',
        },
        float = {
            source = true,
            scope = 'cursor',
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
            focusable = false
        }
    })
    require('lsp.keymaps').setup()
    require('lsp.lua_ls').setup(handlers)
    require('lsp.rust_analyzer').setup(handlers)
    require('lsp.ocamllsp').setup(handlers)
    require('lsp.arduino_language_server').setup(handlers)
end

return M
