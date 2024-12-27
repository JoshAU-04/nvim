local M = {}

M.setup = function(handlers)
    local lspconfig = require('lspconfig')

    lspconfig.arduino_language_server.setup {
        handlers = handlers,
        on_init = function(client)
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.git') then return end
            client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end,
    }
end

return M

