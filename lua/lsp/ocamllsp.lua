local M = {}

M.setup = function(handlers)
    vim.opt.rtp:append("/home/t_doctor/.opam/default/share/ocp-indent/vim")

    local lspconfig = require('lspconfig')

    lspconfig.rust_analyzer.setup {
        handlers = handlers,
        on_init = function(client)
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.git') then return end
            client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end,
    }
end

return M

